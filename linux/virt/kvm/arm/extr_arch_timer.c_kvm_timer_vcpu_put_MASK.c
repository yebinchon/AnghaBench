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
struct timer_map {TYPE_1__* emul_ptimer; scalar_t__ direct_ptimer; scalar_t__ direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_cpu {int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  hrtimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct timer_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 struct arch_timer_cpu* FUNC8 (struct kvm_vcpu*) ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	struct arch_timer_cpu *timer = FUNC8(vcpu);
	struct timer_map map;

	if (FUNC7(!timer->enabled))
		return;

	FUNC0(vcpu, &map);

	FUNC6(map.direct_vtimer);
	if (map.direct_ptimer)
		FUNC6(map.direct_ptimer);

	/*
	 * Cancel soft timer emulation, because the only case where we
	 * need it after a vcpu_put is in the context of a sleeping VCPU, and
	 * in that case we already factor in the deadline for the physical
	 * timer when scheduling the bg_timer.
	 *
	 * In any case, we re-schedule the hrtimer for the physical timer when
	 * coming back to the VCPU thread in kvm_timer_vcpu_load().
	 */
	if (map.emul_ptimer)
		FUNC4(&map.emul_ptimer->hrtimer);

	if (FUNC5(FUNC1(vcpu)))
		FUNC2(vcpu);

	/*
	 * The kernel may decide to run userspace after calling vcpu_put, so
	 * we reset cntvoff to 0 to ensure a consistent read between user
	 * accesses to the virtual counter and kernel access to the physical
	 * counter of non-VHE case. For VHE, the virtual counter uses a fixed
	 * virtual offset of zero, so no need to zero CNTVOFF_EL2 register.
	 */
	FUNC3(0);
}