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
struct kvm_vcpu {int dummy; } ;
struct arch_timer_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  has_gic_active_state ; 
 int /*<<< orphan*/  host_vtimer_irq ; 
 int /*<<< orphan*/  host_vtimer_irq_flags ; 
 int /*<<< orphan*/  FUNC1 (struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int,struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct arch_timer_context*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct arch_timer_context* FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct arch_timer_context *vtimer = FUNC5(vcpu);

	if (!FUNC1(vtimer)) {
		FUNC2(vcpu, false, vtimer);
		if (FUNC4(&has_gic_active_state))
			FUNC3(vtimer, false);
		else
			FUNC0(host_vtimer_irq, host_vtimer_irq_flags);
	}
}