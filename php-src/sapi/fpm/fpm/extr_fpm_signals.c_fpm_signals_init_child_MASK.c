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
struct sigaction {int /*<<< orphan*/ * sa_handler; int /*<<< orphan*/  sa_flags; } ;
typedef  int /*<<< orphan*/  act_dfl ;
typedef  int /*<<< orphan*/  act ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/ * SIG_DFL ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sig_soft_quit ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sp ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5() /* {{{ */
{
	struct sigaction act, act_dfl;

	FUNC1(&act, 0, sizeof(act));
	FUNC1(&act_dfl, 0, sizeof(act_dfl));

	act.sa_handler = &sig_soft_quit;
	act.sa_flags |= SA_RESTART;

	act_dfl.sa_handler = SIG_DFL;

	FUNC0(sp[0]);
	FUNC0(sp[1]);

	if (0 > FUNC2(SIGTERM,  &act_dfl,  0) ||
	    0 > FUNC2(SIGINT,   &act_dfl,  0) ||
	    0 > FUNC2(SIGUSR1,  &act_dfl,  0) ||
	    0 > FUNC2(SIGUSR2,  &act_dfl,  0) ||
	    0 > FUNC2(SIGCHLD,  &act_dfl,  0) ||
	    0 > FUNC2(SIGQUIT,  &act,      0)) {

		FUNC4(ZLOG_SYSERROR, "failed to init child signals: sigaction()");
		return -1;
	}

	FUNC3();
	return 0;
}