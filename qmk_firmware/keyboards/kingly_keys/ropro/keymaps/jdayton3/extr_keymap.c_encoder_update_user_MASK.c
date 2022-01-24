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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_WH_L ; 
 int /*<<< orphan*/  KC_WH_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(uint8_t index, bool clockwise) {
    if (index == 0) {
        if (clockwise) {
            FUNC0(KC_WH_L);
        } else {
            FUNC0(KC_WH_R);
        }
    }
}