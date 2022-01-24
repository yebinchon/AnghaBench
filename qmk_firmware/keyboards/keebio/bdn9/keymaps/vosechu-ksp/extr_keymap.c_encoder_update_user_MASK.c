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
 int /*<<< orphan*/  KC_A ; 
 int /*<<< orphan*/  KC_COMM ; 
 int /*<<< orphan*/  KC_D ; 
 int /*<<< orphan*/  KC_DOT ; 
 int /*<<< orphan*/  KC_E ; 
 int /*<<< orphan*/  KC_H ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_N ; 
 int /*<<< orphan*/  KC_Q ; 
 int /*<<< orphan*/  KC_VOLD ; 
 int /*<<< orphan*/  KC_VOLU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int base_mode ; 
 int flight_mode ; 
 int rcs_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t index, bool clockwise) {
    if(base_mode == true) {
        if (index == 0) {
            if (clockwise) {
                // Volume up
                FUNC1(KC_VOLU);
            } else {
                // Volume down
                FUNC1(KC_VOLD);
            }
        }
        else if (index == 1) {
            if (clockwise) {
                // Time warp faster
                FUNC1(KC_DOT);
            } else {
                // Time warp slower
                FUNC1(KC_COMM);
            }
        }
    }

    if(rcs_mode == true) {
        if (index == 0) {
            if (clockwise) {
                // RCS Forward
                FUNC1(KC_H);
            } else {
                // RCS Backward
                FUNC1(KC_N);
            }
        }
        else if (index == 1) {
            if (clockwise) {
                // RCS Rotate Left
                FUNC1(KC_Q);
            } else {
                // RCS Rotate Right
                FUNC1(KC_E);
            }
        }
    }

    if(flight_mode == true) {
        if (index == 0) {
            if (clockwise) {
                // Throttle up
                FUNC1(KC_LSFT);
            } else {
                // Throttle down
                FUNC1(KC_LCTL);
            }
        }
        else if (index == 1) {
            if (clockwise) {
                // Trim left
                FUNC2(FUNC0(KC_A));
            } else {
                // Trim right
                FUNC2(FUNC0(KC_D));
            }
        }
    }
}