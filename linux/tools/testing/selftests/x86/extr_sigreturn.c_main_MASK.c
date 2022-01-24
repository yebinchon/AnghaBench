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
struct TYPE_3__ {int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_sp; } ;
typedef  TYPE_1__ stack_t ;

/* Variables and functions */
 unsigned short FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SA_ONSTACK ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGSTKSZ ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  altstack_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ gdt_data16_idx ; 
 scalar_t__ gdt_npdata32_idx ; 
 unsigned short ldt_nonexistent_sel ; 
 int npcode32_sel ; 
 unsigned short npdata32_sel ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int sig_corrupt_final_ss ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigtrap ; 
 int /*<<< orphan*/  sigusr1 ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned short,int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int,int,int) ; 

int FUNC9()
{
	int total_nerrs = 0;
	unsigned short my_cs, my_ss;

	asm volatile ("mov %%cs,%0" : "=r" (my_cs));
	asm volatile ("mov %%ss,%0" : "=r" (my_ss));
	FUNC4();

	stack_t stack = {
		.ss_sp = altstack_data,
		.ss_size = SIGSTKSZ,
	};
	if (FUNC5(&stack, NULL) != 0)
		FUNC2(1, "sigaltstack");

	FUNC3(SIGUSR1, sigusr1, 0);
	FUNC3(SIGTRAP, sigtrap, SA_ONSTACK);

	/* Easy cases: return to a 32-bit SS in each possible CS bitness. */
	total_nerrs += FUNC8(64, false, -1);
	total_nerrs += FUNC8(32, false, -1);
	total_nerrs += FUNC8(16, false, -1);

	/*
	 * Test easy espfix cases: return to a 16-bit LDT SS in each possible
	 * CS bitness.  NB: with a long mode CS, the SS bitness is irrelevant.
	 *
	 * This catches the original missing-espfix-on-64-bit-kernels issue
	 * as well as CVE-2014-8134.
	 */
	total_nerrs += FUNC8(64, true, -1);
	total_nerrs += FUNC8(32, true, -1);
	total_nerrs += FUNC8(16, true, -1);

	if (gdt_data16_idx) {
		/*
		 * For performance reasons, Linux skips espfix if SS points
		 * to the GDT.  If we were able to allocate a 16-bit SS in
		 * the GDT, see if it leaks parts of the kernel stack pointer.
		 *
		 * This tests for CVE-2014-8133.
		 */
		total_nerrs += FUNC8(64, true,
						    FUNC0(gdt_data16_idx));
		total_nerrs += FUNC8(32, true,
						    FUNC0(gdt_data16_idx));
		total_nerrs += FUNC8(16, true,
						    FUNC0(gdt_data16_idx));
	}

#ifdef __x86_64__
	/* Nasty ABI case: check SS corruption handling. */
	sig_corrupt_final_ss = 1;
	total_nerrs += FUNC8(32, false, -1);
	total_nerrs += FUNC8(32, true, -1);
	sig_corrupt_final_ss = 0;
#endif

	/*
	 * We're done testing valid sigreturn cases.  Now we test states
	 * for which sigreturn itself will succeed but the subsequent
	 * entry to user mode will fail.
	 *
	 * Depending on the failure mode and the kernel bitness, these
	 * entry failures can generate SIGSEGV, SIGBUS, or SIGILL.
	 */
	FUNC1(SIGTRAP);
	FUNC3(SIGSEGV, sigtrap, SA_ONSTACK);
	FUNC3(SIGBUS, sigtrap, SA_ONSTACK);
	FUNC3(SIGILL, sigtrap, SA_ONSTACK);  /* 32-bit kernels do this */

	/* Easy failures: invalid SS, resulting in #GP(0) */
	FUNC6(64, ldt_nonexistent_sel, -1);
	FUNC6(32, ldt_nonexistent_sel, -1);
	FUNC6(16, ldt_nonexistent_sel, -1);

	/* These fail because SS isn't a data segment, resulting in #GP(SS) */
	FUNC6(64, my_cs, -1);
	FUNC6(32, my_cs, -1);
	FUNC6(16, my_cs, -1);

	/* Try to return to a not-present code segment, triggering #NP(SS). */
	FUNC6(32, my_ss, npcode32_sel);

	/*
	 * Try to return to a not-present but otherwise valid data segment.
	 * This will cause IRET to fail with #SS on the espfix stack.  This
	 * exercises CVE-2014-9322.
	 *
	 * Note that, if espfix is enabled, 64-bit Linux will lose track
	 * of the actual cause of failure and report #GP(0) instead.
	 * This would be very difficult for Linux to avoid, because
	 * espfix64 causes IRET failures to be promoted to #DF, so the
	 * original exception frame is never pushed onto the stack.
	 */
	FUNC6(32, npdata32_sel, -1);

	/*
	 * Try to return to a not-present but otherwise valid data
	 * segment without invoking espfix.  Newer kernels don't allow
	 * this to happen in the first place.  On older kernels, though,
	 * this can trigger CVE-2014-9322.
	 */
	if (gdt_npdata32_idx)
		FUNC6(32, FUNC0(gdt_npdata32_idx), -1);

#ifdef __x86_64__
	total_nerrs += FUNC7();
#endif

	return total_nerrs ? 1 : 0;
}