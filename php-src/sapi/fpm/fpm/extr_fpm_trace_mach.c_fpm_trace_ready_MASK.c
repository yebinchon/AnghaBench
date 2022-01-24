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
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  target ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,char*) ; 

int FUNC4(pid_t pid) /* {{{ */
{
	kern_return_t kr;

	kr = FUNC2(FUNC1(), pid, &target);
	if (kr != KERN_SUCCESS) {
		char *msg = "";

		if (kr == KERN_FAILURE) {
			msg = " It seems that master process does not have enough privileges to trace processes.";
		}
		FUNC3(ZLOG_ERROR, "task_for_pid() failed: %s (%d)%s", FUNC0(kr), kr, msg);
		return -1;
	}
	return 0;
}