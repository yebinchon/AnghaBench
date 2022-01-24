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
struct vgic_irq {int pending_latch; int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int,unsigned long*) ; 
 struct vgic_irq* FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vgic_irq*,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu,
					 gpa_t addr, unsigned int len,
					 unsigned long val)
{
	u32 intid = FUNC0(addr, 1);
	int i;
	unsigned long flags;

	for (i = 0; i < len * 8; i++) {
		struct vgic_irq *irq = FUNC4(vcpu->kvm, vcpu, intid + i);

		FUNC1(&irq->irq_lock, flags);
		if (FUNC3(i, &val)) {
			/*
			 * pending_latch is set irrespective of irq type
			 * (level or edge) to avoid dependency that VM should
			 * restore irq config before pending info.
			 */
			irq->pending_latch = true;
			FUNC6(vcpu->kvm, irq, flags);
		} else {
			irq->pending_latch = false;
			FUNC2(&irq->irq_lock, flags);
		}

		FUNC5(vcpu->kvm, irq);
	}

	return 0;
}