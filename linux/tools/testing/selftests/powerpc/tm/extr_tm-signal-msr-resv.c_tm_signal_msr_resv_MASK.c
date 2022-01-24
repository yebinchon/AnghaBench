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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_segv ; 
 int /*<<< orphan*/  signal_usr1 ; 

int FUNC8()
{
	struct sigaction act;

	FUNC0(!FUNC2());

	act.sa_sigaction = signal_usr1;
	FUNC6(&act.sa_mask);
	act.sa_flags = SA_SIGINFO;
	if (FUNC5(SIGUSR1, &act, NULL) < 0) {
		FUNC3("sigaction sigusr1");
		FUNC1(1);
	}
	if (FUNC7(SIGSEGV, signal_segv) == SIG_ERR)
		FUNC1(1);

	FUNC4(SIGUSR1);

	/* We shouldn't get here as we exit in the segv handler */
	return 1;
}