#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 scalar_t__ KC_TRANSPARENT ; 
 scalar_t__ TAPPING_TERM ; 
 scalar_t__ TD_MAX ; 
 scalar_t__ TD_MIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ td_keycode ; 
 scalar_t__ td_timer ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record)
{
    if (TD_MIN <= keycode && keycode < TD_MAX)
    {
        if (record->event.pressed)
        {
            if (td_keycode != keycode || FUNC1(td_timer))
            {
                td_keycode = keycode;
                td_timer = FUNC2() + TAPPING_TERM;
            }
            else
                FUNC0(1);
        }
        return false;
    }

    if (td_keycode != KC_TRANSPARENT)
        FUNC0(0);
    return true;
}