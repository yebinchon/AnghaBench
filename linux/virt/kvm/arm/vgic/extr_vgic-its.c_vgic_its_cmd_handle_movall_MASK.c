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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct vgic_its {int dummy; } ;
struct vgic_irq {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm {int /*<<< orphan*/  online_vcpus; } ;

/* Variables and functions */
 int E_ITS_MOVALL_PROCNUM_OOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 struct kvm_vcpu* FUNC4 (struct kvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct vgic_irq*,struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm*,struct kvm_vcpu*,scalar_t__**) ; 
 struct vgic_irq* FUNC7 (struct kvm*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,struct vgic_irq*) ; 

__attribute__((used)) static int FUNC10(struct kvm *kvm, struct vgic_its *its,
				      u64 *its_cmd)
{
	u32 target1_addr = FUNC1(its_cmd);
	u32 target2_addr = FUNC2(its_cmd, 3, 16, 32);
	struct kvm_vcpu *vcpu1, *vcpu2;
	struct vgic_irq *irq;
	u32 *intids;
	int irq_count, i;

	if (target1_addr >= FUNC0(&kvm->online_vcpus) ||
	    target2_addr >= FUNC0(&kvm->online_vcpus))
		return E_ITS_MOVALL_PROCNUM_OOR;

	if (target1_addr == target2_addr)
		return 0;

	vcpu1 = FUNC4(kvm, target1_addr);
	vcpu2 = FUNC4(kvm, target2_addr);

	irq_count = FUNC6(kvm, vcpu1, &intids);
	if (irq_count < 0)
		return irq_count;

	for (i = 0; i < irq_count; i++) {
		irq = FUNC7(kvm, NULL, intids[i]);

		FUNC5(irq, vcpu2);

		FUNC9(kvm, irq);
	}

	FUNC8(kvm);

	FUNC3(intids);
	return 0;
}