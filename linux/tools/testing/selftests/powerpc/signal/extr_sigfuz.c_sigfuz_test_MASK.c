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
typedef  int /*<<< orphan*/  ucontext_t ;
struct sigaction {int /*<<< orphan*/  sa_sigaction; void* sa_flags; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int ARG_FOREVER ; 
 int ARG_MESS_WITH_TM_AT ; 
 void* SA_SIGINFO ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int args ; 
 int count_max ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seg_signal_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tmp_uc ; 
 int /*<<< orphan*/  trap_signal_handler ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC12(void *thrid)
{
	struct sigaction trap_sa, seg_sa;
	int ret, i = 0;
	pid_t t;

	tmp_uc = FUNC4(sizeof(ucontext_t));

	/* Main signal handler */
	trap_sa.sa_flags = SA_SIGINFO;
	trap_sa.sa_sigaction = trap_signal_handler;

	/* SIGSEGV signal handler */
	seg_sa.sa_flags = SA_SIGINFO;
	seg_sa.sa_sigaction = seg_signal_handler;

	/* The signal handler will enable MSR_TS */
	FUNC8(SIGUSR1, &trap_sa, NULL);

	/* If it does not crash, it will segfault, avoid it to retest */
	FUNC8(SIGSEGV, &seg_sa, NULL);

	while (i < count_max) {
		t = FUNC1();

		if (t == 0) {
			/* Once seed per process */
			FUNC9(FUNC10(NULL) + FUNC3());
			if (args & ARG_MESS_WITH_TM_AT) {
				if (FUNC6(2))
					FUNC5();
			}
			FUNC7(SIGUSR1);
			FUNC0(0);
		} else {
			FUNC11(t, &ret, 0);
		}
		if (!(args & ARG_FOREVER))
			i++;
	}

	/* If not freed already, free now */
	if (tmp_uc) {
		FUNC2(tmp_uc);
		tmp_uc = NULL;
	}

	return NULL;
}