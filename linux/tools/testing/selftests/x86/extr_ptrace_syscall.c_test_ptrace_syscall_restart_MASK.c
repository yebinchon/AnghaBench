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
struct user_regs_struct {scalar_t__ user_syscall_nr; int user_arg0; int user_arg1; int user_arg2; int user_arg3; int user_arg4; int user_arg5; scalar_t__ user_ax; scalar_t__ user_ip; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  PTRACE_GETREGS ; 
 int /*<<< orphan*/  PTRACE_SETREGS ; 
 int /*<<< orphan*/  PTRACE_SYSEMU ; 
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 int /*<<< orphan*/  SIGSTOP ; 
 scalar_t__ SYS_getpid ; 
 scalar_t__ SYS_gettid ; 
 int /*<<< orphan*/  SYS_tgkill ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct user_regs_struct*) ; 
 scalar_t__ FUNC9 (scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
	FUNC7("[RUN]\tptrace-induced syscall restart\n");
	pid_t chld = FUNC5();
	if (chld < 0)
		FUNC4(1, "fork");

	if (chld == 0) {
		if (FUNC8(PTRACE_TRACEME, 0, 0, 0) != 0)
			FUNC4(1, "PTRACE_TRACEME");

		pid_t pid = FUNC6(), tid = FUNC9(SYS_gettid);

		FUNC7("\tChild will make one syscall\n");
		FUNC9(SYS_tgkill, pid, tid, SIGSTOP);

		FUNC9(SYS_gettid, 10, 11, 12, 13, 14, 15);
		FUNC3(0);
	}

	int status;

	/* Wait for SIGSTOP. */
	if (FUNC11(chld, &status, 0) != chld || !FUNC2(status))
		FUNC4(1, "waitpid");

	struct user_regs_struct regs;

	FUNC7("[RUN]\tSYSEMU\n");
	if (FUNC8(PTRACE_SYSEMU, chld, 0, 0) != 0)
		FUNC4(1, "PTRACE_SYSEMU");
	FUNC10(chld);

	if (FUNC8(PTRACE_GETREGS, chld, 0, &regs) != 0)
		FUNC4(1, "PTRACE_GETREGS");

	if (regs.user_syscall_nr != SYS_gettid ||
	    regs.user_arg0 != 10 || regs.user_arg1 != 11 ||
	    regs.user_arg2 != 12 || regs.user_arg3 != 13 ||
	    regs.user_arg4 != 14 || regs.user_arg5 != 15) {
		FUNC7("[FAIL]\tInitial args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\n", (unsigned long)regs.user_syscall_nr, (unsigned long)regs.user_arg0, (unsigned long)regs.user_arg1, (unsigned long)regs.user_arg2, (unsigned long)regs.user_arg3, (unsigned long)regs.user_arg4, (unsigned long)regs.user_arg5);
		nerrs++;
	} else {
		FUNC7("[OK]\tInitial nr and args are correct\n");
	}

	FUNC7("[RUN]\tRestart the syscall (ip = 0x%lx)\n",
	       (unsigned long)regs.user_ip);

	/*
	 * This does exactly what it appears to do if syscall is int80 or
	 * SYSCALL64.  For SYSCALL32 or SYSENTER, though, this is highly
	 * magical.  It needs to work so that ptrace and syscall restart
	 * work as expected.
	 */
	regs.user_ax = regs.user_syscall_nr;
	regs.user_ip -= 2;
	if (FUNC8(PTRACE_SETREGS, chld, 0, &regs) != 0)
		FUNC4(1, "PTRACE_SETREGS");

	if (FUNC8(PTRACE_SYSEMU, chld, 0, 0) != 0)
		FUNC4(1, "PTRACE_SYSEMU");
	FUNC10(chld);

	if (FUNC8(PTRACE_GETREGS, chld, 0, &regs) != 0)
		FUNC4(1, "PTRACE_GETREGS");

	if (regs.user_syscall_nr != SYS_gettid ||
	    regs.user_arg0 != 10 || regs.user_arg1 != 11 ||
	    regs.user_arg2 != 12 || regs.user_arg3 != 13 ||
	    regs.user_arg4 != 14 || regs.user_arg5 != 15) {
		FUNC7("[FAIL]\tRestart nr or args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\n", (unsigned long)regs.user_syscall_nr, (unsigned long)regs.user_arg0, (unsigned long)regs.user_arg1, (unsigned long)regs.user_arg2, (unsigned long)regs.user_arg3, (unsigned long)regs.user_arg4, (unsigned long)regs.user_arg5);
		nerrs++;
	} else {
		FUNC7("[OK]\tRestarted nr and args are correct\n");
	}

	FUNC7("[RUN]\tChange nr and args and restart the syscall (ip = 0x%lx)\n",
	       (unsigned long)regs.user_ip);

	regs.user_ax = SYS_getpid;
	regs.user_arg0 = 20;
	regs.user_arg1 = 21;
	regs.user_arg2 = 22;
	regs.user_arg3 = 23;
	regs.user_arg4 = 24;
	regs.user_arg5 = 25;
	regs.user_ip -= 2;

	if (FUNC8(PTRACE_SETREGS, chld, 0, &regs) != 0)
		FUNC4(1, "PTRACE_SETREGS");

	if (FUNC8(PTRACE_SYSEMU, chld, 0, 0) != 0)
		FUNC4(1, "PTRACE_SYSEMU");
	FUNC10(chld);

	if (FUNC8(PTRACE_GETREGS, chld, 0, &regs) != 0)
		FUNC4(1, "PTRACE_GETREGS");

	if (regs.user_syscall_nr != SYS_getpid ||
	    regs.user_arg0 != 20 || regs.user_arg1 != 21 || regs.user_arg2 != 22 ||
	    regs.user_arg3 != 23 || regs.user_arg4 != 24 || regs.user_arg5 != 25) {
		FUNC7("[FAIL]\tRestart nr or args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\n", (unsigned long)regs.user_syscall_nr, (unsigned long)regs.user_arg0, (unsigned long)regs.user_arg1, (unsigned long)regs.user_arg2, (unsigned long)regs.user_arg3, (unsigned long)regs.user_arg4, (unsigned long)regs.user_arg5);
		nerrs++;
	} else {
		FUNC7("[OK]\tReplacement nr and args are correct\n");
	}

	if (FUNC8(PTRACE_CONT, chld, 0, 0) != 0)
		FUNC4(1, "PTRACE_CONT");
	if (FUNC11(chld, &status, 0) != chld)
		FUNC4(1, "waitpid");
	if (!FUNC1(status) || FUNC0(status) != 0) {
		FUNC7("[FAIL]\tChild failed\n");
		nerrs++;
	} else {
		FUNC7("[OK]\tChild exited cleanly\n");
	}
}