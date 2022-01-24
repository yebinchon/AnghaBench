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

/* Variables and functions */
 int /*<<< orphan*/  ARCH_SET_GS ; 
 int /*<<< orphan*/  FUTEX_WAIT ; 
 int /*<<< orphan*/  FUTEX_WAKE ; 
 int /*<<< orphan*/  GS ; 
 unsigned long HARD_ZERO ; 
 int /*<<< orphan*/  SYS_arch_prctl ; 
 int /*<<< orphan*/  SYS_futex ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ftx ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long remote_base ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,unsigned long,...) ; 

__attribute__((used)) static void FUNC4(unsigned long local,
				 unsigned short force_sel,
				 unsigned long remote)
{
	unsigned long base;
	unsigned short sel_pre_sched, sel_post_sched;

	bool hard_zero = false;
	if (local == HARD_ZERO) {
		hard_zero = true;
		local = 0;
	}

	FUNC1("[RUN]\tARCH_SET_GS(0x%lx)%s, then schedule to 0x%lx\n",
	       local, hard_zero ? " and clear gs" : "", remote);
	if (force_sel)
		FUNC1("\tBefore schedule, set selector to 0x%hx\n", force_sel);
	if (FUNC3(SYS_arch_prctl, &ARCH_SET_GS, local) != 0)
		FUNC0(1, "ARCH_SET_GS");
	if (hard_zero)
		asm volatile ("mov %0, %%gs" : : "rm" ((unsigned short)0));

	if (FUNC2(GS) != local) {
		nerrs++;
		FUNC1("[FAIL]\tGSBASE wasn't set as expected\n");
	}

	if (force_sel) {
		asm volatile ("mov %0, %%gs" : : "rm" (force_sel));
		sel_pre_sched = force_sel;
		local = FUNC2(GS);

		/*
		 * Signal delivery seems to mess up weird selectors.  Put it
		 * back.
		 */
		asm volatile ("mov %0, %%gs" : : "rm" (force_sel));
	} else {
		asm volatile ("mov %%gs, %0" : "=rm" (sel_pre_sched));
	}

	remote_base = remote;
	ftx = 1;
	FUNC3(SYS_futex, &ftx, FUTEX_WAKE, 0, NULL, NULL, 0);
	while (ftx != 0)
		FUNC3(SYS_futex, &ftx, FUTEX_WAIT, 1, NULL, NULL, 0);

	asm volatile ("mov %%gs, %0" : "=rm" (sel_post_sched));
	base = FUNC2(GS);
	if (base == local && sel_pre_sched == sel_post_sched) {
		FUNC1("[OK]\tGS/BASE remained 0x%hx/0x%lx\n",
		       sel_pre_sched, local);
	} else {
		nerrs++;
		FUNC1("[FAIL]\tGS/BASE changed from 0x%hx/0x%lx to 0x%hx/0x%lx\n",
		       sel_pre_sched, local, sel_post_sched, base);
	}
}