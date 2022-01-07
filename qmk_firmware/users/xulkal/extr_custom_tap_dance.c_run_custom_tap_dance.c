
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t KC_TRANSPARENT ;
 scalar_t__ TAPPING_TERM ;
 size_t TD_MIN ;
 int pgm_read_word (int *) ;
 int tap_code16 (int ) ;
 size_t td_keycode ;
 int ** td_keymaps ;
 scalar_t__ td_timer ;
 scalar_t__ timer_read () ;

__attribute__((used)) static void run_custom_tap_dance(uint8_t i)
{
    tap_code16(pgm_read_word(&td_keymaps[td_keycode - TD_MIN][i]));
    td_keycode = KC_TRANSPARENT;
    td_timer = timer_read() + TAPPING_TERM;
}
