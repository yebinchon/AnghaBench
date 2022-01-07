
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_intrans; int v_cow_optim; int v_cow_faults; int v_io_faults; int v_vm_faults; } ;
typedef TYPE_1__ vmmeter_t ;
typedef int usec_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 scalar_t__ GETSYSCTL_SIMPLE (char*,int*,int ) ;
 int NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS ;
 int RRDSET_FLAG_DETAIL ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int error (char*) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_flag_set (int *,int ) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_vm_stats_sys_v_pgfaults(int update_every, usec_t dt) {
    (void)dt;
    static int mib_vm_faults[4] = {0, 0, 0, 0}, mib_io_faults[4] = {0, 0, 0, 0}, mib_cow_faults[4] = {0, 0, 0, 0},
               mib_cow_optim[4] = {0, 0, 0, 0}, mib_intrans[4] = {0, 0, 0, 0};
    vmmeter_t vmmeter_data;

    if (unlikely(GETSYSCTL_SIMPLE("vm.stats.vm.v_vm_faults", mib_vm_faults, vmmeter_data.v_vm_faults) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_io_faults", mib_io_faults, vmmeter_data.v_io_faults) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_cow_faults", mib_cow_faults, vmmeter_data.v_cow_faults) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_cow_optim", mib_cow_optim, vmmeter_data.v_cow_optim) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_intrans", mib_intrans, vmmeter_data.v_intrans))) {
        error("DISABLED: mem.pgfaults chart");
        error("DISABLED: vm.stats.vm.v_pgfaults module");
        return 1;
    } else {



        static RRDSET *st = ((void*)0);
        static RRDDIM *rd_memory = ((void*)0), *rd_io_requiring = ((void*)0), *rd_cow = ((void*)0),
                      *rd_cow_optimized = ((void*)0), *rd_in_transit = ((void*)0);

        if (unlikely(!st)) {
            st = rrdset_create_localhost(
                    "mem",
                    "pgfaults",
                    ((void*)0),
                    "system",
                    ((void*)0),
                    "Memory Page Faults",
                    "page faults/s",
                    "freebsd.plugin",
                    "vm.stats.vm.v_pgfaults",
                    NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

            rd_memory = rrddim_add(st, "memory", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_io_requiring = rrddim_add(st, "io_requiring", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_cow = rrddim_add(st, "cow", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_cow_optimized = rrddim_add(st, "cow_optimized", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_in_transit = rrddim_add(st, "in_transit", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st);

        rrddim_set_by_pointer(st, rd_memory, vmmeter_data.v_vm_faults);
        rrddim_set_by_pointer(st, rd_io_requiring, vmmeter_data.v_io_faults);
        rrddim_set_by_pointer(st, rd_cow, vmmeter_data.v_cow_faults);
        rrddim_set_by_pointer(st, rd_cow_optimized, vmmeter_data.v_cow_optim);
        rrddim_set_by_pointer(st, rd_in_transit, vmmeter_data.v_intrans);
        rrdset_done(st);
    }

    return 0;
}
