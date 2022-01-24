#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_map {scalar_t__ emul_ptimer; TYPE_1__* direct_ptimer; TYPE_1__* direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;
struct arch_timer_cpu {int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  cntvoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct timer_map*) ; 
 int /*<<< orphan*/  has_gic_active_state ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 
 struct arch_timer_cpu* FUNC9 (struct kvm_vcpu*) ; 

void FUNC10(struct kvm_vcpu *vcpu)
{
	struct arch_timer_cpu *timer = FUNC9(vcpu);
	struct timer_map map;

	if (FUNC8(!timer->enabled))
		return;

	FUNC0(vcpu, &map);

	if (FUNC5(&has_gic_active_state)) {
		FUNC2(map.direct_vtimer);
		if (map.direct_ptimer)
			FUNC2(map.direct_ptimer);
	} else {
		FUNC3(vcpu);
	}

	FUNC4(map.direct_vtimer->cntvoff);

	FUNC1(vcpu);

	FUNC7(map.direct_vtimer);
	if (map.direct_ptimer)
		FUNC7(map.direct_ptimer);

	if (map.emul_ptimer)
		FUNC6(map.emul_ptimer);
}