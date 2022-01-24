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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,void (*) ()) ; 
 unsigned long FUNC2 (unsigned long) ; 

void
FUNC3(unsigned long ulBase, void(*pfnHandler)(void))
{
    unsigned long ulInt;

    //
    // Determine the interrupt number based on the SPI module
    //
    ulInt = FUNC2(ulBase);

    //
    // Register the interrupt handler.
    //
    FUNC1(ulInt, pfnHandler);

    //
    // Enable the SPI interrupt.
    //
    FUNC0(ulInt);
}