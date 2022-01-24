#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_VOLD ; 
 int /*<<< orphan*/  KC_VOLU ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(uint8_t index, bool clockwise) {
	if (index == 0) { /* First encoder */
		if (clockwise) {
			FUNC4(KC_VOLU);
		} else {
			FUNC4(KC_VOLD);
		}
	} else if (index == 1) { /* Second encoder */
		if (clockwise) {
			FUNC3();
		} else {
			FUNC2();
		}
	} else if (index == 2) { /* Third encoder */
		if (clockwise) {
			FUNC1();
		} else {
			FUNC0();
		}
	}
}