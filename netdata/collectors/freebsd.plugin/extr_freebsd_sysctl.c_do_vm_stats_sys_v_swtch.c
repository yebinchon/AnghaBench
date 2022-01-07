
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int u_int ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,int ) ;
 int NETDATA_CHART_PRIO_SYSTEM_CTXT ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int error (char*) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_vm_stats_sys_v_swtch(int update_every, usec_t dt) {
    (void)dt;
    static int mib[4] = {0, 0, 0, 0};
    u_int ctxt_number;

    if (unlikely(GETSYSCTL_SIMPLE("vm.stats.sys.v_swtch", mib, ctxt_number))) {
        error("DISABLED: system.ctxt chart");
        error("DISABLED: vm.stats.sys.v_swtch module");
        return 1;
    } else {



        static RRDSET *st = ((void*)0);
        static RRDDIM *rd = ((void*)0);

        if (unlikely(!st)) {
            st = rrdset_create_localhost(
                    "system",
                    "ctxt",
                    ((void*)0),
                    "processes",
                    ((void*)0),
                    "CPU Context Switches",
                    "context switches/s",
                    "freebsd.plugin",
                    "vm.stats.sys.v_swtch",
                    NETDATA_CHART_PRIO_SYSTEM_CTXT,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd = rrddim_add(st, "switches", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st);

        rrddim_set_by_pointer(st, rd, ctxt_number);
        rrdset_done(st);
    }

    return 0;
}
