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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INT_WDT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void (*) ()) ; 
 unsigned long WDT_BASE ; 

void
FUNC3(unsigned long ulBase, void (*pfnHandler)(void))
{
    //
    // Check the arguments.
    //
    FUNC0((ulBase == WDT_BASE));

    //
    // Register the interrupt handler and
    // Enable the watchdog timer interrupt.
    //
    FUNC2(INT_WDT, pfnHandler);
    FUNC1(INT_WDT);
}