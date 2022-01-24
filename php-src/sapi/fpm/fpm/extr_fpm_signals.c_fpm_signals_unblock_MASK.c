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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3() /* {{{ */
{
	/* Ensure that during reload after upgrade all signals are unblocked.
		block_sigset could have different value before execve() */
	sigset_t all_signals;
	FUNC0(&all_signals);
	if (0 > FUNC1(SIG_UNBLOCK, &all_signals, NULL)) {
		FUNC2(ZLOG_SYSERROR, "failed to unblock signals");
		return -1;
	}
	return 0;
}