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
 int /*<<< orphan*/  UART_DR ; 
 int /*<<< orphan*/  UART_FR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 

void FUNC2(char ch)
{
    /*Transmit FIFO is full*/
    while (FUNC0(UART_FR) & (1<<5))
    {
        ;
    }
    FUNC1(UART_DR, ch);
}