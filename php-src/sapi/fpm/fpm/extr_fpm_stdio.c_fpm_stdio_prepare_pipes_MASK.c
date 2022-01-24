#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fpm_child_s {TYPE_2__* wp; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {scalar_t__ catch_workers_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fd_stderr ; 
 int /*<<< orphan*/ * fd_stdout ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct fpm_child_s *child) /* {{{ */
{
	if (0 == child->wp->config->catch_workers_output) { /* not required */
		return 0;
	}

	if (0 > FUNC2(fd_stdout)) {
		FUNC3(ZLOG_SYSERROR, "failed to prepare the stdout pipe");
		return -1;
	}

	if (0 > FUNC2(fd_stderr)) {
		FUNC3(ZLOG_SYSERROR, "failed to prepare the stderr pipe");
		FUNC0(fd_stdout[0]);
		FUNC0(fd_stdout[1]);
		return -1;
	}

	if (0 > FUNC1(fd_stdout[0], 0) || 0 > FUNC1(fd_stderr[0], 0)) {
		FUNC3(ZLOG_SYSERROR, "failed to unblock pipes");
		FUNC0(fd_stdout[0]);
		FUNC0(fd_stdout[1]);
		FUNC0(fd_stderr[0]);
		FUNC0(fd_stderr[1]);
		return -1;
	}
	return 0;
}