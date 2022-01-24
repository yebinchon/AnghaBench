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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 scalar_t__ TAPPING_TERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t code, uint16_t mod_code, bool pressed, uint16_t this_timer) {
    if (pressed) {
        this_timer = FUNC3();
    } else {
        if (FUNC2(this_timer) < TAPPING_TERM) {
            FUNC1(code);
        } else {
            FUNC0(mod_code);
            FUNC1(code);
            FUNC4(mod_code);
        }
    }
    return false;
}