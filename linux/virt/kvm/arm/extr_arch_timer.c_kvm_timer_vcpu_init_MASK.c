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
struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {void* function; } ;
struct arch_timer_cpu {TYPE_2__ bg_timer; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct arch_timer_context {struct kvm_vcpu* vcpu; int /*<<< orphan*/  host_timer_irq_flags; int /*<<< orphan*/  host_timer_irq; TYPE_1__ irq; TYPE_2__ hrtimer; scalar_t__ cntvoff; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 TYPE_4__ default_ptimer_irq ; 
 TYPE_3__ default_vtimer_irq ; 
 int /*<<< orphan*/  host_ptimer_irq ; 
 int /*<<< orphan*/  host_ptimer_irq_flags ; 
 int /*<<< orphan*/  host_vtimer_irq ; 
 int /*<<< orphan*/  host_vtimer_irq_flags ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* kvm_bg_timer_expire ; 
 void* kvm_hrtimer_expire ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 struct arch_timer_context* FUNC3 (struct kvm_vcpu*) ; 
 struct arch_timer_cpu* FUNC4 (struct kvm_vcpu*) ; 
 struct arch_timer_context* FUNC5 (struct kvm_vcpu*) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	struct arch_timer_cpu *timer = FUNC4(vcpu);
	struct arch_timer_context *vtimer = FUNC5(vcpu);
	struct arch_timer_context *ptimer = FUNC3(vcpu);

	/* Synchronize cntvoff across all vtimers of a VM. */
	FUNC2(vcpu, FUNC1());
	ptimer->cntvoff = 0;

	FUNC0(&timer->bg_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	timer->bg_timer.function = kvm_bg_timer_expire;

	FUNC0(&vtimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	FUNC0(&ptimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	vtimer->hrtimer.function = kvm_hrtimer_expire;
	ptimer->hrtimer.function = kvm_hrtimer_expire;

	vtimer->irq.irq = default_vtimer_irq.irq;
	ptimer->irq.irq = default_ptimer_irq.irq;

	vtimer->host_timer_irq = host_vtimer_irq;
	ptimer->host_timer_irq = host_ptimer_irq;

	vtimer->host_timer_irq_flags = host_vtimer_irq_flags;
	ptimer->host_timer_irq_flags = host_ptimer_irq_flags;

	vtimer->vcpu = vcpu;
	ptimer->vcpu = vcpu;
}