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
struct sigaction {scalar_t__ sa_restorer; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; scalar_t__ sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int SIGALRM ; 
 int SIGSEGV ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  signal_handler ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	int r, rs;
	struct sigaction newact;
	struct sigaction oldact;

	/* #PF is mapped to sigsegv */
	int signum  = SIGSEGV;

	newact.sa_handler = 0;
	newact.sa_sigaction = signal_handler;

	/*sigset_t - signals to block while in the handler */
	/* get the old signal mask. */
	rs = FUNC2(SIG_SETMASK, 0, &newact.sa_mask);
	FUNC0(rs == 0);

	/* call sa_sigaction, not sa_handler*/
	newact.sa_flags = SA_SIGINFO;

	newact.sa_restorer = 0;  /* void(*)(), obsolete */
	r = FUNC1(signum, &newact, &oldact);
	r = FUNC1(SIGALRM, &newact, &oldact);
	FUNC0(r == 0);
}