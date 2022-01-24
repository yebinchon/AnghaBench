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
 int /*<<< orphan*/  POTATO_CONSOLE_CLOCK_DIV ; 
 int /*<<< orphan*/  POTATO_UART_BASE ; 
 int /*<<< orphan*/  PROC_FREQ ; 
 int /*<<< orphan*/  UART_FREQ ; 
 int /*<<< orphan*/  potato_uart_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void) {
    potato_uart_base = POTATO_UART_BASE;
    FUNC1(POTATO_CONSOLE_CLOCK_DIV, FUNC0(PROC_FREQ, UART_FREQ));

}