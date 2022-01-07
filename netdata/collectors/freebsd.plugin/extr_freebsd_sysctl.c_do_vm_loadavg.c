
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int usec_t ;
struct loadavg {double fscale; scalar_t__* ldavg; } ;
typedef int collected_number ;
struct TYPE_7__ {int update_every; } ;
typedef TYPE_1__ RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,struct loadavg) ;
 int MIN_LOADAVG_UPDATE_EVERY ;
 int NETDATA_CHART_PRIO_SYSTEM_LOAD ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int USEC_PER_SEC ;
 int error (char*) ;
 int * rrddim_add (TYPE_1__*,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (TYPE_1__*,int *,int ) ;
 TYPE_1__* rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (TYPE_1__*) ;
 int rrdset_next (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

int do_vm_loadavg(int update_every, usec_t dt){
    static usec_t next_loadavg_dt = 0;

    if (next_loadavg_dt <= dt) {
        static int mib[2] = {0, 0};
        struct loadavg sysload;

        if (unlikely(GETSYSCTL_SIMPLE("vm.loadavg", mib, sysload))) {
            error("DISABLED: system.load chart");
            error("DISABLED: vm.loadavg module");
            return 1;
        } else {



            static RRDSET *st = ((void*)0);
            static RRDDIM *rd_load1 = ((void*)0), *rd_load2 = ((void*)0), *rd_load3 = ((void*)0);

            if (unlikely(!st)) {
                st = rrdset_create_localhost(
                        "system",
                        "load",
                        ((void*)0),
                        "load",
                        ((void*)0),
                        "System Load Average",
                        "load",
                        "freebsd.plugin",
                        "vm.loadavg",
                        NETDATA_CHART_PRIO_SYSTEM_LOAD,
                        (update_every < MIN_LOADAVG_UPDATE_EVERY) ?
                        MIN_LOADAVG_UPDATE_EVERY : update_every, RRDSET_TYPE_LINE
                );
                rd_load1 = rrddim_add(st, "load1", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load2 = rrddim_add(st, "load5", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load3 = rrddim_add(st, "load15", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
            } else
                rrdset_next(st);

            rrddim_set_by_pointer(st, rd_load1, (collected_number) ((double) sysload.ldavg[0] / sysload.fscale * 1000));
            rrddim_set_by_pointer(st, rd_load2, (collected_number) ((double) sysload.ldavg[1] / sysload.fscale * 1000));
            rrddim_set_by_pointer(st, rd_load3, (collected_number) ((double) sysload.ldavg[2] / sysload.fscale * 1000));
            rrdset_done(st);

            next_loadavg_dt = st->update_every * USEC_PER_SEC;
        }
    }
    else
        next_loadavg_dt -= dt;

    return 0;
}
