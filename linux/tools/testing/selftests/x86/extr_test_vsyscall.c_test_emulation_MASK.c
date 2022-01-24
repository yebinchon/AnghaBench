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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTRAP ; 
 int X86_EFLAGS_TF ; 
 int FUNC0 () ; 
 int num_vsyscall_traps ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigtrap ; 
 int /*<<< orphan*/  vsyscall_map_x ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	time_t tmp;
	bool is_native;

	if (!vsyscall_map_x)
		return 0;

	FUNC1("[RUN]\tchecking that vsyscalls are emulated\n");
	FUNC3(SIGTRAP, sigtrap, 0);
	FUNC2(FUNC0() | X86_EFLAGS_TF);
	FUNC4(&tmp);
	FUNC2(FUNC0() & ~X86_EFLAGS_TF);

	/*
	 * If vsyscalls are emulated, we expect a single trap in the
	 * vsyscall page -- the call instruction will trap with RIP
	 * pointing to the entry point before emulation takes over.
	 * In native mode, we expect two traps, since whatever code
	 * the vsyscall page contains will be more than just a ret
	 * instruction.
	 */
	is_native = (num_vsyscall_traps > 1);

	FUNC1("[%s]\tvsyscalls are %s (%d instructions in vsyscall page)\n",
	       (is_native ? "FAIL" : "OK"),
	       (is_native ? "native" : "emulated"),
	       (int)num_vsyscall_traps);

	return is_native;
}