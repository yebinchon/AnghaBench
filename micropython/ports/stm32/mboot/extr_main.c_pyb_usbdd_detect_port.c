
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MICROPY_HW_USB_MAIN_DEV ;
 int MP_HAL_PIN_MODE_INPUT ;
 int MP_HAL_PIN_PULL_NONE ;
 int MP_HAL_PIN_PULL_UP ;
 int USB_PHY_FS_ID ;
 int USB_PHY_HS_ID ;
 int mp_hal_pin_config (int ,int ,int ,int ) ;
 scalar_t__ mp_hal_pin_read (int ) ;
 int pin_A11 ;
 int pin_A12 ;
 int pin_B14 ;
 int pin_B15 ;

__attribute__((used)) static int pyb_usbdd_detect_port(void) {
    return MICROPY_HW_USB_MAIN_DEV;
}
