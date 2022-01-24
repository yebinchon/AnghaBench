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

/* Variables and functions */
 char* VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int debug_enabled ; 
 int enable_file_charts ; 
 scalar_t__ enable_groups_charts ; 
 int enable_guest_charts ; 
 scalar_t__ enable_users_charts ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int include_exited_childs ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 scalar_t__ max_fds_cache_seconds ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* stock_config_dir ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int update_every ; 
 char* user_config_dir ; 

__attribute__((used)) static void FUNC11(int argc, char **argv)
{
    int i, freq = 0;

    for(i = 1; i < argc; i++) {
        if(!freq) {
            int n = (int)FUNC9(argv[i]);
            if(n > 0) {
                freq = n;
                continue;
            }
        }

        if(FUNC10("version", argv[i]) == 0 || FUNC10("-version", argv[i]) == 0 || FUNC10("--version", argv[i]) == 0 || FUNC10("-v", argv[i]) == 0 || FUNC10("-V", argv[i]) == 0) {
            FUNC6("apps.plugin %s\n", VERSION);
            FUNC2(0);
        }

        if(FUNC10("test-permissions", argv[i]) == 0 || FUNC10("-t", argv[i]) == 0) {
            if(!FUNC0()) {
                FUNC5("Tried to read /proc/1/io and it failed");
                FUNC2(1);
            }
            FUNC6("OK\n");
            FUNC2(0);
        }

        if(FUNC10("debug", argv[i]) == 0) {
#ifdef NETDATA_INTERNAL_CHECKS
            debug_enabled = 1;
#else
            FUNC3(stderr, "apps.plugin has been compiled without debugging\n");
#endif
            continue;
        }

#ifndef __FreeBSD__
        if(FUNC10("fds-cache-secs", argv[i]) == 0) {
            if(argc <= i + 1) {
                FUNC3(stderr, "Parameter 'fds-cache-secs' requires a number as argument.\n");
                FUNC2(1);
            }
            i++;
            max_fds_cache_seconds = FUNC8(argv[i]);
            if(max_fds_cache_seconds < 0) max_fds_cache_seconds = 0;
            continue;
        }
#endif

        if(FUNC10("no-childs", argv[i]) == 0 || FUNC10("without-childs", argv[i]) == 0) {
            include_exited_childs = 0;
            continue;
        }

        if(FUNC10("with-childs", argv[i]) == 0) {
            include_exited_childs = 1;
            continue;
        }

        if(FUNC10("with-guest", argv[i]) == 0) {
            enable_guest_charts = 1;
            continue;
        }

        if(FUNC10("no-guest", argv[i]) == 0 || FUNC10("without-guest", argv[i]) == 0) {
            enable_guest_charts = 0;
            continue;
        }

        if(FUNC10("with-files", argv[i]) == 0) {
            enable_file_charts = 1;
            continue;
        }

        if(FUNC10("no-files", argv[i]) == 0 || FUNC10("without-files", argv[i]) == 0) {
            enable_file_charts = 0;
            continue;
        }

        if(FUNC10("no-users", argv[i]) == 0 || FUNC10("without-users", argv[i]) == 0) {
            enable_users_charts = 0;
            continue;
        }

        if(FUNC10("no-groups", argv[i]) == 0 || FUNC10("without-groups", argv[i]) == 0) {
            enable_groups_charts = 0;
            continue;
        }

        if(FUNC10("-h", argv[i]) == 0 || FUNC10("--help", argv[i]) == 0) {
            FUNC3(stderr,
                    "\n"
                    " netdata apps.plugin %s\n"
                    " Copyright (C) 2016-2017 Costa Tsaousis <costa@tsaousis.gr>\n"
                    " Released under GNU General Public License v3 or later.\n"
                    " All rights reserved.\n"
                    "\n"
                    " This program is a data collector plugin for netdata.\n"
                    "\n"
                    " Available command line options:\n"
                    "\n"
                    " SECONDS           set the data collection frequency\n"
                    "\n"
                    " debug             enable debugging (lot of output)\n"
                    "\n"
                    " with-childs\n"
                    " without-childs    enable / disable aggregating exited\n"
                    "                   children resources into parents\n"
                    "                   (default is enabled)\n"
                    "\n"
                    " with-guest\n"
                    " without-guest     enable / disable reporting guest charts\n"
                    "                   (default is disabled)\n"
                    "\n"
                    " with-files\n"
                    " without-files     enable / disable reporting files, sockets, pipes\n"
                    "                   (default is enabled)\n"
                    "\n"
                    " without-users     disable reporting per user charts\n"
                    "\n"
                    " without-groups    disable reporting per user group charts\n"
                    "\n"
#ifndef __FreeBSD__
                    " fds-cache-secs N  cache the files of processed for N seconds\n"
                    "                   caching is adaptive per file (when a file\n"
                    "                   is found, it starts at 0 and while the file\n"
                    "                   remains open, it is incremented up to the\n"
                    "                   max given)\n"
                    "                   (default is %ld seconds)\n"
                    "\n"
#endif
                    " version or -v or -V print program version and exit\n"
                    "\n"
                    , VERSION
#ifndef __FreeBSD__
                    , max_fds_cache_seconds
#endif
            );
            FUNC2(1);
        }

        FUNC1("Cannot understand option %s", argv[i]);
        FUNC2(1);
    }

    if(freq > 0) update_every = freq;

    if(FUNC7(user_config_dir, "groups")) {
        FUNC4("Cannot read process groups configuration file '%s/apps_groups.conf'. Will try '%s/apps_groups.conf'", user_config_dir, stock_config_dir);

        if(FUNC7(stock_config_dir, "groups")) {
            FUNC1("Cannot read process groups '%s/apps_groups.conf'. There are no internal defaults. Failing.", stock_config_dir);
            FUNC2(1);
        }
        else
            FUNC4("Loaded config file '%s/apps_groups.conf'", stock_config_dir);
    }
    else
        FUNC4("Loaded config file '%s/apps_groups.conf'", user_config_dir);
}