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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ I2C_O_MBMON ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

uint32_t
FUNC3(uint32_t ui32Base)
{
    //
    // Check the arguments.
    //
    FUNC0(FUNC2(ui32Base));

    //
    // Return the line state.
    //
    return(FUNC1(ui32Base + I2C_O_MBMON));
}