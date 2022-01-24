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
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ARMV8_PMU_CYCLE_IDX ; 
 int ARMV8_PMU_PMCR_C ; 
 int ARMV8_PMU_PMCR_E ; 
 int ARMV8_PMU_PMCR_P ; 
 int /*<<< orphan*/  PMCNTENSET_EL0 ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvm_vcpu*) ; 

void FUNC5(struct kvm_vcpu *vcpu, u64 val)
{
	u64 mask;
	int i;

	mask = FUNC4(vcpu);
	if (val & ARMV8_PMU_PMCR_E) {
		FUNC2(vcpu,
		       FUNC0(vcpu, PMCNTENSET_EL0) & mask);
	} else {
		FUNC1(vcpu, mask);
	}

	if (val & ARMV8_PMU_PMCR_C)
		FUNC3(vcpu, ARMV8_PMU_CYCLE_IDX, 0);

	if (val & ARMV8_PMU_PMCR_P) {
		for (i = 0; i < ARMV8_PMU_CYCLE_IDX; i++)
			FUNC3(vcpu, i, 0);
	}
}