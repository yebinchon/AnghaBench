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
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_R ; 
 int /*<<< orphan*/  KC_RSHIFT ; 
 scalar_t__ LT_1_OR_RELOAD_CHROME ; 
 int /*<<< orphan*/  custom_lt_timer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {
	if(LT_1_OR_RELOAD_CHROME == keycode) {
		if(record->event.pressed) {
			custom_lt_timer = FUNC4();
			FUNC1(1);
		} else {
			FUNC0(1);
			if (FUNC3(custom_lt_timer) < 200) {
				FUNC2(KC_LGUI);
				FUNC2(KC_RSHIFT);
				FUNC2(KC_R);
				FUNC5(KC_R);
				FUNC5(KC_RSHIFT);
				FUNC5(KC_LGUI);
			}
		}
	}
	return true;
}