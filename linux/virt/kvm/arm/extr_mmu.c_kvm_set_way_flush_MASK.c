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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 unsigned long HCR_TVM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 unsigned long* FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC4 (struct kvm_vcpu*) ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	unsigned long hcr = *FUNC3(vcpu);

	/*
	 * If this is the first time we do a S/W operation
	 * (i.e. HCR_TVM not set) flush the whole memory, and set the
	 * VM trapping.
	 *
	 * Otherwise, rely on the VM trapping to wait for the MMU +
	 * Caches to be turned off. At that point, we'll be able to
	 * clean the caches again.
	 */
	if (!(hcr & HCR_TVM)) {
		FUNC1(*FUNC4(vcpu),
					FUNC2(vcpu));
		FUNC0(vcpu->kvm);
		*FUNC3(vcpu) = hcr | HCR_TVM;
	}
}