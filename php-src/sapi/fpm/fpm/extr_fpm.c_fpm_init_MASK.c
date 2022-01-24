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
struct TYPE_2__ {int argc; char** argv; char* prefix; char* pid; int run_as_root; int force_stderr; scalar_t__ parent_pid; scalar_t__ test_successful; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_EXIT_OK ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 TYPE_1__ fpm_globals ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC17(int argc, char **argv, char *config, char *prefix, char *pid, int test_conf, int run_as_root, int force_daemon, int force_stderr) /* {{{ */
{
	fpm_globals.argc = argc;
	fpm_globals.argv = argv;
	if (config && *config) {
		fpm_globals.config = FUNC15(config);
	}
	fpm_globals.prefix = prefix;
	fpm_globals.pid = pid;
	fpm_globals.run_as_root = run_as_root;
	fpm_globals.force_stderr = force_stderr;

	if (0 > FUNC7()           ||
	    0 > FUNC12()         ||
	    0 > FUNC2(test_conf, force_daemon) ||
	    0 > FUNC13()          ||
	    0 > FUNC8()    ||
	    0 > FUNC6()          ||
	    0 > FUNC4()           ||
	    0 > FUNC9()       ||
	    0 > FUNC1()      ||
	    0 > FUNC10()       ||
	    0 > FUNC14()   ||
	    0 > FUNC5()) {

		if (fpm_globals.test_successful) {
			FUNC0(FPM_EXIT_OK);
		} else {
			FUNC16(ZLOG_ERROR, "FPM initialization failed");
			return -1;
		}
	}

	if (0 > FUNC3()) {
		FUNC16(ZLOG_ERROR, "FPM initialization failed");
		return -1;
	}

	FUNC11();
	FUNC16(ZLOG_NOTICE, "fpm is running, pid %d", (int) fpm_globals.parent_pid);

	return 0;
}