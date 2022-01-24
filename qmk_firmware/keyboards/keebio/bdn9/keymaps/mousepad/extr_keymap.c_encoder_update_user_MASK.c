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
 int /*<<< orphan*/  KC_MS_D ; 
 int /*<<< orphan*/  KC_MS_LEFT ; 
 int /*<<< orphan*/  KC_MS_RIGHT ; 
 int /*<<< orphan*/  KC_MS_U ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(uint8_t index, bool clockwise) {
    if (index == 0) {
        if (clockwise) {
            FUNC0(KC_MS_LEFT);
        } else {
            FUNC0(KC_MS_RIGHT);
        }
    }
    else if (index == 1) {
        if (clockwise) {
            FUNC0(KC_MS_U);
        } else {
            FUNC0(KC_MS_D);
        }
    }
}