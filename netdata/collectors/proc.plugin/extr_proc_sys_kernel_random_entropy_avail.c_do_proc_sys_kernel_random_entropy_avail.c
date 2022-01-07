
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int procfile ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int FILENAME_MAX ;
 int NETDATA_CHART_PRIO_SYSTEM_ENTROPY ;
 int PLUGIN_PROC_NAME ;
 int PROCFILE_FLAG_DEFAULT ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int config_get (char*,char*,char*) ;
 int netdata_configured_host_prefix ;
 int procfile_lineword (int *,int ,int ) ;
 int * procfile_open (int ,char*,int ) ;
 int * procfile_readall (int *) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,unsigned long long) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,int ,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 int snprintfz (char*,int ,char*,int ,char*) ;
 unsigned long long str2ull (int ) ;
 scalar_t__ unlikely (int) ;

int do_proc_sys_kernel_random_entropy_avail(int update_every, usec_t dt) {
    (void)dt;

    static procfile *ff = ((void*)0);

    if(unlikely(!ff)) {
        char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/sys/kernel/random/entropy_avail");
        ff = procfile_open(config_get("plugin:proc:/proc/sys/kernel/random/entropy_avail", "filename to monitor", filename), "", PROCFILE_FLAG_DEFAULT);
        if(unlikely(!ff)) return 1;
    }

    ff = procfile_readall(ff);
    if(unlikely(!ff)) return 0;

    unsigned long long entropy = str2ull(procfile_lineword(ff, 0, 0));

    static RRDSET *st = ((void*)0);
    static RRDDIM *rd = ((void*)0);

    if(unlikely(!st)) {
        st = rrdset_create_localhost(
                "system"
                , "entropy"
                , ((void*)0)
                , "entropy"
                , ((void*)0)
                , "Available Entropy"
                , "entropy"
                , PLUGIN_PROC_NAME
                , "/proc/sys/kernel/random/entropy_avail"
                , NETDATA_CHART_PRIO_SYSTEM_ENTROPY
                , update_every
                , RRDSET_TYPE_LINE
        );

        rd = rrddim_add(st, "entropy", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else rrdset_next(st);

    rrddim_set_by_pointer(st, rd, entropy);
    rrdset_done(st);

    return 0;
}
