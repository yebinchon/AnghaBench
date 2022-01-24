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
 int /*<<< orphan*/  UART_CR_REG ; 
 int UART_CR_RXE ; 
 int UART_CR_TXE ; 
 int UART_CR_UARTEN ; 
 int /*<<< orphan*/  UART_FBRD_REG ; 
 int /*<<< orphan*/  UART_IBRD_REG ; 
 int /*<<< orphan*/  UART_ICR_REG ; 
 int /*<<< orphan*/  UART_IMSC_REG ; 
 int UART_LCRH_FEN ; 
 int /*<<< orphan*/  UART_LCRH_REG ; 
 int UART_LCRH_WLEN_8BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3 ( void )
{
	unsigned int selector;

	selector = FUNC1(GPFSEL1);
	selector &= ~(7<<12);                   // clean gpio14
	selector |= 4<<12;                      // set alt0 for gpio14
	selector &= ~(7<<15);                   // clean gpio15
	selector |= 4<<15;                      // set alt0 for gpio 15
	FUNC2(GPFSEL1,selector);

	FUNC2(GPPUD,0);
	FUNC0(150);
	FUNC2(GPPUDCLK0,(1<<14)|(1<<15));
	FUNC0(150);
	FUNC2(GPPUDCLK0,0);

	FUNC2(UART_ICR_REG, 0x7ff);	// clear all interrupts
	
	/* divisor = UARTCLK / (16 * baudrate) */
	/* fractional part register = (fractional part of divisor * 64) + 0.5 */
	/* baudrate = 115200 */
	FUNC2(UART_IBRD_REG, 26);	// integer part
	FUNC2(UART_FBRD_REG, 3);	// fractional part
	FUNC2(UART_LCRH_REG, UART_LCRH_FEN | UART_LCRH_WLEN_8BIT); // FIFO buffer, 8bits data 
	FUNC2(UART_IMSC_REG, 0);	// mask all interrupts
	FUNC2(UART_CR_REG, UART_CR_UARTEN | UART_CR_TXE | UART_CR_RXE); // enable uaert, transmt and receive
}