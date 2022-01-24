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
struct vgic_irq {int group; int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC3 (int /*<<< orphan*/ ,struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vgic_irq*,unsigned long) ; 

void FUNC6(struct kvm_vcpu *vcpu, gpa_t addr,
			   unsigned int len, unsigned long val)
{
	u32 intid = FUNC1(addr, 1);
	int i;
	unsigned long flags;

	for (i = 0; i < len * 8; i++) {
		struct vgic_irq *irq = FUNC3(vcpu->kvm, vcpu, intid + i);

		FUNC2(&irq->irq_lock, flags);
		irq->group = !!(val & FUNC0(i));
		FUNC5(vcpu->kvm, irq, flags);

		FUNC4(vcpu->kvm, irq);
	}
}