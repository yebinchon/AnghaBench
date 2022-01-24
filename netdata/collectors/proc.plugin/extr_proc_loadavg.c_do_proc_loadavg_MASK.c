#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
typedef  int /*<<< orphan*/  procfile ;
typedef  unsigned long long collected_number ;
struct TYPE_7__ {int update_every; } ;
typedef  TYPE_1__ RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_PLUGIN_PROC_LOADAVG ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int MIN_LOADAVG_UPDATE_EVERY ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_LOAD ; 
 int /*<<< orphan*/  PLUGIN_PROC_MODULE_LOADAVG_NAME ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,unsigned long long) ; 
 TYPE_1__* FUNC11 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 unsigned long long FUNC15 (int /*<<< orphan*/ ) ; 
 double FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

int FUNC18(int update_every, usec_t dt) {
    static procfile *ff = NULL;
    static int do_loadavg = -1, do_all_processes = -1;
    static usec_t next_loadavg_dt = 0;

    if(FUNC17(!ff)) {
        char filename[FILENAME_MAX + 1];
        FUNC14(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/loadavg");

        ff = FUNC7(FUNC0(CONFIG_SECTION_PLUGIN_PROC_LOADAVG, "filename to monitor", filename), " \t,:|/", PROCFILE_FLAG_DEFAULT);
        if(FUNC17(!ff))
            return 1;
    }

    ff = FUNC8(ff);
    if(FUNC17(!ff))
        return 0; // we return 0, so that we will retry to open it next time

    if(FUNC17(do_loadavg == -1)) {
        do_loadavg          = FUNC1(CONFIG_SECTION_PLUGIN_PROC_LOADAVG, "enable load average", 1);
        do_all_processes    = FUNC1(CONFIG_SECTION_PLUGIN_PROC_LOADAVG, "enable total processes", 1);
    }

    if(FUNC17(FUNC4(ff) < 1)) {
        FUNC2("/proc/loadavg has no lines.");
        return 1;
    }
    if(FUNC17(FUNC6(ff, 0) < 6)) {
        FUNC2("/proc/loadavg has less than 6 words in it.");
        return 1;
    }

    double load1 = FUNC16(FUNC5(ff, 0, 0), NULL);
    double load5 = FUNC16(FUNC5(ff, 0, 1), NULL);
    double load15 = FUNC16(FUNC5(ff, 0, 2), NULL);

    //unsigned long long running_processes  = str2ull(procfile_lineword(ff, 0, 3));
    unsigned long long active_processes     = FUNC15(FUNC5(ff, 0, 4));
    //unsigned long long next_pid           = str2ull(procfile_lineword(ff, 0, 5));


    // --------------------------------------------------------------------

    if(next_loadavg_dt <= dt) {
        if(FUNC3(do_loadavg)) {
            static RRDSET *load_chart = NULL;
            static RRDDIM *rd_load1 = NULL, *rd_load5 = NULL, *rd_load15 = NULL;

            if(FUNC17(!load_chart)) {
                load_chart = FUNC11(
                        "system"
                        , "load"
                        , NULL
                        , "load"
                        , NULL
                        , "System Load Average"
                        , "load"
                        , PLUGIN_PROC_NAME
                        , PLUGIN_PROC_MODULE_LOADAVG_NAME
                        , NETDATA_CHART_PRIO_SYSTEM_LOAD
                        , (update_every < MIN_LOADAVG_UPDATE_EVERY) ? MIN_LOADAVG_UPDATE_EVERY : update_every
                        , RRDSET_TYPE_LINE
                );

                rd_load1  = FUNC9(load_chart, "load1",  NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load5  = FUNC9(load_chart, "load5",  NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load15 = FUNC9(load_chart, "load15", NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
            }
            else
                FUNC13(load_chart);

            FUNC10(load_chart, rd_load1, (collected_number) (load1 * 1000));
            FUNC10(load_chart, rd_load5, (collected_number) (load5 * 1000));
            FUNC10(load_chart, rd_load15, (collected_number) (load15 * 1000));
            FUNC12(load_chart);

            next_loadavg_dt = load_chart->update_every * USEC_PER_SEC;
        }
        else next_loadavg_dt =  MIN_LOADAVG_UPDATE_EVERY * USEC_PER_SEC;
    }
    else next_loadavg_dt -= dt;

    // --------------------------------------------------------------------

    if(FUNC3(do_all_processes)) {
        static RRDSET *processes_chart = NULL;
        static RRDDIM *rd_active = NULL;

        if(FUNC17(!processes_chart)) {
            processes_chart = FUNC11(
                    "system"
                    , "active_processes"
                    , NULL
                    , "processes"
                    , NULL
                    , "System Active Processes"
                    , "processes"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_LOADAVG_NAME
                    , NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            rd_active = FUNC9(processes_chart, "active", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC13(processes_chart);

        FUNC10(processes_chart, rd_active, active_processes);
        FUNC12(processes_chart);
    }

    return 0;
}