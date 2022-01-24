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
struct fpm_worker_pool_s {int /*<<< orphan*/  scoreboard; struct fpm_worker_pool_s* next; } ;
struct fpm_child_s {int /*<<< orphan*/  scoreboard_i; struct fpm_worker_pool_s* wp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fpm_child_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fpm_child_s*) ; 
 struct fpm_worker_pool_s* fpm_worker_all_pools ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct fpm_child_s *child) /* {{{ */
{
	struct fpm_worker_pool_s *wp;
	for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
		if (wp == child->wp) {
			continue;
		}
		FUNC2(wp->scoreboard);
	}

	FUNC1(child->wp->scoreboard, child->scoreboard_i, FUNC4());
	FUNC3(child);
	FUNC0(child);
}