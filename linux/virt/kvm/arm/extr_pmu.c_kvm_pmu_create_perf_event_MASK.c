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
struct perf_event_attr {int size; int pinned; int disabled; int exclude_user; int exclude_kernel; int exclude_hv; int exclude_host; size_t config; size_t sample_period; int /*<<< orphan*/  config1; int /*<<< orphan*/  type; } ;
struct perf_event {int dummy; } ;
struct kvm_pmu {int /*<<< orphan*/ * pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {scalar_t__ idx; struct perf_event* perf_event; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 size_t ARMV8_PMUV3_PERFCTR_CPU_CYCLES ; 
 size_t ARMV8_PMUV3_PERFCTR_SW_INCR ; 
 scalar_t__ ARMV8_PMU_CYCLE_IDX ; 
 size_t ARMV8_PMU_EVTYPE_EVENT ; 
 size_t ARMV8_PMU_EXCLUDE_EL0 ; 
 size_t ARMV8_PMU_EXCLUDE_EL1 ; 
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  PERF_ATTR_CFG1_KVM_PMU_CHAINED ; 
 int /*<<< orphan*/  PERF_TYPE_RAW ; 
 size_t PMCCFILTR_EL0 ; 
 size_t PMEVTYPER0_EL0 ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 size_t FUNC3 (struct kvm_vcpu*,size_t) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*,scalar_t__) ; 
 struct kvm_pmc* FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct kvm_vcpu*,struct kvm_pmc*) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  kvm_pmu_perf_overflow ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 struct perf_event* FUNC11 (struct perf_event_attr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct kvm_vcpu *vcpu, u64 select_idx)
{
	struct kvm_pmu *pmu = &vcpu->arch.pmu;
	struct kvm_pmc *pmc;
	struct perf_event *event;
	struct perf_event_attr attr;
	u64 eventsel, counter, reg, data;

	/*
	 * For chained counters the event type and filtering attributes are
	 * obtained from the low/even counter. We also use this counter to
	 * determine if the event is enabled/disabled.
	 */
	pmc = FUNC5(&pmu->pmc[select_idx]);

	reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + pmc->idx;
	data = FUNC3(vcpu, reg);

	FUNC9(vcpu, pmc);
	eventsel = data & ARMV8_PMU_EVTYPE_EVENT;

	/* Software increment event does't need to be backed by a perf event */
	if (eventsel == ARMV8_PMUV3_PERFCTR_SW_INCR &&
	    pmc->idx != ARMV8_PMU_CYCLE_IDX)
		return;

	FUNC10(&attr, 0, sizeof(struct perf_event_attr));
	attr.type = PERF_TYPE_RAW;
	attr.size = sizeof(attr);
	attr.pinned = 1;
	attr.disabled = !FUNC4(vcpu, pmc->idx);
	attr.exclude_user = data & ARMV8_PMU_EXCLUDE_EL0 ? 1 : 0;
	attr.exclude_kernel = data & ARMV8_PMU_EXCLUDE_EL1 ? 1 : 0;
	attr.exclude_hv = 1; /* Don't count EL2 events */
	attr.exclude_host = 1; /* Don't count host events */
	attr.config = (pmc->idx == ARMV8_PMU_CYCLE_IDX) ?
		ARMV8_PMUV3_PERFCTR_CPU_CYCLES : eventsel;

	counter = FUNC6(vcpu, pmc);

	if (FUNC7(vcpu, pmc->idx)) {
		/**
		 * The initial sample period (overflow count) of an event. For
		 * chained counters we only support overflow interrupts on the
		 * high counter.
		 */
		attr.sample_period = (-counter) & FUNC0(63, 0);
		if (FUNC4(vcpu, pmc->idx + 1))
			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;

		event = FUNC11(&attr, -1, current,
							 kvm_pmu_perf_overflow,
							 pmc + 1);
	} else {
		/* The initial sample period (overflow count) of an event. */
		if (FUNC8(vcpu, pmc->idx))
			attr.sample_period = (-counter) & FUNC0(63, 0);
		else
			attr.sample_period = (-counter) & FUNC0(31, 0);

		event = FUNC11(&attr, -1, current,
						 kvm_pmu_perf_overflow, pmc);
	}

	if (FUNC1(event)) {
		FUNC12("kvm: pmu event creation failed %ld\n",
			    FUNC2(event));
		return;
	}

	pmc->perf_event = event;
}