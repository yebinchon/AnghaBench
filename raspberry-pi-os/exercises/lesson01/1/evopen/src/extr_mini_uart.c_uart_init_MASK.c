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
 int /*<<< orphan*/  AUX_MU_IIR_REG ; 
 int /*<<< orphan*/  AUX_MU_LCR_REG ; 
 int /*<<< orphan*/  AUX_MU_MCR_REG ; 
 int /*<<< orphan*/  BAUD_FREQ ; 
 int /*<<< orphan*/  CORE_FREQ ; 
 int /*<<< orphan*/  GPFSEL1 ; 
 int /*<<< orphan*/  GPPUD ; 
 int /*<<< orphan*/  GPPUDCLK0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(void) {
    unsigned int selector;  // 32 bits

    selector = FUNC1(GPFSEL1);
    selector &= ~(7 << 12);
    selector |= 2 << 12;
    selector &= ~(7 << 15);
    selector |= 2 << 15;
    FUNC3(GPFSEL1, selector);

    FUNC3(GPPUD, 0);
    FUNC0(150);
    FUNC3(GPPUDCLK0, (1 << 14) | (1 << 15));
    FUNC0(150);
    FUNC3(GPPUDCLK0, 0);

    FUNC3(AUX_ENABLES,
          1);  // Enable mini uart (this also enables access to it registers)
    FUNC3(AUX_MU_CNTL_REG, 0);  // Disable auto flow control
    FUNC3(AUX_MU_IER_REG, 0);   // Disable receive and transmit interrupts
    FUNC3(AUX_MU_LCR_REG, 3);   // Enable 8 bit mode
    FUNC3(AUX_MU_MCR_REG, 0);   // Set RTS line to be always high
    FUNC3(AUX_MU_BAUD_REG,
          FUNC2(CORE_FREQ, BAUD_FREQ));  // Set baud rate to 115200
    FUNC3(AUX_MU_IIR_REG, 6);                   // Clear FIFO

    FUNC3(AUX_MU_CNTL_REG, 3);  // Finally, enable transmitter and receiver
}