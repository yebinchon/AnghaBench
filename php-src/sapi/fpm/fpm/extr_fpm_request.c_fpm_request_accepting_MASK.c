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
struct timeval {int dummy; } ;
struct fpm_scoreboard_proc_s {struct timeval tv; int /*<<< orphan*/  request_stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_REQUEST_ACCEPTING ; 
 int /*<<< orphan*/  FPM_SCOREBOARD_ACTION_INC ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 struct fpm_scoreboard_proc_s* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpm_scoreboard_proc_s*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5() /* {{{ */
{
	struct fpm_scoreboard_proc_s *proc;
	struct timeval now;

	FUNC0(&now);

	proc = FUNC1(NULL, -1, 0);
	if (proc == NULL) {
		FUNC4(ZLOG_WARNING, "failed to acquire proc scoreboard");
		return;
	}

	proc->request_stage = FPM_REQUEST_ACCEPTING;
	proc->tv = now;
	FUNC2(proc);

	/* idle++, active-- */
	FUNC3(1, -1, 0, 0, 0, 0, 0, FPM_SCOREBOARD_ACTION_INC, NULL);
}