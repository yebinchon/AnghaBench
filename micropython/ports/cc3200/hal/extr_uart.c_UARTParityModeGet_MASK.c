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
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long UART_LCRH_EPS ; 
 unsigned long UART_LCRH_PEN ; 
 unsigned long UART_LCRH_SPS ; 
 scalar_t__ UART_O_LCRH ; 

unsigned long
FUNC3(unsigned long ulBase)
{
    //
    // Check the arguments.
    //
    FUNC0(FUNC2(ulBase));

    //
    // Return the current parity setting.
    //
    return(FUNC1(ulBase + UART_O_LCRH) &
           (UART_LCRH_SPS | UART_LCRH_EPS | UART_LCRH_PEN));
}