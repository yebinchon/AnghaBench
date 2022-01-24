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
struct kvm_pmu {int irq_level; int /*<<< orphan*/  irq_num; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct kvm_pmu*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct kvm_pmu *pmu = &vcpu->arch.pmu;
	bool overflow;

	if (!FUNC2(vcpu))
		return;

	overflow = !!FUNC3(vcpu);
	if (pmu->irq_level == overflow)
		return;

	pmu->irq_level = overflow;

	if (FUNC5(FUNC1(vcpu->kvm))) {
		int ret = FUNC4(vcpu->kvm, vcpu->vcpu_id,
					      pmu->irq_num, overflow, pmu);
		FUNC0(ret);
	}
}