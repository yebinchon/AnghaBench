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
struct vgic_irq {int active; scalar_t__ source; int /*<<< orphan*/  intid; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct vgic_irq*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct vgic_irq *irq)
{
	/* Account for the active state as an interrupt */
	if (FUNC2(irq->intid) && irq->source)
		return FUNC0(irq->source) + irq->active;

	return FUNC1(irq) || irq->active;
}