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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int UART_FR_BUSY ; 
 scalar_t__ UART_O_FR ; 

tBoolean
FUNC3(unsigned long ulBase)
{
    //
    // Check the argument.
    //
    FUNC0(FUNC2(ulBase));

    //
    // Determine if the UART is busy.
    //
    return((FUNC1(ulBase + UART_O_FR) & UART_FR_BUSY) ? true : false);
}