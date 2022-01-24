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
 int /*<<< orphan*/  SA_ONSTACK ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGSTKSZ ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int X86_EFLAGS_TF ; 
 int /*<<< orphan*/  altstack_data ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigill ; 
 int /*<<< orphan*/  sigsegv_or_sigbus ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sigtrap ; 
 scalar_t__ sigtrap_consecutive_syscalls ; 

int FUNC7()
{
	stack_t stack = {
		.ss_sp = altstack_data,
		.ss_size = SIGSTKSZ,
	};
	if (FUNC5(&stack, NULL) != 0)
		FUNC0(1, "sigaltstack");

	FUNC4(SIGSEGV, sigsegv_or_sigbus, SA_ONSTACK);
	/*
	 * The actual exception can vary.  On Atom CPUs, we get #SS
	 * instead of #PF when the vDSO fails to access the stack when
	 * ESP is too close to 2^32, and #SS causes SIGBUS.
	 */
	FUNC4(SIGBUS, sigsegv_or_sigbus, SA_ONSTACK);
	FUNC4(SIGILL, sigill, SA_ONSTACK);

	/*
	 * Exercise another nasty special case.  The 32-bit SYSCALL
	 * and SYSENTER instructions (even in compat mode) each
	 * clobber one register.  A Linux system call has a syscall
	 * number and six arguments, and the user stack pointer
	 * needs to live in some register on return.  That means
	 * that we need eight registers, but SYSCALL and SYSENTER
	 * only preserve seven registers.  As a result, one argument
	 * ends up on the stack.  The stack is user memory, which
	 * means that the kernel can fail to read it.
	 *
	 * The 32-bit fast system calls don't have a defined ABI:
	 * we're supposed to invoke them through the vDSO.  So we'll
	 * fudge it: we set all regs to invalid pointer values and
	 * invoke the entry instruction.  The return will fail no
	 * matter what, and we completely lose our program state,
	 * but we can fix it up with a signal handler.
	 */

	FUNC2("[RUN]\tSYSENTER with invalid state\n");
	if (FUNC6(jmpbuf, 1) == 0) {
		asm volatile (
			"movl $-1, %%eax\n\t"
			"movl $-1, %%ebx\n\t"
			"movl $-1, %%ecx\n\t"
			"movl $-1, %%edx\n\t"
			"movl $-1, %%esi\n\t"
			"movl $-1, %%edi\n\t"
			"movl $-1, %%ebp\n\t"
			"movl $-1, %%esp\n\t"
			"sysenter"
			: : : "memory", "flags");
	}

	FUNC2("[RUN]\tSYSCALL with invalid state\n");
	if (FUNC6(jmpbuf, 1) == 0) {
		asm volatile (
			"movl $-1, %%eax\n\t"
			"movl $-1, %%ebx\n\t"
			"movl $-1, %%ecx\n\t"
			"movl $-1, %%edx\n\t"
			"movl $-1, %%esi\n\t"
			"movl $-1, %%edi\n\t"
			"movl $-1, %%ebp\n\t"
			"movl $-1, %%esp\n\t"
			"syscall\n\t"
			"ud2"		/* make sure we recover cleanly */
			: : : "memory", "flags");
	}

	FUNC2("[RUN]\tSYSENTER with TF and invalid state\n");
	FUNC4(SIGTRAP, sigtrap, SA_ONSTACK);

	if (FUNC6(jmpbuf, 1) == 0) {
		sigtrap_consecutive_syscalls = 0;
		FUNC3(FUNC1() | X86_EFLAGS_TF);
		asm volatile (
			"movl $-1, %%eax\n\t"
			"movl $-1, %%ebx\n\t"
			"movl $-1, %%ecx\n\t"
			"movl $-1, %%edx\n\t"
			"movl $-1, %%esi\n\t"
			"movl $-1, %%edi\n\t"
			"movl $-1, %%ebp\n\t"
			"movl $-1, %%esp\n\t"
			"sysenter"
			: : : "memory", "flags");
	}
	FUNC3(FUNC1() & ~X86_EFLAGS_TF);

	FUNC2("[RUN]\tSYSCALL with TF and invalid state\n");
	if (FUNC6(jmpbuf, 1) == 0) {
		sigtrap_consecutive_syscalls = 0;
		FUNC3(FUNC1() | X86_EFLAGS_TF);
		asm volatile (
			"movl $-1, %%eax\n\t"
			"movl $-1, %%ebx\n\t"
			"movl $-1, %%ecx\n\t"
			"movl $-1, %%edx\n\t"
			"movl $-1, %%esi\n\t"
			"movl $-1, %%edi\n\t"
			"movl $-1, %%ebp\n\t"
			"movl $-1, %%esp\n\t"
			"syscall\n\t"
			"ud2"		/* make sure we recover cleanly */
			: : : "memory", "flags");
	}
	FUNC3(FUNC1() & ~X86_EFLAGS_TF);

	return 0;
}