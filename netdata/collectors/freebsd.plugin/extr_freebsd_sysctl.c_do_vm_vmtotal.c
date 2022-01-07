
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct vmtotal {scalar_t__ t_rm; scalar_t__ t_pw; scalar_t__ t_dw; scalar_t__ t_rq; scalar_t__ t_sw; scalar_t__ t_sl; } ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,struct vmtotal) ;
 int MEGA_FACTOR ;
 int NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED ;
 int NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES ;
 int NETDATA_CHART_PRIO_SYSTEM_PROCESSES ;
 int RRDSET_FLAG_DETAIL ;
 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int config_get_boolean (char*,char*,int) ;
 int error (char*) ;
 scalar_t__ likely (int) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,scalar_t__) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_flag_set (int *,int ) ;
 int rrdset_next (int *) ;
 int system_pagesize ;
 scalar_t__ unlikely (int) ;

int do_vm_vmtotal(int update_every, usec_t dt) {
    (void)dt;
    static int do_all_processes = -1, do_processes = -1, do_committed = -1;

    if (unlikely(do_all_processes == -1)) {
        do_all_processes = config_get_boolean("plugin:freebsd:vm.vmtotal", "enable total processes", 1);
        do_processes = config_get_boolean("plugin:freebsd:vm.vmtotal", "processes running", 1);
        do_committed = config_get_boolean("plugin:freebsd:vm.vmtotal", "committed memory", 1);
    }

    if (likely(do_all_processes | do_processes | do_committed)) {
        static int mib[2] = {0, 0};
        struct vmtotal vmtotal_data;

        if (unlikely(GETSYSCTL_SIMPLE("vm.vmtotal", mib, vmtotal_data))) {
            do_all_processes = 0;
            error("DISABLED: system.active_processes chart");
            do_processes = 0;
            error("DISABLED: system.processes chart");
            do_committed = 0;
            error("DISABLED: mem.committed chart");
            error("DISABLED: vm.vmtotal module");
            return 1;
        } else {



            if (likely(do_all_processes)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "system",
                            "active_processes",
                            ((void*)0),
                            "processes",
                            ((void*)0),
                            "System Active Processes",
                            "processes",
                            "freebsd.plugin",
                            "vm.vmtotal",
                            NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES,
                            update_every,
                            RRDSET_TYPE_LINE
                    );
                    rd = rrddim_add(st, "active", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
                }
                else rrdset_next(st);

                rrddim_set_by_pointer(st, rd, (vmtotal_data.t_rq + vmtotal_data.t_dw + vmtotal_data.t_pw + vmtotal_data.t_sl + vmtotal_data.t_sw));
                rrdset_done(st);
            }



            if (likely(do_processes)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_running = ((void*)0), *rd_blocked = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "system",
                            "processes",
                            ((void*)0),
                            "processes",
                            ((void*)0),
                            "System Processes",
                            "processes",
                            "freebsd.plugin",
                            "vm.vmtotal",
                            NETDATA_CHART_PRIO_SYSTEM_PROCESSES,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_running = rrddim_add(st, "running", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
                    rd_blocked = rrddim_add(st, "blocked", ((void*)0), -1, 1, RRD_ALGORITHM_ABSOLUTE);
                }
                else rrdset_next(st);

                rrddim_set_by_pointer(st, rd_running, vmtotal_data.t_rq);
                rrddim_set_by_pointer(st, rd_blocked, (vmtotal_data.t_dw + vmtotal_data.t_pw));
                rrdset_done(st);
            }



            if (likely(do_committed)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "mem",
                            "committed",
                            ((void*)0),
                            "system",
                            ((void*)0),
                            "Committed (Allocated) Memory",
                            "MiB",
                            "freebsd.plugin",
                            "vm.vmtotal",
                            NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED,
                            update_every,
                            RRDSET_TYPE_AREA
                    );
                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd = rrddim_add(st, "Committed_AS", ((void*)0), system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
                }
                else rrdset_next(st);

                rrddim_set_by_pointer(st, rd, vmtotal_data.t_rm);
                rrdset_done(st);
            }
        }
    } else {
        error("DISABLED: vm.vmtotal module");
        return 1;
    }

    return 0;
}
