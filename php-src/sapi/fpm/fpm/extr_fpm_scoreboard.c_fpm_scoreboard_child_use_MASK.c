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
struct fpm_scoreboard_s {int dummy; } ;
struct fpm_scoreboard_proc_s {int /*<<< orphan*/  start_epoch; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct fpm_scoreboard_s* fpm_scoreboard ; 
 int fpm_scoreboard_i ; 
 struct fpm_scoreboard_proc_s* FUNC0 (struct fpm_scoreboard_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct fpm_scoreboard_s *scoreboard, int child_index, pid_t pid) /* {{{ */
{
	struct fpm_scoreboard_proc_s *proc;
	fpm_scoreboard = scoreboard;
	fpm_scoreboard_i = child_index;
	proc = FUNC0(scoreboard, child_index);
	if (!proc) {
		return;
	}
	proc->pid = pid;
	proc->start_epoch = FUNC1(NULL);
}