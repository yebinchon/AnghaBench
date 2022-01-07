
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KC_TRANSPARENT ;
 int run_custom_tap_dance (int ) ;
 scalar_t__ td_keycode ;
 int td_timer ;
 scalar_t__ timer_expired (int ) ;

void matrix_scan_user(void)
{
    if (td_keycode != KC_TRANSPARENT && timer_expired(td_timer))
        run_custom_tap_dance(0);
}
