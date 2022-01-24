#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  RESET 130 
#define  RGBRST 129 
#define  RGB_TOG 128 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record)
{
    static uint16_t reset_timer;

#ifndef TAP_DANCE_ENABLE
    if (!FUNC0(keycode, record))
        return false;
#endif

    switch (keycode)
    {
        case RGBRST:
#ifdef RGB_ENABLE
            if (record->event.pressed)
                rgb_reset();
#endif
            return false;
        case RESET:
            {
                if (record->event.pressed)
                    reset_timer = FUNC7() + 500;
                else if (FUNC6(FUNC7(), reset_timer))
                    FUNC3();
            }
            return false;
#ifdef RGB_MATRIX_TOG_LAYERS
        case RGB_TOG:
            if (record->event.pressed) {
              rgb_matrix_increase_flags();
            }
            return false;
#endif
  }

  return FUNC1(keycode, record) && FUNC2(keycode, record);
}