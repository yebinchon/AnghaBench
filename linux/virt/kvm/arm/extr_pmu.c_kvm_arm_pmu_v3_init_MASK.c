#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int created; int /*<<< orphan*/  irq_num; } ;
struct TYPE_3__ {TYPE_2__ pmu; int /*<<< orphan*/  features; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_PMU_V3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	if (!FUNC2())
		return -ENODEV;

	if (!FUNC4(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
		return -ENXIO;

	if (vcpu->arch.pmu.created)
		return -EBUSY;

	if (FUNC0(vcpu->kvm)) {
		int ret;

		/*
		 * If using the PMU with an in-kernel virtual GIC
		 * implementation, we require the GIC to be already
		 * initialized when initializing the PMU.
		 */
		if (!FUNC5(vcpu->kvm))
			return -ENODEV;

		if (!FUNC1(vcpu))
			return -ENXIO;

		ret = FUNC3(vcpu, vcpu->arch.pmu.irq_num,
					 &vcpu->arch.pmu);
		if (ret)
			return ret;
	}

	vcpu->arch.pmu.created = true;
	return 0;
}