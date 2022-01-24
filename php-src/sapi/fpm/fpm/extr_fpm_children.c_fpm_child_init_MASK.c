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
struct fpm_worker_pool_s {TYPE_1__* config; int /*<<< orphan*/  listening_socket; } ;
struct TYPE_4__ {int /*<<< orphan*/  listening_socket; int /*<<< orphan*/  max_requests; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  pm_max_requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_EXIT_SOFTWARE ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fpm_worker_pool_s*) ; 
 TYPE_2__ fpm_globals ; 
 scalar_t__ FUNC3 (struct fpm_worker_pool_s*) ; 
 scalar_t__ FUNC4 (struct fpm_worker_pool_s*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (struct fpm_worker_pool_s*) ; 
 scalar_t__ FUNC7 (struct fpm_worker_pool_s*) ; 
 scalar_t__ FUNC8 (struct fpm_worker_pool_s*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct fpm_worker_pool_s *wp) /* {{{ */
{
	fpm_globals.max_requests = wp->config->pm_max_requests;
	fpm_globals.listening_socket = FUNC0(wp->listening_socket);

	if (0 > FUNC7(wp)  ||
	    0 > FUNC3(wp)    ||
	    0 > FUNC6(wp) ||
	    0 > FUNC8(wp)   ||
	    0 > FUNC5()  ||
	    0 > FUNC2(wp)    ||
	    0 > FUNC4(wp)) {

		FUNC9(ZLOG_ERROR, "[pool %s] child failed to initialize", wp->config->name);
		FUNC1(FPM_EXIT_SOFTWARE);
	}
}