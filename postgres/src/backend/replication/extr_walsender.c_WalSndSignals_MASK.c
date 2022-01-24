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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PostgresSigHupHandler ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  StatementCancelHandler ; 
 int /*<<< orphan*/  WalSndLastCycleHandler ; 
 int /*<<< orphan*/  die ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  procsignal_sigusr1_handler ; 
 int /*<<< orphan*/  quickdie ; 

void
FUNC2(void)
{
	/* Set up signal handlers */
	FUNC1(SIGHUP, PostgresSigHupHandler);	/* set flag to read config
												 * file */
	FUNC1(SIGINT, StatementCancelHandler);	/* query cancel */
	FUNC1(SIGTERM, die);		/* request shutdown */
	FUNC1(SIGQUIT, quickdie);	/* hard crash time */
	FUNC0();		/* establishes SIGALRM handler */
	FUNC1(SIGPIPE, SIG_IGN);
	FUNC1(SIGUSR1, procsignal_sigusr1_handler);
	FUNC1(SIGUSR2, WalSndLastCycleHandler);	/* request a last cycle and
												 * shutdown */

	/* Reset some signals that are accepted by postmaster but not here */
	FUNC1(SIGCHLD, SIG_DFL);
}