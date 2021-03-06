USE_CAMERA_STUB := false
BOARD_USES_TI_CAMERA_HAL := true
BOARD_USES_GENERIC_AUDIO := true

# inherit from the proprietary version
-include vendor/amazon/otter/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := omap4sdp
TARGET_PROVIDES_INIT_RC := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
BOARD_NEEDS_CUTILS_LOG := true
MISSING_GRALLOC_BUFFERS := true
MISSING_EGL_EXTERNAL_IMAGE := true
MISSING_EGL_PIXEL_FORMAT_YV12 := true

BOARD_KERNEL_CMDLINE := console=ttyO2,115200n8 mem=463M@0x80000000 init=/init vram=64M omapfb.vram=0:32M
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096

# Graphics
BOARD_EGL_CFG := device/amazon/otter/misc/egl.cfg
#USE_OPENGL_RENDERER := true
BOARD_LIB_DUMPSTATE := libdumpstate.otter_tablet

#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/amazon/otter/releasetools/encore_img_from_target_files
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/amazon/otter/releasetools/encore_ota_from_target_files
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_FAKE_GPS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
HARDWARE_OMX := true
TARGET_NO_RADIOIMAGE := true
#BOARD_USES_UBOOT := true
#OMAP_ENHANCEMENT := true

# OMX
#HARDWARE_OMX := true
ifdef HARDWARE_OMX
#OMX_VENDOR := ti
#OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
#BOARD_OPENCORE_LIBRARIES := libOMX_Core
#BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif

#TARGET_USE_OMAP_COMPAT := true

# Media Profile
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/misc/media_profiles.xml:system/etc/media_profiles.xml

# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif
ENHANCED_DOMX := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 90537984
BOARD_FLASH_BLOCK_SIZE := 131072

#stuff
USE_CAMERA_STUB := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_TI_OMAP_MODEM_AUDIO := false
BOARD_HAS_NO_MISC_PARTITION := true
HARDWARE_OMX := true
BOARD_GL_OES_EGL_IMG_EXTERNAL_HACK := true
COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK

TARGET_RECOVERY_PRE_COMMAND := "idme bootmode 0x5001; sync;"

ifdef HARDWARE_OMX
OMX_VENDOR := ti
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif

BOARD_USES_TI_CAMERA_HAL := true

#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
#BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/amazon/otter/kernel
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/amazon/otter/recovery/recovery_ui.c

# Do da wifi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
WPA_SUPPLICANT_VERSION      := VER_0_6_X
HOSTAPD_VERSION             := VER_0_6_X
BOARD_WLAN_DEVICE           := wl1283
BOARD_SOFTAP_DEVICE         := wl1283
#BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/etc/wifi/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_FIRMWARE_LOADER        := "wlan_loader"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/firmware.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/softap/firmware_ap.bin"

COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE \
  		-DMISSING_EGL_PIXEL_FORMAT_YV12 \
			-DMISSING_GRALLOC_BUFFERS \
			-DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK \

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true