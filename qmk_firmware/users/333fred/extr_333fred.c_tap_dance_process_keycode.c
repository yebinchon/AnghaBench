
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ SINGLE_TAP ;
 scalar_t__ TD (int ) ;
 int TD_SYM_VIM ;
 int tap_dance_active ;
 scalar_t__ tap_dance_state ;

void tap_dance_process_keycode(uint16_t keycode) {
    if (tap_dance_state == SINGLE_TAP && keycode != TD(TD_SYM_VIM)) {
        tap_dance_active = 0;
    }
}
