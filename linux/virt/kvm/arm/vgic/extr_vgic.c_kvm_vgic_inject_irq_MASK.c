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
struct vgic_irq {scalar_t__ config; int line_level; int pending_latch; int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ VGIC_CONFIG_LEVEL ; 
 unsigned int VGIC_NR_PRIVATE_IRQS ; 
 struct kvm_vcpu* FUNC0 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,int) ; 
 struct vgic_irq* FUNC4 (struct kvm*,struct kvm_vcpu*,unsigned int) ; 
 int FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,struct vgic_irq*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct vgic_irq*,int,void*) ; 

int FUNC9(struct kvm *kvm, int cpuid, unsigned int intid,
			bool level, void *owner)
{
	struct kvm_vcpu *vcpu;
	struct vgic_irq *irq;
	unsigned long flags;
	int ret;

	FUNC3(cpuid, intid, level);

	ret = FUNC5(kvm);
	if (ret)
		return ret;

	vcpu = FUNC0(kvm, cpuid);
	if (!vcpu && intid < VGIC_NR_PRIVATE_IRQS)
		return -EINVAL;

	irq = FUNC4(kvm, vcpu, intid);
	if (!irq)
		return -EINVAL;

	FUNC1(&irq->irq_lock, flags);

	if (!FUNC8(irq, level, owner)) {
		/* Nothing to see here, move along... */
		FUNC2(&irq->irq_lock, flags);
		FUNC6(kvm, irq);
		return 0;
	}

	if (irq->config == VGIC_CONFIG_LEVEL)
		irq->line_level = level;
	else
		irq->pending_latch = true;

	FUNC7(kvm, irq, flags);
	FUNC6(kvm, irq);

	return 0;
}