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
typedef  scalar_t__ tBoolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ UART_O_MIS ; 
 scalar_t__ UART_O_RIS ; 

unsigned long
FUNC3(unsigned long ulBase, tBoolean bMasked)
{
    //
    // Check the arguments.
    //
    FUNC0(FUNC2(ulBase));

    //
    // Return either the interrupt status or the raw interrupt status as
    // requested.
    //
    if(bMasked)
    {
        return(FUNC1(ulBase + UART_O_MIS));
    }
    else
    {
        return(FUNC1(ulBase + UART_O_RIS));
    }
}