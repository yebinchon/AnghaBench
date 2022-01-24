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
typedef  scalar_t__ u32 ;
struct vgic_irq {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  config; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VGIC_CONFIG_EDGE ; 
 int /*<<< orphan*/  VGIC_CONFIG_LEVEL ; 
 scalar_t__ VGIC_NR_PRIVATE_IRQS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int,unsigned long*) ; 
 struct vgic_irq* FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

void FUNC6(struct kvm_vcpu *vcpu,
			    gpa_t addr, unsigned int len,
			    unsigned long val)
{
	u32 intid = FUNC0(addr, 2);
	int i;
	unsigned long flags;

	for (i = 0; i < len * 4; i++) {
		struct vgic_irq *irq;

		/*
		 * The configuration cannot be changed for SGIs in general,
		 * for PPIs this is IMPLEMENTATION DEFINED. The arch timer
		 * code relies on PPIs being level triggered, so we also
		 * make them read-only here.
		 */
		if (intid + i < VGIC_NR_PRIVATE_IRQS)
			continue;

		irq = FUNC4(vcpu->kvm, vcpu, intid + i);
		FUNC1(&irq->irq_lock, flags);

		if (FUNC3(i * 2 + 1, &val))
			irq->config = VGIC_CONFIG_EDGE;
		else
			irq->config = VGIC_CONFIG_LEVEL;

		FUNC2(&irq->irq_lock, flags);
		FUNC5(vcpu->kvm, irq);
	}
}