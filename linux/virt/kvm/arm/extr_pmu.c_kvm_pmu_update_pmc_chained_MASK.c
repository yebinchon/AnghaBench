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
struct kvm_pmu {int /*<<< orphan*/  chained; struct kvm_pmc* pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu, u64 select_idx)
{
	struct kvm_pmu *pmu = &vcpu->arch.pmu;
	struct kvm_pmc *pmc = &pmu->pmc[select_idx];

	if (FUNC1(vcpu, pmc->idx)) {
		/*
		 * During promotion from !chained to chained we must ensure
		 * the adjacent counter is stopped and its event destroyed
		 */
		if (!FUNC2(pmc))
			FUNC3(vcpu, pmc);

		FUNC4(pmc->idx >> 1, vcpu->arch.pmu.chained);
	} else {
		FUNC0(pmc->idx >> 1, vcpu->arch.pmu.chained);
	}
}