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
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * g_pfnVectors ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__ ((section (".boot")))
void FUNC4 (void) {
    FUNC1((unsigned long)&g_pfnVectors[0]);

    // in the case of a release image, these steps are already performed by
    // the bootloader so we can skip it and gain some code space
#ifdef DEBUG
    MAP_IntMasterEnable();
    PRCMCC3200MCUInit();
#endif

#ifndef USE_FREERTOS
    FUNC3();
#endif
}