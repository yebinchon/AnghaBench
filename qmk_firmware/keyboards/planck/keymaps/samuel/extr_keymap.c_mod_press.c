
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int last_mod ;
 int register_code (int ) ;
 int tap_code16 (int ) ;
 int tap_timer ;
 int timer_read () ;

void mod_press(uint16_t tap_code, uint16_t hold_code, int id) {



    if (last_mod != id && last_mod != 10) {
        tap_code16(tap_code);
        last_mod = 10;
    } else {
        tap_timer = timer_read();
        last_mod = id;
        register_code(hold_code);
    }
}
