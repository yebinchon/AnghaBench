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
struct vgic_irq {int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

int FUNC7(struct kvm_vcpu *vcpu, unsigned int vintid)
{
	struct vgic_irq *irq;
	unsigned long flags;

	if (!FUNC5(vcpu->kvm))
		return -EAGAIN;

	irq = FUNC4(vcpu->kvm, vcpu, vintid);
	FUNC0(!irq);

	FUNC2(&irq->irq_lock, flags);
	FUNC1(irq);
	FUNC3(&irq->irq_lock, flags);
	FUNC6(vcpu->kvm, irq);

	return 0;
}