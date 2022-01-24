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
struct fpm_scoreboard_proc_s {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct fpm_scoreboard_proc_s* FUNC0 (struct fpm_scoreboard_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

struct fpm_scoreboard_proc_s *FUNC2(struct fpm_scoreboard_s *scoreboard, int child_index, int nohang) /* {{{ */
{
	struct fpm_scoreboard_proc_s *proc;

	proc = FUNC0(scoreboard, child_index);
	if (!proc) {
		return NULL;
	}

	if (!FUNC1(&proc->lock, nohang)) {
		return NULL;
	}

	return proc;
}