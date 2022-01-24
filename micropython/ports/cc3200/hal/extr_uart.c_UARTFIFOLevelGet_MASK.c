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
 unsigned long UART_IFLS_RX_M ; 
 unsigned long UART_IFLS_TX_M ; 
 scalar_t__ UART_O_IFLS ; 

void
FUNC3(unsigned long ulBase, unsigned long *pulTxLevel,
                 unsigned long *pulRxLevel)
{
    unsigned long ulTemp;

    //
    // Check the arguments.
    //
    FUNC0(FUNC2(ulBase));

    //
    // Read the FIFO level register.
    //
    ulTemp = FUNC1(ulBase + UART_O_IFLS);

    //
    // Extract the transmit and receive FIFO levels.
    //
    *pulTxLevel = ulTemp & UART_IFLS_TX_M;
    *pulRxLevel = ulTemp & UART_IFLS_RX_M;
}