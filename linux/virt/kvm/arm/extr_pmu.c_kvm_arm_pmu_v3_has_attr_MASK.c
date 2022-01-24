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
struct TYPE_2__ {int /*<<< orphan*/  features; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_device_attr {int attr; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_PMU_V3 ; 
#define  KVM_ARM_VCPU_PMU_V3_INIT 129 
#define  KVM_ARM_VCPU_PMU_V3_IRQ 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
{
	switch (attr->attr) {
	case KVM_ARM_VCPU_PMU_V3_IRQ:
	case KVM_ARM_VCPU_PMU_V3_INIT:
		if (FUNC0() &&
		    FUNC1(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
			return 0;
	}

	return -ENXIO;
}