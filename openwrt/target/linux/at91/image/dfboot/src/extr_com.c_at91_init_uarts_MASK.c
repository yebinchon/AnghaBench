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
typedef  int /*<<< orphan*/  AT91PS_USART ;

/* Variables and functions */
 int /*<<< orphan*/  AT91C_MASTER_CLOCK ; 
 int /*<<< orphan*/  AT91C_US_ASYNC_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_UARTS ; 
 scalar_t__ port_detected ; 
 scalar_t__ us ; 
 scalar_t__* usa ; 

void FUNC8(void)
{
	int i;

	port_detected = 0;
	FUNC0();
	FUNC1();
	FUNC2();

	for(i=0; i<MAX_UARTS; i++) {
		us = usa[i];
		FUNC6((AT91PS_USART)us);
		FUNC7((AT91PS_USART)us);

		// Configure DBGU
		FUNC3(
			(AT91PS_USART)us, // DBGU base address
			AT91C_MASTER_CLOCK,            // 60 MHz
			AT91C_US_ASYNC_MODE,           // mode Register to be programmed
			115200,                        // baudrate to be programmed
			0                              // timeguard to be programmed
			);

		// Enable Transmitter
		FUNC5((AT91PS_USART)us);
		// Enable Receiver
		FUNC4((AT91PS_USART)us);
	}
	us = usa[0];
}