#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
typedef  int u32 ;
struct vgic_irq {int line_level; int /*<<< orphan*/  irq_lock; } ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_6__ {int nr_spis; } ;
struct TYPE_7__ {TYPE_1__ vgic; } ;
struct TYPE_8__ {TYPE_2__ arch; } ;

/* Variables and functions */
 int VGIC_NR_PRIVATE_IRQS ; 
 int VGIC_NR_SGIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vgic_irq* FUNC2 (TYPE_3__*,struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct vgic_irq*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct vgic_irq*,unsigned long) ; 

void FUNC5(struct kvm_vcpu *vcpu, u32 intid,
				    const u64 val)
{
	int i;
	int nr_irqs = vcpu->kvm->arch.vgic.nr_spis + VGIC_NR_PRIVATE_IRQS;
	unsigned long flags;

	for (i = 0; i < 32; i++) {
		struct vgic_irq *irq;
		bool new_level;

		if ((intid + i) < VGIC_NR_SGIS || (intid + i) >= nr_irqs)
			continue;

		irq = FUNC2(vcpu->kvm, vcpu, intid + i);

		/*
		 * Line level is set irrespective of irq type
		 * (level or edge) to avoid dependency that VM should
		 * restore irq config before line level.
		 */
		new_level = !!(val & (1U << i));
		FUNC0(&irq->irq_lock, flags);
		irq->line_level = new_level;
		if (new_level)
			FUNC4(vcpu->kvm, irq, flags);
		else
			FUNC1(&irq->irq_lock, flags);

		FUNC3(vcpu->kvm, irq);
	}
}