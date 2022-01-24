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
 int /*<<< orphan*/  KC_M ; 
 int /*<<< orphan*/  KC_O ; 
 int /*<<< orphan*/  KC_P ; 
 int /*<<< orphan*/  KC_R ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t index, bool clockwise) {
	if (index == 0) { /* First encoder */
		if (clockwise) {
			FUNC2(KC_O);
		} else {
			FUNC2(KC_P);
		}
	} else if (index == 1) { /* Second encoder */
		if (clockwise) {
			FUNC1();
		} else {
			FUNC0();
		}
	} else if (index == 2) {
		if (clockwise) {
			FUNC2(KC_M);
		} else {
			FUNC2(KC_R);
		}
	}
}