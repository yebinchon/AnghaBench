#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fpm_worker_pool_s {int /*<<< orphan*/  scoreboard; int /*<<< orphan*/  children; int /*<<< orphan*/  config; struct fpm_worker_pool_s* next; } ;
struct TYPE_2__ {scalar_t__ parent_pid; } ;

/* Variables and functions */
 int FPM_CLEANUP_CHILD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fpm_globals ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fpm_worker_pool_s* fpm_worker_all_pools ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fpm_worker_pool_s*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(int which, void *arg) /* {{{ */
{
	struct fpm_worker_pool_s *wp, *wp_next;

	for (wp = fpm_worker_all_pools; wp; wp = wp_next) {
		wp_next = wp->next;
		FUNC2(wp->config);
		FUNC0(wp->children);
		if ((which & FPM_CLEANUP_CHILD) == 0 && fpm_globals.parent_pid == FUNC4()) {
			FUNC1(wp->scoreboard);
		}
		FUNC3(wp);
	}
	fpm_worker_all_pools = NULL;
}