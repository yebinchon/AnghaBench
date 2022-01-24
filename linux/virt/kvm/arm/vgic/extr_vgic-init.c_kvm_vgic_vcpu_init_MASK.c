#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vgic_irq {int intid; int enabled; int /*<<< orphan*/  config; int /*<<< orphan*/  refcount; struct kvm_vcpu* target_vcpu; int /*<<< orphan*/ * vcpu; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  ap_list; } ;
struct vgic_dist {scalar_t__ vgic_model; } ;
struct TYPE_7__ {int /*<<< orphan*/  base_addr; } ;
struct vgic_cpu {struct vgic_irq* private_irqs; int /*<<< orphan*/  ap_list_lock; int /*<<< orphan*/  ap_list_head; TYPE_3__ rd_iodev; } ;
struct TYPE_5__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_4__* kvm; TYPE_1__ arch; } ;
struct TYPE_6__ {struct vgic_dist vgic; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ; 
 int /*<<< orphan*/  VGIC_ADDR_UNDEF ; 
 int /*<<< orphan*/  VGIC_CONFIG_EDGE ; 
 int /*<<< orphan*/  VGIC_CONFIG_LEVEL ; 
 int VGIC_NR_PRIVATE_IRQS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct kvm_vcpu*) ; 

int FUNC8(struct kvm_vcpu *vcpu)
{
	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
	struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
	int ret = 0;
	int i;

	vgic_cpu->rd_iodev.base_addr = VGIC_ADDR_UNDEF;

	FUNC0(&vgic_cpu->ap_list_head);
	FUNC5(&vgic_cpu->ap_list_lock);

	/*
	 * Enable and configure all SGIs to be edge-triggered and
	 * configure all PPIs as level-triggered.
	 */
	for (i = 0; i < VGIC_NR_PRIVATE_IRQS; i++) {
		struct vgic_irq *irq = &vgic_cpu->private_irqs[i];

		FUNC0(&irq->ap_list);
		FUNC5(&irq->irq_lock);
		irq->intid = i;
		irq->vcpu = NULL;
		irq->target_vcpu = vcpu;
		FUNC2(&irq->refcount);
		if (FUNC6(i)) {
			/* SGIs */
			irq->enabled = 1;
			irq->config = VGIC_CONFIG_EDGE;
		} else {
			/* PPIs */
			irq->config = VGIC_CONFIG_LEVEL;
		}
	}

	if (!FUNC1(vcpu->kvm))
		return 0;

	/*
	 * If we are creating a VCPU with a GICv3 we must also register the
	 * KVM io device for the redistributor that belongs to this VCPU.
	 */
	if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
		FUNC3(&vcpu->kvm->lock);
		ret = FUNC7(vcpu);
		FUNC4(&vcpu->kvm->lock);
	}
	return ret;
}