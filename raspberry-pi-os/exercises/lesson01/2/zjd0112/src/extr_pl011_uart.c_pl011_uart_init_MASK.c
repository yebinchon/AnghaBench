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

void FUNC3(void)
{
    unsigned int selector;

    /*set gpio function*/
    selector = FUNC1(GPFSEL1);
    selector = selector & (~(7<<12));   // clean gpio14
    selector = selector | (4<<12);      // set alt1 for gpio14 
    selector = selector & (~(7<<15));   // clean gpio15
    selector = selector | (4<<15);      // set alt1 for gpio15
    FUNC2(GPFSEL1, selector);

    /*set gpio pull-up/down*/
    FUNC2(GPPUD, 0);
    FUNC0(150);
    FUNC2(GPPUDCLK0, (1<<14 | 1<<15));
    FUNC0(150);
    FUNC2(GPPUDCLK0, 0);

    /*Initializing PL011 uart*/
    FUNC2(UART_CR, 0);                      // disable uart
    FUNC2(UART_IBRD, 26);                   // set baudrate = 115200
    FUNC2(UART_FBRD, 3);
    FUNC2(UART_LCRH, (1<<4) | (3<<5));      // 8bits and enable FIFO
    FUNC2(UART_CR, (1 | (3<<8)));           // enable uart, rx, tx
}