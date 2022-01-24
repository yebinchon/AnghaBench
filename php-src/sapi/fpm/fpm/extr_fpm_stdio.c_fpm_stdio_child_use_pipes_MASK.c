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
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fd_stderr ; 
 int /*<<< orphan*/ * fd_stdout ; 

void FUNC2(struct fpm_child_s *child) /* {{{ */
{
	if (child->wp->config->catch_workers_output) {
		FUNC1(fd_stdout[1], STDOUT_FILENO);
		FUNC1(fd_stderr[1], STDERR_FILENO);
		FUNC0(fd_stdout[0]); FUNC0(fd_stdout[1]);
		FUNC0(fd_stderr[0]); FUNC0(fd_stderr[1]);
	} else {
		/* stdout of parent is always /dev/null */
		FUNC1(STDOUT_FILENO, STDERR_FILENO);
	}
}