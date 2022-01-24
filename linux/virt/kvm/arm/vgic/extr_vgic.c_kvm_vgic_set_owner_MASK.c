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
struct vgic_irq {void* owner; int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC3 (int /*<<< orphan*/ ,struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC6(struct kvm_vcpu *vcpu, unsigned int intid, void *owner)
{
	struct vgic_irq *irq;
	unsigned long flags;
	int ret = 0;

	if (!FUNC4(vcpu->kvm))
		return -EAGAIN;

	/* SGIs and LPIs cannot be wired up to any device */
	if (!FUNC0(intid) && !FUNC5(vcpu->kvm, intid))
		return -EINVAL;

	irq = FUNC3(vcpu->kvm, vcpu, intid);
	FUNC1(&irq->irq_lock, flags);
	if (irq->owner && irq->owner != owner)
		ret = -EEXIST;
	else
		irq->owner = owner;
	FUNC2(&irq->irq_lock, flags);

	return ret;
}