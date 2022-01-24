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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/ * MBOX_IGU1_ISR ; 
 int /*<<< orphan*/  PPE_MAILBOX_IGU1_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_dma_tasklet ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	if ( !*MBOX_IGU1_ISR )
		return IRQ_HANDLED;

	FUNC0(PPE_MAILBOX_IGU1_INT);
	FUNC1(&g_dma_tasklet);

	return IRQ_HANDLED;
}