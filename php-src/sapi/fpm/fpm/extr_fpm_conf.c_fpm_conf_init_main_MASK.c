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
struct TYPE_4__ {void* pid_file; } ;
struct TYPE_3__ {char* pid; int test_successful; scalar_t__* config; scalar_t__* prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_CLEANUP_ALL ; 
 scalar_t__* PHP_SYSCONFDIR ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpm_conf_cleanup ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_2__ fpm_global_config ; 
 TYPE_1__ fpm_globals ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC9(int test_conf, int force_daemon) /* {{{ */
{
	int ret;

	if (fpm_globals.prefix && *fpm_globals.prefix) {
		if (!FUNC3(fpm_globals.prefix)) {
			FUNC8(ZLOG_ERROR, "the global prefix '%s' does not exist or is not a directory", fpm_globals.prefix);
			return -1;
		}
	}

	if (fpm_globals.pid && *fpm_globals.pid) {
		fpm_global_config.pid_file = FUNC7(fpm_globals.pid);
	}

	if (fpm_globals.config == NULL) {
		char *tmp;

		if (fpm_globals.prefix == NULL) {
			FUNC6(&tmp, 0, "%s/php-fpm.conf", PHP_SYSCONFDIR);
		} else {
			FUNC6(&tmp, 0, "%s/etc/php-fpm.conf", fpm_globals.prefix);
		}

		if (!tmp) {
			FUNC8(ZLOG_SYSERROR, "spprintf() failed (tmp for fpm_globals.config)");
			return -1;
		}

		fpm_globals.config = FUNC7(tmp);
		FUNC0(tmp);

		if (!fpm_globals.config) {
			FUNC8(ZLOG_SYSERROR, "spprintf() failed (fpm_globals.config)");
			return -1;
		}
	}

	ret = FUNC4(fpm_globals.config);

	if (0 > ret) {
		FUNC8(ZLOG_ERROR, "failed to load configuration file '%s'", fpm_globals.config);
		return -1;
	}

	if (0 > FUNC5(force_daemon)) {
		FUNC8(ZLOG_ERROR, "failed to post process the configuration");
		return -1;
	}

	if (test_conf) {
		if (test_conf > 1) {
			FUNC2();
		}
		FUNC8(ZLOG_NOTICE, "configuration file %s test is successful\n", fpm_globals.config);
		fpm_globals.test_successful = 1;
		return -1;
	}

	if (0 > FUNC1(FPM_CLEANUP_ALL, fpm_conf_cleanup, 0)) {
		return -1;
	}

	return 0;
}