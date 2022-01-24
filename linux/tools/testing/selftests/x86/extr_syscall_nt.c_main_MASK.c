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
 int /*<<< orphan*/  SIGTRAP ; 
 int X86_EFLAGS_NT ; 
 int X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigtrap ; 

int FUNC3(void)
{
	FUNC1("[RUN]\tSet NT and issue a syscall\n");
	FUNC0(X86_EFLAGS_NT);

	/*
	 * Now try it again with TF set -- TF forces returns via IRET in all
	 * cases except non-ptregs-using 64-bit full fast path syscalls.
	 */

	FUNC2(SIGTRAP, sigtrap, 0);

	FUNC1("[RUN]\tSet NT|TF and issue a syscall\n");
	FUNC0(X86_EFLAGS_NT | X86_EFLAGS_TF);

	return nerrs == 0 ? 0 : 1;
}