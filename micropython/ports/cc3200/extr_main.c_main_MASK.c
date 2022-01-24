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
typedef  int /*<<< orphan*/ * OsiTaskHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MICROPY_TASK_PRIORITY ; 
 int /*<<< orphan*/  MICROPY_TASK_STACK_LEN ; 
 int /*<<< orphan*/  TASK_MicroPython ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  mpTaskStack ; 
 int /*<<< orphan*/  mpTaskTCB ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__ ((section (".boot")))
int FUNC6 (void) {

    // Initialize the clocks and the interrupt system
    FUNC1();

#if MICROPY_HW_ANTENNA_DIVERSITY
    // configure the antenna selection pins
    antenna_init0();
#endif

    // Init the watchdog
    FUNC4();

#ifndef DEBUG
    OsiTaskHandle mpTaskHandle;
#endif
    mpTaskHandle = FUNC5(TASK_MicroPython, "MicroPy",
        MICROPY_TASK_STACK_LEN, NULL, MICROPY_TASK_PRIORITY, mpTaskStack, &mpTaskTCB);
    FUNC0(mpTaskHandle != NULL);

    FUNC3();

    for ( ; ; );
}