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
typedef  size_t u64 ;
struct kvm_pmu {struct kvm_pmc* pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {int dummy; } ;

/* Variables and functions */
 size_t ARMV8_PMU_CYCLE_IDX ; 
 size_t FUNC0 (struct kvm_vcpu*,struct kvm_pmc*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (struct kvm_pmc*) ; 
 size_t FUNC3 (size_t) ; 
 size_t FUNC4 (size_t) ; 

u64 FUNC5(struct kvm_vcpu *vcpu, u64 select_idx)
{
	u64 counter;
	struct kvm_pmu *pmu = &vcpu->arch.pmu;
	struct kvm_pmc *pmc = &pmu->pmc[select_idx];

	counter = FUNC0(vcpu, pmc);

	if (FUNC2(pmc) &&
	    FUNC1(select_idx))
		counter = FUNC4(counter);
	else if (select_idx != ARMV8_PMU_CYCLE_IDX)
		counter = FUNC3(counter);

	return counter;
}