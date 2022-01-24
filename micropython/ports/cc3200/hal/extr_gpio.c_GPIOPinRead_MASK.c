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
 scalar_t__ GPIO_O_GPIO_DATA ; 
 long FUNC2 (scalar_t__) ; 

long
FUNC3(unsigned long ulPort, unsigned char ucPins)
{
    //
    // Check the arguments.
    //
    FUNC0(FUNC1(ulPort));

    //
    // Return the pin value(s).
    //
    return(FUNC2(ulPort + (GPIO_O_GPIO_DATA + (ucPins << 2))));
}