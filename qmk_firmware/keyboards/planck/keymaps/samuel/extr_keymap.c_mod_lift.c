
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ TAPPING_TERM ;
 int last_mod ;
 int tap_code16 (int ) ;
 int tap_timer ;
 scalar_t__ timer_elapsed (int ) ;
 int unregister_code (int ) ;

void mod_lift(uint16_t tap_code, uint16_t hold_code, int id) {
    unregister_code(hold_code);
    if (last_mod == id && timer_elapsed(tap_timer) < TAPPING_TERM) {
        tap_code16(tap_code);
        last_mod = 10;
    }
}
