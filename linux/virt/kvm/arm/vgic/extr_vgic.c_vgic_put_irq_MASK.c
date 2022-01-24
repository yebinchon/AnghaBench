#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vgic_irq {scalar_t__ intid; } ;
struct vgic_dist {int /*<<< orphan*/  lpi_list_lock; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ VGIC_MIN_LPI ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct kvm *kvm, struct vgic_irq *irq)
{
	struct vgic_dist *dist = &kvm->arch.vgic;
	unsigned long flags;

	if (irq->intid < VGIC_MIN_LPI)
		return;

	FUNC1(&dist->lpi_list_lock, flags);
	FUNC0(kvm, irq);
	FUNC2(&dist->lpi_list_lock, flags);
}