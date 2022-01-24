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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_PCTL_STOP ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC2(pid_t pid) /* {{{ */
{
	if (0 > FUNC0(pid, FPM_PCTL_STOP)) {
		FUNC1(ZLOG_SYSERROR, "failed to send SIGSTOP to %d", pid);
		return -1;
	}
	return 0;
}