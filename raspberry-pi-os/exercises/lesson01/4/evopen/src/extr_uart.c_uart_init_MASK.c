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
 int /*<<< orphan*/  GPFSEL1 ; 
 int /*<<< orphan*/  GPPUD ; 
 int /*<<< orphan*/  GPPUDCLK0 ; 
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_FBRD ; 
 int /*<<< orphan*/  UART_IBRD ; 
 int /*<<< orphan*/  UART_LCRH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(void) {
    unsigned int selector;  // 32 bits

    selector = FUNC1(GPFSEL1);
    selector &= ~(7 << 12);
    selector |= 4 << 12;
    selector &= ~(7 << 15);
    selector |= 4 << 15;
    FUNC2(GPFSEL1, selector);

    FUNC2(GPPUD, 0);
    FUNC0(150);
    FUNC2(GPPUDCLK0, (1 << 14) | (1 << 15));
    FUNC0(150);
    FUNC2(GPPUDCLK0, 0);

    FUNC2(UART_CR, 0);
    FUNC2(UART_IBRD, 26);
    FUNC2(UART_FBRD, 3);
    FUNC2(UART_LCRH, (1 << 4) | (3 << 5));
    // put32(UART_IMSC, 0);
    FUNC2(UART_CR, 1 | (1 << 8) | (1 << 9));
}