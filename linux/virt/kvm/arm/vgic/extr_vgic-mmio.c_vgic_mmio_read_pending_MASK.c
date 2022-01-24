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
typedef  unsigned int u32 ;
struct vgic_irq {int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vgic_irq*) ; 

unsigned long FUNC6(struct kvm_vcpu *vcpu,
				     gpa_t addr, unsigned int len)
{
	u32 intid = FUNC0(addr, 1);
	u32 value = 0;
	int i;

	/* Loop over all IRQs affected by this read */
	for (i = 0; i < len * 8; i++) {
		struct vgic_irq *irq = FUNC4(vcpu->kvm, vcpu, intid + i);
		unsigned long flags;

		FUNC2(&irq->irq_lock, flags);
		if (FUNC1(irq))
			value |= (1U << i);
		FUNC3(&irq->irq_lock, flags);

		FUNC5(vcpu->kvm, irq);
	}

	return value;
}