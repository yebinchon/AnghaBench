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
 scalar_t__ FUNC1 () ; 
 scalar_t__ PRCM_POWER_ON ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__ ((section (".boot")))
void FUNC3(void) {
    // only if comming out of a power-on reset
    if (FUNC1() == PRCM_POWER_ON) {
        // Mark the RTC in use first
        FUNC0();
        // reset the time and date
        FUNC2();
    }
}