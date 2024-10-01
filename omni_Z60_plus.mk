#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Z60_plus device
$(call inherit-product, device/symphony/Z60_plus/device.mk)

PRODUCT_DEVICE := Z60_plus
PRODUCT_NAME := omni_Z60_plus
PRODUCT_BRAND := Symphony
PRODUCT_MODEL := Z60 plus
PRODUCT_MANUFACTURER := symphony

PRODUCT_GMS_CLIENTID_BASE := android-symphonyedison

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Z60_plus-user 12 SP1A.210812.016 130 release-keys"

BUILD_FINGERPRINT := Symphony/Z60_plus/Z60_plus:12/SP1A.210812.016/130:user/release-keys
