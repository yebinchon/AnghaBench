#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u8 ;
typedef  scalar_t__ u32 ;
struct vgic_irq {unsigned long targets; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  target_vcpu; } ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_4__ {int /*<<< orphan*/  online_vcpus; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ VGIC_NR_PRIVATE_IRQS ; 
 int FUNC2 (long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct vgic_irq*) ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu,
				   gpa_t addr, unsigned int len,
				   unsigned long val)
{
	u32 intid = FUNC1(addr, 8);
	u8 cpu_mask = FUNC0(FUNC3(&vcpu->kvm->online_vcpus) - 1, 0);
	int i;
	unsigned long flags;

	/* GICD_ITARGETSR[0-7] are read-only */
	if (intid < VGIC_NR_PRIVATE_IRQS)
		return;

	for (i = 0; i < len; i++) {
		struct vgic_irq *irq = FUNC7(vcpu->kvm, NULL, intid + i);
		int target;

		FUNC5(&irq->irq_lock, flags);

		irq->targets = (val >> (i * 8)) & cpu_mask;
		target = irq->targets ? FUNC2(irq->targets) : 0;
		irq->target_vcpu = FUNC4(vcpu->kvm, target);

		FUNC6(&irq->irq_lock, flags);
		FUNC8(vcpu->kvm, irq);
	}
}