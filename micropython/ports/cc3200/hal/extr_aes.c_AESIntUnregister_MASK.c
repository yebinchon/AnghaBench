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
 scalar_t__ AES_BASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INT_AES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(uint32_t ui32Base)
{
    //
    // Check the arguments.
    //
    FUNC0(ui32Base == AES_BASE);

    //
    // Disable the interrupt.
    //
    FUNC1(INT_AES);

    //
    // Unregister the interrupt handler.
    //
    FUNC2(INT_AES);
}