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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
#define  ARM_SMCCC_VERSION_FUNC_ID 140 
 unsigned long KVM_ARM_PSCI_1_0 ; 
#define  PSCI_0_2_FN64_AFFINITY_INFO 139 
#define  PSCI_0_2_FN64_CPU_ON 138 
#define  PSCI_0_2_FN64_CPU_SUSPEND 137 
#define  PSCI_0_2_FN_AFFINITY_INFO 136 
#define  PSCI_0_2_FN_CPU_OFF 135 
#define  PSCI_0_2_FN_CPU_ON 134 
#define  PSCI_0_2_FN_CPU_SUSPEND 133 
#define  PSCI_0_2_FN_MIGRATE_INFO_TYPE 132 
#define  PSCI_0_2_FN_PSCI_VERSION 131 
#define  PSCI_0_2_FN_SYSTEM_OFF 130 
#define  PSCI_0_2_FN_SYSTEM_RESET 129 
#define  PSCI_1_0_FN_PSCI_FEATURES 128 
 unsigned long PSCI_RET_NOT_SUPPORTED ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	u32 psci_fn = FUNC2(vcpu);
	u32 feature;
	unsigned long val;
	int ret = 1;

	switch(psci_fn) {
	case PSCI_0_2_FN_PSCI_VERSION:
		val = KVM_ARM_PSCI_1_0;
		break;
	case PSCI_1_0_FN_PSCI_FEATURES:
		feature = FUNC1(vcpu);
		switch(feature) {
		case PSCI_0_2_FN_PSCI_VERSION:
		case PSCI_0_2_FN_CPU_SUSPEND:
		case PSCI_0_2_FN64_CPU_SUSPEND:
		case PSCI_0_2_FN_CPU_OFF:
		case PSCI_0_2_FN_CPU_ON:
		case PSCI_0_2_FN64_CPU_ON:
		case PSCI_0_2_FN_AFFINITY_INFO:
		case PSCI_0_2_FN64_AFFINITY_INFO:
		case PSCI_0_2_FN_MIGRATE_INFO_TYPE:
		case PSCI_0_2_FN_SYSTEM_OFF:
		case PSCI_0_2_FN_SYSTEM_RESET:
		case PSCI_1_0_FN_PSCI_FEATURES:
		case ARM_SMCCC_VERSION_FUNC_ID:
			val = 0;
			break;
		default:
			val = PSCI_RET_NOT_SUPPORTED;
			break;
		}
		break;
	default:
		return FUNC0(vcpu);
	}

	FUNC3(vcpu, val, 0, 0, 0);
	return ret;
}