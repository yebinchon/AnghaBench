
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_active_count; int v_inactive_count; int v_wire_count; int v_cache_count; int v_laundry_count; int v_free_count; } ;
typedef TYPE_1__ vmmeter_t ;
typedef int usec_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 scalar_t__ GETSYSCTL_SIMPLE (char*,int*,int) ;
 int MEGA_FACTOR ;
 int NETDATA_CHART_PRIO_SYSTEM_RAM ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int error (char*) ;
 int * rrddim_add (int *,char*,int *,int,int ,int ) ;
 int rrddim_set_by_pointer (int *,int *,int) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 int system_pagesize ;
 scalar_t__ unlikely (int) ;

int do_system_ram(int update_every, usec_t dt) {
    (void)dt;
    static int mib_active_count[4] = {0, 0, 0, 0}, mib_inactive_count[4] = {0, 0, 0, 0}, mib_wire_count[4] = {0, 0, 0, 0},
               mib_cache_count[4] = {0, 0, 0, 0}, mib_vfs_bufspace[2] = {0, 0}, mib_free_count[4] = {0, 0, 0, 0};
    vmmeter_t vmmeter_data;
    int vfs_bufspace_count;





    if (unlikely(GETSYSCTL_SIMPLE("vm.stats.vm.v_active_count", mib_active_count, vmmeter_data.v_active_count) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_inactive_count", mib_inactive_count, vmmeter_data.v_inactive_count) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_wire_count", mib_wire_count, vmmeter_data.v_wire_count) ||

                 GETSYSCTL_SIMPLE("vm.stats.vm.v_cache_count", mib_cache_count, vmmeter_data.v_cache_count) ||




                 GETSYSCTL_SIMPLE("vfs.bufspace", mib_vfs_bufspace, vfs_bufspace_count) ||
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_free_count", mib_free_count, vmmeter_data.v_free_count))) {
        error("DISABLED: system.ram chart");
        error("DISABLED: system.ram module");
        return 1;
    } else {



        static RRDSET *st = ((void*)0);
        static RRDDIM *rd_free = ((void*)0), *rd_active = ((void*)0), *rd_inactive = ((void*)0), *rd_wired = ((void*)0),
                      *rd_cache = ((void*)0), *rd_buffers = ((void*)0);





        if (unlikely(!st)) {
            st = rrdset_create_localhost(
                    "system",
                    "ram",
                    ((void*)0),
                    "ram",
                    ((void*)0),
                    "System RAM",
                    "MiB",
                    "freebsd.plugin",
                    "system.ram",
                    NETDATA_CHART_PRIO_SYSTEM_RAM,
                    update_every,
                    RRDSET_TYPE_STACKED
            );

            rd_free = rrddim_add(st, "free", ((void*)0), system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
            rd_active = rrddim_add(st, "active", ((void*)0), system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
            rd_inactive = rrddim_add(st, "inactive", ((void*)0), system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
            rd_wired = rrddim_add(st, "wired", ((void*)0), system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);

            rd_cache = rrddim_add(st, "cache", ((void*)0), system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);




            rd_buffers = rrddim_add(st, "buffers", ((void*)0), 1, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st);

        rrddim_set_by_pointer(st, rd_free, vmmeter_data.v_free_count);
        rrddim_set_by_pointer(st, rd_active, vmmeter_data.v_active_count);
        rrddim_set_by_pointer(st, rd_inactive, vmmeter_data.v_inactive_count);
        rrddim_set_by_pointer(st, rd_wired, vmmeter_data.v_wire_count);

        rrddim_set_by_pointer(st, rd_cache, vmmeter_data.v_cache_count);




        rrddim_set_by_pointer(st, rd_buffers, vfs_bufspace_count);
        rrdset_done(st);
    }

    return 0;
}
