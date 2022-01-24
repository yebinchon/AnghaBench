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
struct timer_map {int /*<<< orphan*/  emul_ptimer; int /*<<< orphan*/  direct_ptimer; int /*<<< orphan*/  direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_cpu {int /*<<< orphan*/  bg_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct timer_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct arch_timer_cpu* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu)
{
	struct arch_timer_cpu *timer = FUNC4(vcpu);
	struct timer_map map;

	FUNC0(vcpu, &map);

	/*
	 * If no timers are capable of raising interrupts (disabled or
	 * masked), then there's no more work for us to do.
	 */
	if (!FUNC2(map.direct_vtimer) &&
	    !FUNC2(map.direct_ptimer) &&
	    !FUNC2(map.emul_ptimer))
		return;

	/*
	 * At least one guest time will expire. Schedule a background timer.
	 * Set the earliest expiration time among the guest timers.
	 */
	FUNC3(&timer->bg_timer, FUNC1(vcpu));
}