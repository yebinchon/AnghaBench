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
struct timer_map {struct arch_timer_context* direct_ptimer; struct arch_timer_context* direct_vtimer; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct arch_timer_context {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct timer_map*) ; 
 int /*<<< orphan*/  has_gic_active_state ; 
 int host_vtimer_irq ; 
 scalar_t__ FUNC2 (struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int,struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct kvm_vcpu *vcpu = *(struct kvm_vcpu **)dev_id;
	struct arch_timer_context *ctx;
	struct timer_map map;

	/*
	 * We may see a timer interrupt after vcpu_put() has been called which
	 * sets the CPU's vcpu pointer to NULL, because even though the timer
	 * has been disabled in timer_save_state(), the hardware interrupt
	 * signal may not have been retired from the interrupt controller yet.
	 */
	if (!vcpu)
		return IRQ_HANDLED;

	FUNC1(vcpu, &map);

	if (irq == host_vtimer_irq)
		ctx = map.direct_vtimer;
	else
		ctx = map.direct_ptimer;

	if (FUNC2(ctx))
		FUNC3(vcpu, true, ctx);

	if (FUNC5(vcpu->kvm) &&
	    !FUNC4(&has_gic_active_state))
		FUNC0(host_vtimer_irq);

	return IRQ_HANDLED;
}