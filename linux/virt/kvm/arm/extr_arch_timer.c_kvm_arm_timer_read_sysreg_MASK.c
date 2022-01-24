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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;
typedef  enum kvm_arch_timers { ____Placeholder_kvm_arch_timers } kvm_arch_timers ;
typedef  enum kvm_arch_timer_regs { ____Placeholder_kvm_arch_timer_regs } kvm_arch_timer_regs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 

u64 FUNC6(struct kvm_vcpu *vcpu,
			      enum kvm_arch_timers tmr,
			      enum kvm_arch_timer_regs treg)
{
	u64 val;

	FUNC3();
	FUNC2(vcpu);

	val = FUNC0(vcpu, FUNC5(vcpu, tmr), treg);

	FUNC1(vcpu);
	FUNC4();

	return val;
}