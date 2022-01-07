
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ KC_TRANSPARENT ;
 scalar_t__ TAPPING_TERM ;
 scalar_t__ TD_MAX ;
 scalar_t__ TD_MIN ;
 int run_custom_tap_dance (int) ;
 scalar_t__ td_keycode ;
 scalar_t__ td_timer ;
 scalar_t__ timer_expired (scalar_t__) ;
 scalar_t__ timer_read () ;

bool process_custom_tap_dance(uint16_t keycode, keyrecord_t *record)
{
    if (TD_MIN <= keycode && keycode < TD_MAX)
    {
        if (record->event.pressed)
        {
            if (td_keycode != keycode || timer_expired(td_timer))
            {
                td_keycode = keycode;
                td_timer = timer_read() + TAPPING_TERM;
            }
            else
                run_custom_tap_dance(1);
        }
        return 0;
    }

    if (td_keycode != KC_TRANSPARENT)
        run_custom_tap_dance(0);
    return 1;
}
