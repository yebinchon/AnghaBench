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
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_2__* run; } ;
struct kvm_sync_regs {int device_irq_level; } ;
struct arch_timer_context {int dummy; } ;
struct TYPE_3__ {struct kvm_sync_regs regs; } ;
struct TYPE_4__ {TYPE_1__ s; } ;

/* Variables and functions */
 int KVM_ARM_DEV_EL1_PTIMER ; 
 int KVM_ARM_DEV_EL1_VTIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct arch_timer_context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct arch_timer_context* FUNC3 (struct kvm_vcpu*) ; 
 struct arch_timer_context* FUNC4 (struct kvm_vcpu*) ; 

bool FUNC5(struct kvm_vcpu *vcpu)
{
	struct arch_timer_context *vtimer = FUNC4(vcpu);
	struct arch_timer_context *ptimer = FUNC3(vcpu);
	struct kvm_sync_regs *sregs = &vcpu->run->s.regs;
	bool vlevel, plevel;

	if (FUNC2(FUNC0(vcpu->kvm)))
		return false;

	vlevel = sregs->device_irq_level & KVM_ARM_DEV_EL1_VTIMER;
	plevel = sregs->device_irq_level & KVM_ARM_DEV_EL1_PTIMER;

	return FUNC1(vtimer) != vlevel ||
	       FUNC1(ptimer) != plevel;
}