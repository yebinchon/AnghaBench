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
 int BOOTMAGIC_LITE_COLUMN ; 
 int /*<<< orphan*/  BOOTMAGIC_LITE_ROW ; 
 int DEBOUNCE ; 
 int DEBOUNCING_DELAY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void) {
    FUNC2();
#if defined(DEBOUNCING_DELAY) && DEBOUNCING_DELAY > 0
    wait_ms(DEBOUNCING_DELAY * 2);
#elif defined(DEBOUNCE) && DEBOUNCE > 0
    wait_ms(DEBOUNCE * 2);
#else
    FUNC3(30);
#endif
    FUNC2();
    if (FUNC1(BOOTMAGIC_LITE_ROW) & (1 << BOOTMAGIC_LITE_COLUMN)) {
        FUNC0();
    }
}