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
typedef  int tBoolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned long WDT_BASE ; 
 int WDT_CTL_INTEN ; 
 scalar_t__ WDT_O_CTL ; 

tBoolean
FUNC2(unsigned long ulBase)
{
    //
    // Check the arguments.
    //
    FUNC0((ulBase == WDT_BASE));

    //
    // See if the watchdog timer module is enabled, and return.
    //
    return(FUNC1(ulBase + WDT_O_CTL) & WDT_CTL_INTEN);
}