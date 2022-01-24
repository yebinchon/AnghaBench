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
struct arch_timer_context {int dummy; } ;

/* Variables and functions */
#define  KVM_REG_ARM_PTIMER_CTL 132 
#define  KVM_REG_ARM_PTIMER_CVAL 131 
#define  KVM_REG_ARM_TIMER_CNT 130 
#define  KVM_REG_ARM_TIMER_CTL 129 
#define  KVM_REG_ARM_TIMER_CVAL 128 
 int /*<<< orphan*/  TIMER_REG_CTL ; 
 int /*<<< orphan*/  TIMER_REG_CVAL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct arch_timer_context*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 struct arch_timer_context* FUNC3 (struct kvm_vcpu*) ; 
 struct arch_timer_context* FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu, u64 regid, u64 value)
{
	struct arch_timer_context *timer;

	switch (regid) {
	case KVM_REG_ARM_TIMER_CTL:
		timer = FUNC4(vcpu);
		FUNC0(vcpu, timer, TIMER_REG_CTL, value);
		break;
	case KVM_REG_ARM_TIMER_CNT:
		timer = FUNC4(vcpu);
		FUNC2(vcpu, FUNC1() - value);
		break;
	case KVM_REG_ARM_TIMER_CVAL:
		timer = FUNC4(vcpu);
		FUNC0(vcpu, timer, TIMER_REG_CVAL, value);
		break;
	case KVM_REG_ARM_PTIMER_CTL:
		timer = FUNC3(vcpu);
		FUNC0(vcpu, timer, TIMER_REG_CTL, value);
		break;
	case KVM_REG_ARM_PTIMER_CVAL:
		timer = FUNC3(vcpu);
		FUNC0(vcpu, timer, TIMER_REG_CVAL, value);
		break;

	default:
		return -1;
	}

	return 0;
}