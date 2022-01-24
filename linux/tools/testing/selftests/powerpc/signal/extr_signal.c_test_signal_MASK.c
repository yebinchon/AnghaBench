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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_ATTEMPT ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int fail ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_handler ; 
 long FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ signaled ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11()
{
	int i;
	struct sigaction act;
	pid_t ppid = FUNC5();
	pid_t pid;

	act.sa_handler = signal_handler;
	act.sa_flags = 0;
	FUNC8(&act.sa_mask);
	if (FUNC7(SIGUSR1, &act, NULL) < 0) {
		FUNC6("sigaction SIGUSR1");
		FUNC2(1);
	}
	if (FUNC7(SIGALRM, &act, NULL) < 0) {
		FUNC6("sigaction SIGALRM");
		FUNC2(1);
	}

	/* Don't do this for MAX_ATTEMPT, its simply too long */
	for(i  = 0; i < 1000; i++) {
		pid = FUNC3();
		if (pid == -1) {
			FUNC6("fork");
			FUNC2(1);
		}
		if (pid == 0) {
			FUNC9(ppid, SIGUSR1);
			FUNC2(1);
		} else {
			FUNC1(0); /* Disable any pending */
			FUNC1(2);
			while (!signaled && !fail)
				asm volatile("": : :"memory");
			if (!signaled) {
				FUNC4(stderr, "Didn't get signal from child\n");
				FUNC0(1); /* For the line number */
			}
			/* Otherwise we'll loop too fast and fork() will eventually fail */
			FUNC10(pid, NULL, 0);
		}
	}

	for (i = 0; i < MAX_ATTEMPT; i++) {
		long rc;

		FUNC1(0); /* Disable any pending */
		signaled = 0;
		FUNC1(TIMEOUT);
		rc = FUNC9(ppid, SIGUSR1);
		if (rc) {
			FUNC4(stderr, "(%d) Fail reason: %d rc=0x%lx",
					i, fail, rc);
			FUNC0(1); /* For the line number */
		}
		while (!signaled && !fail)
			asm volatile("": : :"memory");
		if (!signaled) {
			FUNC4(stderr, "(%d) Fail reason: %d rc=0x%lx",
					i, fail, rc);
			FUNC0(1); /* For the line number */
		}
	}

	return 0;
}