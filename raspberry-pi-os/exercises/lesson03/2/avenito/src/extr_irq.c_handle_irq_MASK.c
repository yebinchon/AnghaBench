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
 int /*<<< orphan*/  AUX_IRQ ; 
 int /*<<< orphan*/  IRQ_PENDING_1 ; 
 unsigned int SYSTEM_TIMER_IRQ_1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int miniUART_IRQ ; 

void FUNC3(void)
{
	unsigned int irq1 = FUNC0(IRQ_PENDING_1);
	unsigned int irq2 = FUNC0(AUX_IRQ);

	if (irq1 & SYSTEM_TIMER_IRQ_1) FUNC1();
	if (irq2 & miniUART_IRQ) FUNC2();
	
}