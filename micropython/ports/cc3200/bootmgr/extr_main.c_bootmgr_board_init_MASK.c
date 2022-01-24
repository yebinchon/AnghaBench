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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FAULT_SYSTICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCM_FIRST_BOOT_BIT ; 
 int /*<<< orphan*/  PRCM_SAFE_BOOT_BIT ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * g_pfnVectors ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void) {
    // set the vector table base
    FUNC3((unsigned long)&g_pfnVectors[0]);

    // enable processor interrupts
    FUNC2();
    FUNC1(FAULT_SYSTICK);

    // mandatory MCU initialization
    FUNC4();

    // clear all the special bits, since we can't trust their content after reset
    // except for the WDT reset one!!
    FUNC5(PRCM_SAFE_BOOT_BIT);
    FUNC5(PRCM_FIRST_BOOT_BIT);

    // check the reset after clearing the special bits
    FUNC7();

#if MICROPY_HW_ANTENNA_DIVERSITY
    // configure the antenna selection pins
    antenna_init0();
#endif

    // enable the data hashing engine
    FUNC0();

    // init the system led and the system switch
    FUNC8();
}