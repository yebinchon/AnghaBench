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
 int EINVAL ; 
#define  KVM_ARM_PSCI_0_1 130 
#define  KVM_ARM_PSCI_0_2 129 
#define  KVM_ARM_PSCI_1_0 128 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	switch (FUNC3(vcpu, vcpu->kvm)) {
	case KVM_ARM_PSCI_1_0:
		return FUNC2(vcpu);
	case KVM_ARM_PSCI_0_2:
		return FUNC1(vcpu);
	case KVM_ARM_PSCI_0_1:
		return FUNC0(vcpu);
	default:
		return -EINVAL;
	};
}