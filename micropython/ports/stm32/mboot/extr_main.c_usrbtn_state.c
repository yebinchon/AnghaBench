
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MICROPY_HW_USRSW_PIN ;
 scalar_t__ MICROPY_HW_USRSW_PRESSED ;
 scalar_t__ mp_hal_pin_read (int ) ;

__attribute__((used)) static int usrbtn_state(void) {
    return mp_hal_pin_read(MICROPY_HW_USRSW_PIN) == MICROPY_HW_USRSW_PRESSED;
}
