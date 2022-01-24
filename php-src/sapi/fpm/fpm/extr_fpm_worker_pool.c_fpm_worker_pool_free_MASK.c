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
struct fpm_worker_pool_s {scalar_t__ limit_extensions; struct fpm_worker_pool_s* home; struct fpm_worker_pool_s* user; struct fpm_worker_pool_s* config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fpm_worker_pool_s*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fpm_worker_pool_s*) ; 

void FUNC3(struct fpm_worker_pool_s *wp) /* {{{ */
{
	if (wp->config) {
		FUNC2(wp->config);
	}
	if (wp->user) {
		FUNC2(wp->user);
	}
	if (wp->home) {
		FUNC2(wp->home);
	}
	if (wp->limit_extensions) {
		FUNC1(wp->limit_extensions);
	}
	FUNC0(wp);
	FUNC2(wp);
}