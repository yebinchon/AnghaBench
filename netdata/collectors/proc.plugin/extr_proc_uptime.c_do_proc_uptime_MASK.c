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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_UPTIME ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 char* FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int update_every, usec_t dt) {
    (void)dt;

    static char *uptime_filename = NULL;
    if(!uptime_filename) {
        char filename[FILENAME_MAX + 1];
        FUNC6(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/uptime");

        uptime_filename = FUNC0("plugin:proc:/proc/uptime", "filename to monitor", filename);
    }

    static RRDSET *st = NULL;
    static RRDDIM *rd = NULL;

    if(FUNC7(!st)) {

        st = FUNC3(
                "system"
                , "uptime"
                , NULL
                , "uptime"
                , NULL
                , "System Uptime"
                , "seconds"
                , PLUGIN_PROC_NAME
                , "/proc/uptime"
                , NETDATA_CHART_PRIO_SYSTEM_UPTIME
                , update_every
                , RRDSET_TYPE_LINE
        );

        rd = FUNC1(st, "uptime", NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
    }
    else
        FUNC5(st);

    FUNC2(st, rd, FUNC8(uptime_filename));

    FUNC4(st);

    return 0;
}