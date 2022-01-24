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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct TYPE_2__ {int level; int /*<<< orphan*/  irq; } ;
struct arch_timer_context {TYPE_1__ irq; struct kvm_vcpu* vcpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,struct arch_timer_context*) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct arch_timer_context*,int) ; 

__attribute__((used)) static void FUNC5(struct arch_timer_context *ctx)
{
	struct kvm_vcpu *vcpu = ctx->vcpu;
	bool phys_active = false;

	/*
	 * Update the timer output so that it is likely to match the
	 * state we're about to restore. If the timer expires between
	 * this point and the register restoration, we'll take the
	 * interrupt anyway.
	 */
	FUNC2(ctx->vcpu, FUNC1(ctx), ctx);

	if (FUNC0(vcpu->kvm))
		phys_active = FUNC3(vcpu, ctx->irq.irq);

	phys_active |= ctx->irq.level;

	FUNC4(ctx, phys_active);
}