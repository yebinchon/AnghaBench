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
struct vgic_irq {int /*<<< orphan*/  irq_lock; scalar_t__ active; scalar_t__ hw; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

bool FUNC5(struct kvm_vcpu *vcpu, unsigned int vintid)
{
	struct vgic_irq *irq;
	bool map_is_active;
	unsigned long flags;

	if (!FUNC3(vcpu->kvm))
		return false;

	irq = FUNC2(vcpu->kvm, vcpu, vintid);
	FUNC0(&irq->irq_lock, flags);
	map_is_active = irq->hw && irq->active;
	FUNC1(&irq->irq_lock, flags);
	FUNC4(vcpu->kvm, irq);

	return map_is_active;
}