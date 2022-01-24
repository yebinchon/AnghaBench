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
struct fpm_worker_pool_s {int /*<<< orphan*/  scoreboard; TYPE_1__* config; } ;
struct fpm_child_s {int fd_stdout; int fd_stderr; int /*<<< orphan*/  scoreboard_i; struct fpm_worker_pool_s* wp; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZLOG_ERROR ; 
 struct fpm_child_s* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct fpm_child_s*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fpm_child_s*) ; 
 scalar_t__ FUNC4 (struct fpm_child_s*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fpm_child_s *FUNC6(struct fpm_worker_pool_s *wp) /* {{{ */
{
	struct fpm_child_s *c;

	c = FUNC0();

	if (!c) {
		FUNC5(ZLOG_ERROR, "[pool %s] unable to malloc new child", wp->config->name);
		return 0;
	}

	c->wp = wp;
	c->fd_stdout = -1; c->fd_stderr = -1;

	if (0 > FUNC4(c)) {
		FUNC1(c);
		return 0;
	}

	if (0 > FUNC2(wp->scoreboard, &c->scoreboard_i)) {
		FUNC3(c);
		FUNC1(c);
		return 0;
	}

	return c;
}