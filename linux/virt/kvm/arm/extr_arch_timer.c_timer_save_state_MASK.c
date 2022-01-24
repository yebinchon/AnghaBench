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
struct arch_timer_cpu {int /*<<< orphan*/  enabled; } ;
struct arch_timer_context {int loaded; void* cnt_cval; void* cnt_ctl; int /*<<< orphan*/  vcpu; } ;
typedef  enum kvm_arch_timers { ____Placeholder_kvm_arch_timers } kvm_arch_timers ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  NR_KVM_TIMERS 130 
 int /*<<< orphan*/  SYS_CNTP_CTL ; 
 int /*<<< orphan*/  SYS_CNTP_CVAL ; 
 int /*<<< orphan*/  SYS_CNTV_CTL ; 
 int /*<<< orphan*/  SYS_CNTV_CVAL ; 
#define  TIMER_PTIMER 129 
#define  TIMER_VTIMER 128 
 int FUNC1 (struct arch_timer_context*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct arch_timer_context*) ; 
 struct arch_timer_cpu* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct arch_timer_context *ctx)
{
	struct arch_timer_cpu *timer = FUNC7(ctx->vcpu);
	enum kvm_arch_timers index = FUNC1(ctx);
	unsigned long flags;

	if (!timer->enabled)
		return;

	FUNC4(flags);

	if (!ctx->loaded)
		goto out;

	switch (index) {
	case TIMER_VTIMER:
		ctx->cnt_ctl = FUNC5(SYS_CNTV_CTL);
		ctx->cnt_cval = FUNC5(SYS_CNTV_CVAL);

		/* Disable the timer */
		FUNC8(0, SYS_CNTV_CTL);
		FUNC2();

		break;
	case TIMER_PTIMER:
		ctx->cnt_ctl = FUNC5(SYS_CNTP_CTL);
		ctx->cnt_cval = FUNC5(SYS_CNTP_CVAL);

		/* Disable the timer */
		FUNC8(0, SYS_CNTP_CTL);
		FUNC2();

		break;
	case NR_KVM_TIMERS:
		FUNC0();
	}

	FUNC6(ctx);

	ctx->loaded = false;
out:
	FUNC3(flags);
}