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
typedef  int u64 ;
struct kvm_pmu {struct kvm_pmc* pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {scalar_t__ perf_event; } ;

/* Variables and functions */
 int ARMV8_PMU_MAX_COUNTERS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct kvm_vcpu *vcpu, u64 val)
{
	int i;
	struct kvm_pmu *pmu = &vcpu->arch.pmu;
	struct kvm_pmc *pmc;

	if (!val)
		return;

	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
		if (!(val & FUNC0(i)))
			continue;

		pmc = &pmu->pmc[i];

		/*
		 * For high counters of chained events we must recreate the
		 * perf event with the long (64bit) attribute unset.
		 */
		if (FUNC3(pmc) &&
		    FUNC2(i)) {
			FUNC1(vcpu, i);
			continue;
		}

		/* At this point, pmc must be the canonical */
		if (pmc->perf_event)
			FUNC4(pmc->perf_event);
	}
}