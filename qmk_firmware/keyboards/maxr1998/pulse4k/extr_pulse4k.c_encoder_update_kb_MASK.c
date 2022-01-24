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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ led_adjust_active ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(uint8_t index, bool clockwise) {
    if (index == 0) {
        if (led_adjust_active) {
            if (clockwise) {
                FUNC5();
            } else {
                FUNC3();
            }
        } else FUNC0(clockwise);
    } else if (index == 1) {
        if (led_adjust_active) {
            if (clockwise) {
                FUNC4();
            } else {
                FUNC2();
            }
        } else FUNC1(clockwise);
    }
}