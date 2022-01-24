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
 unsigned int AUX_IRQ ; 
 int /*<<< orphan*/  IRQ_PENDING_1 ; 
 unsigned int SYSTEM_TIMER_IRQ_1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

void FUNC4(void)
{
	unsigned int irq = FUNC0(IRQ_PENDING_1);
	if(irq & AUX_IRQ)
	{
		FUNC2();
		irq &= ~AUX_IRQ;
	}
	if(irq & SYSTEM_TIMER_IRQ_1)
	{
		FUNC1();
		irq &= ~SYSTEM_TIMER_IRQ_1;
	}	
	else if(irq)
	{
		FUNC3("Unknown pending irq: %x\r\n", irq);
	}
}