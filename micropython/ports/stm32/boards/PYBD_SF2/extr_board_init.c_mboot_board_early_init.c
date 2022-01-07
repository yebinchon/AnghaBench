
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_HAL_PIN_MODE_INPUT ;
 int MP_HAL_PIN_PULL_UP ;
 int mp_hal_pin_config (int ,int ,int ,int ) ;
 int pyb_pin_W23 ;

void mboot_board_early_init(void) {

    mp_hal_pin_config(pyb_pin_W23, MP_HAL_PIN_MODE_INPUT, MP_HAL_PIN_PULL_UP, 0);
}
