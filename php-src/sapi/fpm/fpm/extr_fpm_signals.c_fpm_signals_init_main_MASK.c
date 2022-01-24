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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  act ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  ZLOG_DEBUG ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sig_handler ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

int FUNC8() /* {{{ */
{
	struct sigaction act;

	if (0 > FUNC6(AF_UNIX, SOCK_STREAM, 0, sp)) {
		FUNC7(ZLOG_SYSERROR, "failed to init signals: socketpair()");
		return -1;
	}

	if (0 > FUNC1(sp[0], 0) || 0 > FUNC1(sp[1], 0)) {
		FUNC7(ZLOG_SYSERROR, "failed to init signals: fd_set_blocked()");
		return -1;
	}

	if (0 > FUNC0(sp[0], F_SETFD, FD_CLOEXEC) || 0 > FUNC0(sp[1], F_SETFD, FD_CLOEXEC)) {
		FUNC7(ZLOG_SYSERROR, "falied to init signals: fcntl(F_SETFD, FD_CLOEXEC)");
		return -1;
	}

	FUNC3(&act, 0, sizeof(act));
	act.sa_handler = sig_handler;
	FUNC5(&act.sa_mask);

	if (0 > FUNC4(SIGTERM,  &act, 0) ||
	    0 > FUNC4(SIGINT,   &act, 0) ||
	    0 > FUNC4(SIGUSR1,  &act, 0) ||
	    0 > FUNC4(SIGUSR2,  &act, 0) ||
	    0 > FUNC4(SIGCHLD,  &act, 0) ||
	    0 > FUNC4(SIGQUIT,  &act, 0)) {

		FUNC7(ZLOG_SYSERROR, "failed to init signals: sigaction()");
		return -1;
	}

	FUNC7(ZLOG_DEBUG, "Unblocking all signals");
	if (0 > FUNC2()) {
		return -1;
	}
	return 0;
}