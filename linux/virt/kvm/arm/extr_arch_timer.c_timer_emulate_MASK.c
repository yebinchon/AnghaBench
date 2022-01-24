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
struct TYPE_2__ {int level; } ;
struct arch_timer_context {int /*<<< orphan*/  hrtimer; int /*<<< orphan*/  vcpu; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct arch_timer_context*) ; 
 int FUNC2 (struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct arch_timer_context*,int) ; 

__attribute__((used)) static void FUNC7(struct arch_timer_context *ctx)
{
	bool should_fire = FUNC2(ctx);

	FUNC6(ctx, should_fire);

	if (should_fire != ctx->irq.level) {
		FUNC3(ctx->vcpu, should_fire, ctx);
		return;
	}

	/*
	 * If the timer can fire now, we don't need to have a soft timer
	 * scheduled for the future.  If the timer cannot fire at all,
	 * then we also don't need a soft timer.
	 */
	if (!FUNC1(ctx)) {
		FUNC4(&ctx->hrtimer);
		return;
	}

	FUNC5(&ctx->hrtimer, FUNC0(ctx));
}