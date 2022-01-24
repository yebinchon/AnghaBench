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
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long WDT_BASE ; 
 scalar_t__ WDT_O_LOAD ; 

unsigned long
FUNC2(unsigned long ulBase)
{
    //
    // Check the arguments.
    //
    FUNC0((ulBase == WDT_BASE));

    //
    // Get the load register.
    //
    return(FUNC1(ulBase + WDT_O_LOAD));
}