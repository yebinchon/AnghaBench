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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMP ; 
 int /*<<< orphan*/  SYMB ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int td_led_override ; 

void FUNC7(void) {
    FUNC1();
    FUNC2();
    FUNC4();
    FUNC6();

    switch (td_led_override) {
    case 1:
        FUNC3();
        break;
    case 2:
        FUNC5();
        break;
    default:
        // Layer 1 and 2 are both overlay layers, so they could both be on. This
        // means we can't use the lazy check of checking for the first significant
        // bit.
        if (FUNC0(SYMB)) {
            FUNC3();
        }
        if (FUNC0(NUMP)) {
            FUNC5();
        }
    }
}