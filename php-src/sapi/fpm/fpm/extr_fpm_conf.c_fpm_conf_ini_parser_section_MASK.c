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
typedef  int /*<<< orphan*/  zval ;
struct fpm_worker_pool_s {TYPE_1__* config; struct fpm_worker_pool_s* next; } ;
struct fpm_worker_pool_config_s {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZLOG_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 struct fpm_worker_pool_s* current_wp ; 
 struct fpm_worker_pool_s* fpm_worker_all_pools ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  ini_filename ; 
 int /*<<< orphan*/  ini_lineno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(zval *section, void *arg) /* {{{ */
{
	struct fpm_worker_pool_s *wp;
	struct fpm_worker_pool_config_s *config;
	int *error = (int *)arg;

	/* switch to global conf */
	if (!FUNC2(FUNC0(section), "global")) {
		current_wp = NULL;
		return;
	}

	for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
		if (!wp->config) continue;
		if (!wp->config->name) continue;
		if (!FUNC2(wp->config->name, FUNC0(section))) {
			/* Found a wp with the same name. Bring it back */
			current_wp = wp;
			return;
		}
	}

	/* it's a new pool */
	config = (struct fpm_worker_pool_config_s *)FUNC1();
	if (!current_wp || !config) {
		FUNC4(ZLOG_ERROR, "[%s:%d] Unable to alloc a new WorkerPool for worker '%s'", ini_filename, ini_lineno, FUNC0(section));
		*error = 1;
		return;
	}
	config->name = FUNC3(FUNC0(section));
	if (!config->name) {
		FUNC4(ZLOG_ERROR, "[%s:%d] Unable to alloc memory for configuration name for worker '%s'", ini_filename, ini_lineno, FUNC0(section));
		*error = 1;
		return;
	}
}