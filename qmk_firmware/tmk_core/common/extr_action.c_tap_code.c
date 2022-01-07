
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ KC_CAPS ;
 int TAP_CODE_DELAY ;
 int TAP_HOLD_CAPS_DELAY ;
 int register_code (scalar_t__) ;
 int unregister_code (scalar_t__) ;
 int wait_ms (int ) ;

void tap_code(uint8_t code) {
    register_code(code);
    if (code == KC_CAPS) {
        wait_ms(TAP_HOLD_CAPS_DELAY);
    } else {
        wait_ms(TAP_CODE_DELAY);
    }
    unregister_code(code);
}
