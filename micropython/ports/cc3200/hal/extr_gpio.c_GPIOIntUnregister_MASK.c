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
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void
FUNC5(unsigned long ulPort)
{
    //
    // Check the arguments.
    //
    FUNC0(FUNC1(ulPort));

    //
    // Get the interrupt number associated with the specified GPIO.
    //
    ulPort = FUNC2(ulPort);

    //
    // Disable the GPIO interrupt.
    //
    FUNC3(ulPort);

    //
    // Unregister the interrupt handler.
    //
    FUNC4(ulPort);
}