#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timer_map {TYPE_5__* emul_ptimer; TYPE_4__* direct_ptimer; TYPE_2__* direct_vtimer; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct arch_timer_cpu {scalar_t__ enabled; } ;
struct TYPE_14__ {scalar_t__ cnt_ctl; } ;
struct TYPE_13__ {int /*<<< orphan*/  hrtimer; } ;
struct TYPE_11__ {int /*<<< orphan*/  irq; } ;
struct TYPE_12__ {TYPE_3__ irq; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq; } ;
struct TYPE_10__ {TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct timer_map*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (struct kvm_vcpu*) ; 
 struct arch_timer_cpu* FUNC6 (struct kvm_vcpu*) ; 
 TYPE_6__* FUNC7 (struct kvm_vcpu*) ; 

int FUNC8(struct kvm_vcpu *vcpu)
{
	struct arch_timer_cpu *timer = FUNC6(vcpu);
	struct timer_map map;

	FUNC0(vcpu, &map);

	/*
	 * The bits in CNTV_CTL are architecturally reset to UNKNOWN for ARMv8
	 * and to 0 for ARMv7.  We provide an implementation that always
	 * resets the timer to be disabled and unmasked and is compliant with
	 * the ARMv7 architecture.
	 */
	FUNC7(vcpu)->cnt_ctl = 0;
	FUNC5(vcpu)->cnt_ctl = 0;

	if (timer->enabled) {
		FUNC2(vcpu, false, FUNC7(vcpu));
		FUNC2(vcpu, false, FUNC5(vcpu));

		if (FUNC1(vcpu->kvm)) {
			FUNC3(vcpu, map.direct_vtimer->irq.irq);
			if (map.direct_ptimer)
				FUNC3(vcpu, map.direct_ptimer->irq.irq);
		}
	}

	if (map.emul_ptimer)
		FUNC4(&map.emul_ptimer->hrtimer);

	return 0;
}