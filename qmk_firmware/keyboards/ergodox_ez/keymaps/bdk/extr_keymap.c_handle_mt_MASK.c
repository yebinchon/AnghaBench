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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tap_start_info {scalar_t__ initial_press_counter; int /*<<< orphan*/  timer; } ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 scalar_t__ ONESHOT_TIMEOUT ; 
 scalar_t__ press_counter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct tap_start_info* tap_start_infos ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(uint16_t keycode, keyrecord_t *record, uint8_t mods, uint8_t index) {
    struct tap_start_info* tap_start = tap_start_infos + index;

    if(record->event.pressed) {
        FUNC1(mods);
        tap_start->timer = FUNC3();
        tap_start->initial_press_counter = press_counter;
    } else {
        FUNC5(mods);
        // Only click the key if:
        //   - No other keys are pressed between the press and release events
        //   - The release happens before the ONESHOT_TIMEOUT
        if(press_counter == tap_start->initial_press_counter && FUNC2(tap_start->timer) < ONESHOT_TIMEOUT) {
            FUNC0(keycode);
            FUNC4(keycode);
        }
    }
    return false;
}