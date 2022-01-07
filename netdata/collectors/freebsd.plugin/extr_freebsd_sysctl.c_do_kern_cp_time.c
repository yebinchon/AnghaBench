
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int CPUSTATES ;
 int GETSYSCTL_SIMPLE (char*,int*,long*) ;
 int NETDATA_CHART_PRIO_SYSTEM_CPU ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL ;
 int error (char*,...) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_hide (int *,char*) ;
 int rrddim_set_by_pointer (int *,int *,long) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,char*,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_kern_cp_time(int update_every, usec_t dt) {
    (void)dt;

    if (unlikely(CPUSTATES != 5)) {
        error("FREEBSD: There are %d CPU states (5 was expected)", CPUSTATES);
        error("DISABLED: system.cpu chart");
        error("DISABLED: kern.cp_time module");
        return 1;
    } else {
        static int mib[2] = {0, 0};
        long cp_time[CPUSTATES];

        if (unlikely(GETSYSCTL_SIMPLE("kern.cp_time", mib, cp_time))) {
            error("DISABLED: system.cpu chart");
            error("DISABLED: kern.cp_time module");
            return 1;
        } else {



            static RRDSET *st = ((void*)0);
            static RRDDIM *rd_nice = ((void*)0), *rd_system = ((void*)0), *rd_user = ((void*)0), *rd_interrupt = ((void*)0), *rd_idle = ((void*)0);

            if (unlikely(!st)) {
                st = rrdset_create_localhost(
                        "system",
                        "cpu",
                        ((void*)0),
                        "cpu",
                        "system.cpu",
                        "Total CPU utilization",
                        "percentage",
                        "freebsd.plugin",
                        "kern.cp_time",
                        NETDATA_CHART_PRIO_SYSTEM_CPU,
                        update_every,
                        RRDSET_TYPE_STACKED
                );

                rd_nice = rrddim_add(st, "nice", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_system = rrddim_add(st, "system", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_user = rrddim_add(st, "user", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_interrupt = rrddim_add(st, "interrupt", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_idle = rrddim_add(st, "idle", ((void*)0), 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rrddim_hide(st, "idle");
            }
            else rrdset_next(st);

            rrddim_set_by_pointer(st, rd_nice, cp_time[1]);
            rrddim_set_by_pointer(st, rd_system, cp_time[2]);
            rrddim_set_by_pointer(st, rd_user, cp_time[0]);
            rrddim_set_by_pointer(st, rd_interrupt, cp_time[3]);
            rrddim_set_by_pointer(st, rd_idle, cp_time[4]);
            rrdset_done(st);
        }
    }

    return 0;
}
