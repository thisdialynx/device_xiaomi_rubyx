#
# SPDX-FileCopyrightText: 2023-2024 The lmodroidOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefFile.
$(call inherit-product, device/xiaomi/rubyx/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

PRODUCT_NAME := lmodroid_rubyx
PRODUCT_DEVICE := rubyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby

PRODUCT_SYSTEM_NAME := ruby_global
PRODUCT_SYSTEM_DEVICE := ruby

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ruby-user 14 UP1A.230620.001 V816.0.10.0.UMOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/ruby_global/ruby:14/UP1A.230620.001/V816.0.10.0.UMOMIXM:user/release-keys
