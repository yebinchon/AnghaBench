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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vgic_its {int dummy; } ;
struct vgic_irq {int dummy; } ;
struct TYPE_8__ {scalar_t__ its_vm; } ;
struct TYPE_5__ {TYPE_4__ its_vpe; } ;
struct TYPE_6__ {TYPE_1__ vgic_v3; } ;
struct TYPE_7__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm {int dummy; } ;
struct its_collection {int /*<<< orphan*/  target_addr; } ;

/* Variables and functions */
 int E_ITS_INVALL_UNMAPPED_COLLECTION ; 
 struct its_collection* FUNC0 (struct vgic_its*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct its_collection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct kvm_vcpu* FUNC5 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,struct vgic_irq*,struct kvm_vcpu*,int) ; 
 int FUNC7 (struct kvm*,struct kvm_vcpu*,int /*<<< orphan*/ **) ; 
 struct vgic_irq* FUNC8 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,struct vgic_irq*) ; 

__attribute__((used)) static int FUNC10(struct kvm *kvm, struct vgic_its *its,
				      u64 *its_cmd)
{
	u32 coll_id = FUNC1(its_cmd);
	struct its_collection *collection;
	struct kvm_vcpu *vcpu;
	struct vgic_irq *irq;
	u32 *intids;
	int irq_count, i;

	collection = FUNC0(its, coll_id);
	if (!FUNC3(collection))
		return E_ITS_INVALL_UNMAPPED_COLLECTION;

	vcpu = FUNC5(kvm, collection->target_addr);

	irq_count = FUNC7(kvm, vcpu, &intids);
	if (irq_count < 0)
		return irq_count;

	for (i = 0; i < irq_count; i++) {
		irq = FUNC8(kvm, NULL, intids[i]);
		if (!irq)
			continue;
		FUNC6(kvm, irq, vcpu, false);
		FUNC9(kvm, irq);
	}

	FUNC4(intids);

	if (vcpu->arch.vgic_cpu.vgic_v3.its_vpe.its_vm)
		FUNC2(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe);

	return 0;
}