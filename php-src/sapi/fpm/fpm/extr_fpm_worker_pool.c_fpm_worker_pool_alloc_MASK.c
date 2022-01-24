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
struct fpm_worker_pool_s {int idle_spawn_rate; int log_fd; } ;

/* Variables and functions */
 struct fpm_worker_pool_s* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fpm_worker_pool_s*,int /*<<< orphan*/ ,int) ; 

struct fpm_worker_pool_s *FUNC2() /* {{{ */
{
	struct fpm_worker_pool_s *ret;

	ret = FUNC0(sizeof(struct fpm_worker_pool_s));
	if (!ret) {
		return 0;
	}

	FUNC1(ret, 0, sizeof(struct fpm_worker_pool_s));

	ret->idle_spawn_rate = 1;
	ret->log_fd = -1;
	return ret;
}