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
typedef  long pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_ATTEMPT ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int broken ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_usr1 ; 
 long FUNC8 (long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vms ; 

__attribute__((used)) static int FUNC9()
{
	struct sigaction act;
	int i;
	long rc;
	pid_t pid = FUNC3();

	FUNC1(!FUNC4());

	act.sa_sigaction = signal_usr1;
	FUNC7(&act.sa_mask);
	act.sa_flags = SA_SIGINFO;
	if (FUNC6(SIGUSR1, &act, NULL) < 0) {
		FUNC5("sigaction sigusr1");
		FUNC2(1);
	}

	i = 0;
	while (i < MAX_ATTEMPT && !broken) {
		/*
		 * tm_signal_self_context_load will set both first and second
		 * contexts accordingly to the values passed through non-NULL
		 * array pointers to it, in that case 'vms', and invoke the
		 * signal handler installed for SIGUSR1.
		 */
		rc = FUNC8(pid, NULL, NULL, vms, NULL);
		FUNC0(rc != pid);
		i++;
	}

	return (broken);
}