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
struct fpm_worker_pool_s {TYPE_1__* config; } ;
struct TYPE_4__ {char* prefix; } ;
struct TYPE_3__ {char* prefix; } ;

/* Variables and functions */
 char* PHP_PREFIX ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ fpm_globals ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(char **path, struct fpm_worker_pool_s *wp, char *default_prefix, int expand) /* {{{ */
{
	char *prefix = NULL;
	char *full_path;

	if (!path || !*path || **path == '/') {
		return 0;
	}

	if (wp && wp->config) {
		prefix = wp->config->prefix;
	}

	/* if the wp prefix is not set */
	if (prefix == NULL) {
		prefix = fpm_globals.prefix;
	}

	/* if the global prefix is not set */
	if (prefix == NULL) {
		prefix = default_prefix ? default_prefix : PHP_PREFIX;
	}

	if (expand) {
		char *tmp;
		tmp = FUNC5(*path, "$prefix");
		if (tmp != NULL) {

			if (tmp != *path) {
				FUNC6(ZLOG_ERROR, "'$prefix' must be use at the beginning of the value");
				return -1;
			}

			if (FUNC4(*path) > FUNC4("$prefix")) {
				FUNC1(*path);
				tmp = FUNC3((*path) + FUNC4("$prefix"));
				*path = tmp;
			} else {
				FUNC1(*path);
				*path = NULL;
			}
		}
	}

	if (*path) {
		FUNC2(&full_path, 0, "%s/%s", prefix, *path);
		FUNC1(*path);
		*path = FUNC3(full_path);
		FUNC0(full_path);
	} else {
		*path = FUNC3(prefix);
	}

	if (**path != '/' && wp != NULL && wp->config) {
		return FUNC7(path, NULL, default_prefix, expand);
	}
	return 0;
}