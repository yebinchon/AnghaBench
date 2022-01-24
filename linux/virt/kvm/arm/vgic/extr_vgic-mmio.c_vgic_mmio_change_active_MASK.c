#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct vgic_irq {int active; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  active_source; int /*<<< orphan*/  intid; scalar_t__ hw; } ;
struct kvm_vcpu {TYPE_3__* kvm; int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_4__ {scalar_t__ vgic_model; } ;
struct TYPE_5__ {TYPE_1__ vgic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;

/* Variables and functions */
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct kvm_vcpu* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct vgic_irq*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct vgic_irq*,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
				    bool active)
{
	unsigned long flags;
	struct kvm_vcpu *requester_vcpu = FUNC2();

	FUNC0(&irq->irq_lock, flags);

	if (irq->hw) {
		FUNC3(vcpu, irq, active, !requester_vcpu);
	} else {
		u32 model = vcpu->kvm->arch.vgic.vgic_model;
		u8 active_source;

		irq->active = active;

		/*
		 * The GICv2 architecture indicates that the source CPUID for
		 * an SGI should be provided during an EOI which implies that
		 * the active state is stored somewhere, but at the same time
		 * this state is not architecturally exposed anywhere and we
		 * have no way of knowing the right source.
		 *
		 * This may lead to a VCPU not being able to receive
		 * additional instances of a particular SGI after migration
		 * for a GICv2 VM on some GIC implementations.  Oh well.
		 */
		active_source = (requester_vcpu) ? requester_vcpu->vcpu_id : 0;

		if (model == KVM_DEV_TYPE_ARM_VGIC_V2 &&
		    active && FUNC4(irq->intid))
			irq->active_source = active_source;
	}

	if (irq->active)
		FUNC5(vcpu->kvm, irq, flags);
	else
		FUNC1(&irq->irq_lock, flags);
}