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
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 

void
FUNC5(unsigned long ulBase)
{
    unsigned long ulInt;

    //
    // Check the arguments.
    //
    FUNC0(FUNC3(ulBase));

    //
    // Determine the interrupt number based on the UART port.
    //
    ulInt = FUNC4(ulBase);

    //
    // Disable the interrupt.
    //
    FUNC1(ulInt);

    //
    // Unregister the interrupt handler.
    //
    FUNC2(ulInt);
}