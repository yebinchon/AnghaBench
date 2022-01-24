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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GPFSEL1 ; 
 int /*<<< orphan*/  GPPUD ; 
 int /*<<< orphan*/  GPPUDCLK0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4 (int baudrate )
{
	unsigned int selector;

	selector = FUNC2(GPFSEL1);
	selector &= ~(7<<12);                   // clean gpio14
	selector |= 2<<12;                      // set alt5 for gpio14
	selector &= ~(7<<15);                   // clean gpio15
	selector |= 2<<15;                      // set alt5 for gpio15
	FUNC3(GPFSEL1,selector);

	FUNC3(GPPUD,0);
	FUNC1(150);
	FUNC3(GPPUDCLK0,(1<<14)|(1<<15));
	FUNC1(150);
	FUNC3(GPPUDCLK0,0);

	FUNC3(AUX_ENABLES,1);                   //Enable mini uart (this also enables access to it registers)
	FUNC3(AUX_MU_CNTL_REG,0);               //Disable auto flow control and disable receiver and transmitter (for now)
	FUNC3(AUX_MU_IER_REG,0);                //Disable receive and transmit interrupts
	FUNC3(AUX_MU_LCR_REG,3);                //Enable 8 bit mode
	FUNC3(AUX_MU_MCR_REG,0);                //Set RTS line to be always high
	FUNC3(AUX_MU_BAUD_REG,(int)FUNC0(baudrate));             //Set baud rate to baudrate

	FUNC3(AUX_MU_CNTL_REG,3);               //Finally, enable transmitter and receiver
}