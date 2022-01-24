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
struct kvm_pmc {int idx; scalar_t__ perf_event; } ;

/* Variables and functions */
 scalar_t__ ARMV8_PMU_CYCLE_IDX ; 
 int PMCCNTR_EL0 ; 
 int PMEVCNTR0_EL0 ; 
 int FUNC0 (struct kvm_vcpu*,int) ; 
 struct kvm_pmc* FUNC1 (struct kvm_pmc*) ; 
 scalar_t__ FUNC2 (struct kvm_pmc*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,int*,int*) ; 

__attribute__((used)) static u64 FUNC5(struct kvm_vcpu *vcpu,
					  struct kvm_pmc *pmc)
{
	u64 counter, counter_high, reg, enabled, running;

	if (FUNC2(pmc)) {
		pmc = FUNC1(pmc);
		reg = PMEVCNTR0_EL0 + pmc->idx;

		counter = FUNC0(vcpu, reg);
		counter_high = FUNC0(vcpu, reg + 1);

		counter = FUNC3(counter) | (counter_high << 32);
	} else {
		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
		      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
		counter = FUNC0(vcpu, reg);
	}

	/*
	 * The real counter value is equal to the value of counter register plus
	 * the value perf event counts.
	 */
	if (pmc->perf_event)
		counter += FUNC4(pmc->perf_event, &enabled,
						 &running);

	return counter;
}