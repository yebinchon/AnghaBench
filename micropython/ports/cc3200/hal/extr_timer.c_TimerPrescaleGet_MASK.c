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
 unsigned long TIMER_A ; 
 unsigned long TIMER_B ; 
 unsigned long TIMER_BOTH ; 
 scalar_t__ TIMER_O_TAPR ; 
 scalar_t__ TIMER_O_TBPR ; 
 int FUNC2 (unsigned long) ; 

unsigned long
FUNC3(unsigned long ulBase, unsigned long ulTimer)
{
    //
    // Check the arguments.
    //
    FUNC0(FUNC2(ulBase));
    FUNC0((ulTimer == TIMER_A) || (ulTimer == TIMER_B) ||
           (ulTimer == TIMER_BOTH));

    //
    // Return the appropriate prescale value.
    //
    return((ulTimer == TIMER_A) ? FUNC1(ulBase + TIMER_O_TAPR) :
           FUNC1(ulBase + TIMER_O_TBPR));
}