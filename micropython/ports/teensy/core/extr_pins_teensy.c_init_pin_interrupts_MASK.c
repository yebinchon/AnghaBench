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
 int /*<<< orphan*/  IRQ_PORTA ; 
 int /*<<< orphan*/  IRQ_PORTB ; 
 int /*<<< orphan*/  IRQ_PORTC ; 
 int /*<<< orphan*/  IRQ_PORTD ; 
 int /*<<< orphan*/  IRQ_PORTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	//SIM_SCGC5 = 0x00043F82;		// clocks active to all GPIO
	FUNC0(IRQ_PORTA);
	FUNC0(IRQ_PORTB);
	FUNC0(IRQ_PORTC);
	FUNC0(IRQ_PORTD);
	FUNC0(IRQ_PORTE);
	// TODO: maybe these should be set to a lower priority
	// so if the user puts lots of slow code on attachInterrupt
	// fast interrupts will still be serviced quickly?
}