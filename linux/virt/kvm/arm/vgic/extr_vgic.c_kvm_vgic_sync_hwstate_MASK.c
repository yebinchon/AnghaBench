#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vgic_cpu {scalar_t__ used_lrs; int /*<<< orphan*/  ap_list_head; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 

void FUNC7(struct kvm_vcpu *vcpu)
{
	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;

	FUNC0(FUNC6(vcpu));

	/* An empty ap_list_head implies used_lrs == 0 */
	if (FUNC2(&vcpu->arch.vgic_cpu.ap_list_head))
		return;

	if (FUNC1())
		FUNC5(vcpu);

	if (vgic_cpu->used_lrs)
		FUNC3(vcpu);
	FUNC4(vcpu);
}