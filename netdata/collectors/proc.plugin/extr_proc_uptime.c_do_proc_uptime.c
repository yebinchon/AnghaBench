
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int FILENAME_MAX ;
 int NETDATA_CHART_PRIO_SYSTEM_UPTIME ;
 int PLUGIN_PROC_NAME ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 char* config_get (char*,char*,char*) ;
 int netdata_configured_host_prefix ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,int ,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 int snprintfz (char*,int ,char*,int ,char*) ;
 scalar_t__ unlikely (int) ;
 int uptime_msec (char*) ;

int do_proc_uptime(int update_every, usec_t dt) {
    (void)dt;

    static char *uptime_filename = ((void*)0);
    if(!uptime_filename) {
        char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/uptime");

        uptime_filename = config_get("plugin:proc:/proc/uptime", "filename to monitor", filename);
    }

    static RRDSET *st = ((void*)0);
    static RRDDIM *rd = ((void*)0);

    if(unlikely(!st)) {

        st = rrdset_create_localhost(
                "system"
                , "uptime"
                , ((void*)0)
                , "uptime"
                , ((void*)0)
                , "System Uptime"
                , "seconds"
                , PLUGIN_PROC_NAME
                , "/proc/uptime"
                , NETDATA_CHART_PRIO_SYSTEM_UPTIME
                , update_every
                , RRDSET_TYPE_LINE
        );

        rd = rrddim_add(st, "uptime", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
    }
    else
        rrdset_next(st);

    rrddim_set_by_pointer(st, rd, uptime_msec(uptime_filename));

    rrdset_done(st);

    return 0;
}
