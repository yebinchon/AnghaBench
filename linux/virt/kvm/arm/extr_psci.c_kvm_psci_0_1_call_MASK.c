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
typedef  int u32 ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  KVM_PSCI_FN_CPU_OFF 129 
#define  KVM_PSCI_FN_CPU_ON 128 
 unsigned long PSCI_RET_NOT_SUPPORTED ; 
 unsigned long PSCI_RET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 unsigned long FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	struct kvm *kvm = vcpu->kvm;
	u32 psci_fn = FUNC4(vcpu);
	unsigned long val;

	switch (psci_fn) {
	case KVM_PSCI_FN_CPU_OFF:
		FUNC0(vcpu);
		val = PSCI_RET_SUCCESS;
		break;
	case KVM_PSCI_FN_CPU_ON:
		FUNC2(&kvm->lock);
		val = FUNC1(vcpu);
		FUNC3(&kvm->lock);
		break;
	default:
		val = PSCI_RET_NOT_SUPPORTED;
		break;
	}

	FUNC5(vcpu, val, 0, 0, 0);
	return 1;
}