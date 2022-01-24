#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_map {TYPE_4__* direct_ptimer; TYPE_2__* direct_vtimer; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct arch_timer_cpu {int enabled; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;
struct TYPE_8__ {TYPE_3__ irq; int /*<<< orphan*/  host_timer_irq; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {TYPE_1__ irq; int /*<<< orphan*/  host_timer_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct timer_map*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_arch_timer_get_input_level ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 struct arch_timer_cpu* FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct kvm_vcpu *vcpu)
{
	struct arch_timer_cpu *timer = FUNC5(vcpu);
	struct timer_map map;
	int ret;

	if (timer->enabled)
		return 0;

	/* Without a VGIC we do not map virtual IRQs to physical IRQs */
	if (!FUNC1(vcpu->kvm))
		goto no_vgic;

	if (!FUNC6(vcpu->kvm))
		return -ENODEV;

	if (!FUNC4(vcpu)) {
		FUNC2("incorrectly configured timer irqs\n");
		return -EINVAL;
	}

	FUNC0(vcpu, &map);

	ret = FUNC3(vcpu,
				    map.direct_vtimer->host_timer_irq,
				    map.direct_vtimer->irq.irq,
				    kvm_arch_timer_get_input_level);
	if (ret)
		return ret;

	if (map.direct_ptimer) {
		ret = FUNC3(vcpu,
					    map.direct_ptimer->host_timer_irq,
					    map.direct_ptimer->irq.irq,
					    kvm_arch_timer_get_input_level);
	}

	if (ret)
		return ret;

no_vgic:
	timer->enabled = 1;
	return 0;
}