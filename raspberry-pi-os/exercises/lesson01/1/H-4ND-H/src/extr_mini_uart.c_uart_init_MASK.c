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
 int /*<<< orphan*/  AUX_ENABLES ; 
 int /*<<< orphan*/  AUX_MU_BAUD_REG ; 
 int /*<<< orphan*/  AUX_MU_CNTL_REG ; 
 int /*<<< orphan*/  AUX_MU_IER_REG ; 
 int /*<<< orphan*/  AUX_MU_LCR_REG ; 
 int /*<<< orphan*/  AUX_MU_MCR_REG ; 
 int BAUD_REG_VAL ; 
 int /*<<< orphan*/  GPFSEL1 ; 
 int /*<<< orphan*/  GPPUD ; 
 int /*<<< orphan*/  GPPUDCLK0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3 ( void )
{
	unsigned int selector;

	selector = FUNC1(GPFSEL1);
	selector &= ~(7<<12);                   // clean gpio14
	selector |= 2<<12;                      // set alt5 for gpio14
	selector &= ~(7<<15);                   // clean gpio15
	selector |= 2<<15;                      // set alt5 for gpio15
	FUNC2(GPFSEL1,selector);

	FUNC2(GPPUD,0);
	FUNC0(150);
	FUNC2(GPPUDCLK0,(1<<14)|(1<<15));
	FUNC0(150);
	FUNC2(GPPUDCLK0,0);

	FUNC2(AUX_ENABLES,1);                   //Enable mini uart (this also enables access to it registers)
	FUNC2(AUX_MU_CNTL_REG,0);               //Disable auto flow control and disable receiver and transmitter (for now)
	FUNC2(AUX_MU_IER_REG,0);                //Disable receive and transmit interrupts
	FUNC2(AUX_MU_LCR_REG,3);                //Enable 8 bit mode
	FUNC2(AUX_MU_MCR_REG,0);                //Set RTS line to be always high
	FUNC2(AUX_MU_BAUD_REG,BAUD_REG_VAL);    //Set baud rate to defined value in peripherals/mini_uart.h

	FUNC2(AUX_MU_CNTL_REG,3);               //Finally, enable transmitter and receiver
}