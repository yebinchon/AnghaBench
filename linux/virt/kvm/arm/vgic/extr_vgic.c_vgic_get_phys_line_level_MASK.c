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
struct vgic_irq {int (* get_input_level ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  host_irq; int /*<<< orphan*/  intid; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQCHIP_STATE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct vgic_irq *irq)
{
	bool line_level;

	FUNC0(!irq->hw);

	if (irq->get_input_level)
		return irq->get_input_level(irq->intid);

	FUNC1(FUNC2(irq->host_irq,
				      IRQCHIP_STATE_PENDING,
				      &line_level));
	return line_level;
}