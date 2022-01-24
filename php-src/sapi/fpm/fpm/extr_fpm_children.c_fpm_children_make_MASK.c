#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fpm_worker_pool_s {int running_children; TYPE_1__* config; } ;
struct fpm_child_s {int pid; int /*<<< orphan*/  started; } ;
typedef  int pid_t ;
struct TYPE_6__ {int process_max; } ;
struct TYPE_5__ {int running_children; int is_child; } ;
struct TYPE_4__ {scalar_t__ pm; int pm_start_servers; int pm_max_children; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ PM_STYLE_DYNAMIC ; 
 scalar_t__ PM_STYLE_ONDEMAND ; 
 int /*<<< orphan*/  ZLOG_DEBUG ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct fpm_worker_pool_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct fpm_child_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__ fpm_global_config ; 
 TYPE_2__ fpm_globals ; 
 int /*<<< orphan*/  FUNC4 (struct fpm_child_s*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct fpm_child_s*) ; 
 struct fpm_child_s* FUNC7 (struct fpm_worker_pool_s*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC9(struct fpm_worker_pool_s *wp, int in_event_loop, int nb_to_spawn, int is_debug) /* {{{ */
{
	pid_t pid;
	struct fpm_child_s *child;
	int max;
	static int warned = 0;

	if (wp->config->pm == PM_STYLE_DYNAMIC) {
		if (!in_event_loop) { /* starting */
			max = wp->config->pm_start_servers;
		} else {
			max = wp->running_children + nb_to_spawn;
		}
	} else if (wp->config->pm == PM_STYLE_ONDEMAND) {
		if (!in_event_loop) { /* starting */
			max = 0; /* do not create any child at startup */
		} else {
			max = wp->running_children + nb_to_spawn;
		}
	} else { /* PM_STYLE_STATIC */
		max = wp->config->pm_max_children;
	}

	/*
	 * fork children while:
	 *   - fpm_pctl_can_spawn_children : FPM is running in a NORMAL state (aka not restart, stop or reload)
	 *   - wp->running_children < max  : there is less than the max process for the current pool
	 *   - (fpm_global_config.process_max < 1 || fpm_globals.running_children < fpm_global_config.process_max):
	 *     if fpm_global_config.process_max is set, FPM has not fork this number of processes (globaly)
	 */
	while (FUNC5() && wp->running_children < max && (fpm_global_config.process_max < 1 || fpm_globals.running_children < fpm_global_config.process_max)) {

		warned = 0;
		child = FUNC7(wp);

		if (!child) {
			return 2;
		}

		pid = FUNC0();

		switch (pid) {

			case 0 :
				FUNC2(child);
				fpm_globals.is_child = 1;
				FUNC1(wp);
				return 0;

			case -1 :
				FUNC8(ZLOG_SYSERROR, "fork() failed");

				FUNC6(child);
				return 2;

			default :
				child->pid = pid;
				FUNC3(&child->started);
				FUNC4(child);

				FUNC8(is_debug ? ZLOG_DEBUG : ZLOG_NOTICE, "[pool %s] child %d started", wp->config->name, (int) pid);
		}

	}

	if (!warned && fpm_global_config.process_max > 0 && fpm_globals.running_children >= fpm_global_config.process_max) {
               if (wp->running_children < max) {
                       warned = 1;
                       FUNC8(ZLOG_WARNING, "The maximum number of processes has been reached. Please review your configuration and consider raising 'process.max'");
               }
	}

	return 1; /* we are done */
}