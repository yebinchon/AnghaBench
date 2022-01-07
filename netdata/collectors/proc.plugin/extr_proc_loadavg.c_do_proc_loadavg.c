
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int usec_t ;
typedef int procfile ;
typedef unsigned long long collected_number ;
struct TYPE_7__ {int update_every; } ;
typedef TYPE_1__ RRDSET ;
typedef int RRDDIM ;


 int CONFIG_SECTION_PLUGIN_PROC_LOADAVG ;
 int FILENAME_MAX ;
 int MIN_LOADAVG_UPDATE_EVERY ;
 int NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES ;
 int NETDATA_CHART_PRIO_SYSTEM_LOAD ;
 int PLUGIN_PROC_MODULE_LOADAVG_NAME ;
 int PLUGIN_PROC_NAME ;
 int PROCFILE_FLAG_DEFAULT ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int USEC_PER_SEC ;
 int config_get (int ,char*,char*) ;
 int config_get_boolean (int ,char*,int) ;
 int error (char*) ;
 scalar_t__ likely (int) ;
 int netdata_configured_host_prefix ;
 int procfile_lines (int *) ;
 int procfile_lineword (int *,int ,int) ;
 int procfile_linewords (int *,int ) ;
 int * procfile_open (int ,char*,int ) ;
 int * procfile_readall (int *) ;
 int * rrddim_add (TYPE_1__*,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (TYPE_1__*,int *,unsigned long long) ;
 TYPE_1__* rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,int ,int ,int ,int,int ) ;
 int rrdset_done (TYPE_1__*) ;
 int rrdset_next (TYPE_1__*) ;
 int snprintfz (char*,int ,char*,int ,char*) ;
 unsigned long long str2ull (int ) ;
 double strtod (int ,int *) ;
 scalar_t__ unlikely (int) ;

int do_proc_loadavg(int update_every, usec_t dt) {
    static procfile *ff = ((void*)0);
    static int do_loadavg = -1, do_all_processes = -1;
    static usec_t next_loadavg_dt = 0;

    if(unlikely(!ff)) {
        char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/loadavg");

        ff = procfile_open(config_get(CONFIG_SECTION_PLUGIN_PROC_LOADAVG, "filename to monitor", filename), " \t,:|/", PROCFILE_FLAG_DEFAULT);
        if(unlikely(!ff))
            return 1;
    }

    ff = procfile_readall(ff);
    if(unlikely(!ff))
        return 0;

    if(unlikely(do_loadavg == -1)) {
        do_loadavg = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_LOADAVG, "enable load average", 1);
        do_all_processes = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_LOADAVG, "enable total processes", 1);
    }

    if(unlikely(procfile_lines(ff) < 1)) {
        error("/proc/loadavg has no lines.");
        return 1;
    }
    if(unlikely(procfile_linewords(ff, 0) < 6)) {
        error("/proc/loadavg has less than 6 words in it.");
        return 1;
    }

    double load1 = strtod(procfile_lineword(ff, 0, 0), ((void*)0));
    double load5 = strtod(procfile_lineword(ff, 0, 1), ((void*)0));
    double load15 = strtod(procfile_lineword(ff, 0, 2), ((void*)0));


    unsigned long long active_processes = str2ull(procfile_lineword(ff, 0, 4));





    if(next_loadavg_dt <= dt) {
        if(likely(do_loadavg)) {
            static RRDSET *load_chart = ((void*)0);
            static RRDDIM *rd_load1 = ((void*)0), *rd_load5 = ((void*)0), *rd_load15 = ((void*)0);

            if(unlikely(!load_chart)) {
                load_chart = rrdset_create_localhost(
                        "system"
                        , "load"
                        , ((void*)0)
                        , "load"
                        , ((void*)0)
                        , "System Load Average"
                        , "load"
                        , PLUGIN_PROC_NAME
                        , PLUGIN_PROC_MODULE_LOADAVG_NAME
                        , NETDATA_CHART_PRIO_SYSTEM_LOAD
                        , (update_every < MIN_LOADAVG_UPDATE_EVERY) ? MIN_LOADAVG_UPDATE_EVERY : update_every
                        , RRDSET_TYPE_LINE
                );

                rd_load1 = rrddim_add(load_chart, "load1", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load5 = rrddim_add(load_chart, "load5", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load15 = rrddim_add(load_chart, "load15", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
            }
            else
                rrdset_next(load_chart);

            rrddim_set_by_pointer(load_chart, rd_load1, (collected_number) (load1 * 1000));
            rrddim_set_by_pointer(load_chart, rd_load5, (collected_number) (load5 * 1000));
            rrddim_set_by_pointer(load_chart, rd_load15, (collected_number) (load15 * 1000));
            rrdset_done(load_chart);

            next_loadavg_dt = load_chart->update_every * USEC_PER_SEC;
        }
        else next_loadavg_dt = MIN_LOADAVG_UPDATE_EVERY * USEC_PER_SEC;
    }
    else next_loadavg_dt -= dt;



    if(likely(do_all_processes)) {
        static RRDSET *processes_chart = ((void*)0);
        static RRDDIM *rd_active = ((void*)0);

        if(unlikely(!processes_chart)) {
            processes_chart = rrdset_create_localhost(
                    "system"
                    , "active_processes"
                    , ((void*)0)
                    , "processes"
                    , ((void*)0)
                    , "System Active Processes"
                    , "processes"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_LOADAVG_NAME
                    , NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            rd_active = rrddim_add(processes_chart, "active", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(processes_chart);

        rrddim_set_by_pointer(processes_chart, rd_active, active_processes);
        rrdset_done(processes_chart);
    }

    return 0;
}
