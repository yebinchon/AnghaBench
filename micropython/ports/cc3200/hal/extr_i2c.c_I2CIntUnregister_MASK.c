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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void
FUNC5(uint32_t ui32Base)
{
    uint32_t ui32Int;

    //
    // Check the arguments.
    //
    FUNC0(FUNC3(ui32Base));

    //
    // Determine the interrupt number based on the I2C port.
    //
    ui32Int = FUNC4(ui32Base);

    FUNC0(ui32Int != 0);

    //
    // Disable the interrupt.
    //
    FUNC1(ui32Int);

    //
    // Unregister the interrupt handler.
    //
    FUNC2(ui32Int);
}