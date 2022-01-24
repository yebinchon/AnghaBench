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
struct sigaction {int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; } ;
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGSEGV ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int g_vsyscall ; 
 int /*<<< orphan*/  FUNC5 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigaction_SIGSEGV ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	pid_t pid;
	int wstatus;

	pid = FUNC3();
	if (pid < 0) {
		FUNC4(stderr, "fork, errno %d\n", errno);
		FUNC2(1);
	}
	if (pid == 0) {
		struct rlimit rlim = {0, 0};
		(void)FUNC6(RLIMIT_CORE, &rlim);

		/* Hide "segfault at ffffffffff600000" messages. */
		struct sigaction act;
		FUNC5(&act, 0, sizeof(struct sigaction));
		act.sa_flags = SA_SIGINFO;
		act.sa_sigaction = sigaction_SIGSEGV;
		(void)FUNC7(SIGSEGV, &act, NULL);

		*(volatile int *)0xffffffffff600000UL;
		FUNC2(0);
	}
	FUNC8(pid, &wstatus, 0);
	if (FUNC1(wstatus) && FUNC0(wstatus) == 0) {
		g_vsyscall = true;
	}
}