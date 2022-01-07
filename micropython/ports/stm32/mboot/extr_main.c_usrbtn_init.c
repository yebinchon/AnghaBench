
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MICROPY_HW_USRSW_PIN ;
 int MICROPY_HW_USRSW_PULL ;
 int MP_HAL_PIN_MODE_INPUT ;
 int mp_hal_pin_config (int ,int ,int ,int ) ;

__attribute__((used)) static void usrbtn_init(void) {
    mp_hal_pin_config(MICROPY_HW_USRSW_PIN, MP_HAL_PIN_MODE_INPUT, MICROPY_HW_USRSW_PULL, 0);
}
