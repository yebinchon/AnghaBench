
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_swappgsout; int v_swappgsin; } ;
typedef TYPE_1__ vmmeter_t ;
typedef int usec_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 scalar_t__ GETSYSCTL_SIMPLE (char*,int*,int ) ;
 int KILO_FACTOR ;
 int NETDATA_CHART_PRIO_SYSTEM_SWAPIO ;
 int RRDSET_TYPE_AREA ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int error (char*) ;
 int * rrddim_add (int *,char*,int *,int ,int ,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 int system_pagesize ;
 scalar_t__ unlikely (int) ;

int do_vm_stats_sys_v_swappgs(int update_every, usec_t dt) {
    (void)dt;
    static int mib_swappgsin[4] = {0, 0, 0, 0}, mib_swappgsout[4] = {0, 0, 0, 0};
    vmmeter_t vmmeter_data;

    if (unlikely(GETSYSCTL_SIMPLE("vm.stats.vm.v_swappgsin", mib_swappgsin, vmmeter_data.v_swappgsin) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_swappgsout", mib_swappgsout, vmmeter_data.v_swappgsout))) {
        error("DISABLED: system.swapio chart");
        error("DISABLED: vm.stats.vm.v_swappgs module");
        return 1;
    } else {



        static RRDSET *st = ((void*)0);
        static RRDDIM *rd_in = ((void*)0), *rd_out = ((void*)0);

        if (unlikely(!st)) {
            st = rrdset_create_localhost(
                    "system",
                    "swapio",
                    ((void*)0),
                    "swap",
                    ((void*)0),
                    "Swap I/O",
                    "KiB/s",
                    "freebsd.plugin",
                    "vm.stats.vm.v_swappgs",
                    NETDATA_CHART_PRIO_SYSTEM_SWAPIO,
                    update_every,
                    RRDSET_TYPE_AREA
            );

            rd_in = rrddim_add(st, "in", ((void*)0), system_pagesize, KILO_FACTOR, RRD_ALGORITHM_INCREMENTAL);
            rd_out = rrddim_add(st, "out", ((void*)0), -system_pagesize, KILO_FACTOR, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st);

        rrddim_set_by_pointer(st, rd_in, vmmeter_data.v_swappgsin);
        rrddim_set_by_pointer(st, rd_out, vmmeter_data.v_swappgsout);
        rrdset_done(st);
    }

    return 0;
}
