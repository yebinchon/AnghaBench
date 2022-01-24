#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int v_active_count; int v_inactive_count; int v_wire_count; int v_cache_count; int v_laundry_count; int v_free_count; } ;
typedef  TYPE_1__ vmmeter_t ;
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/  MEGA_FACTOR ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_RAM ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int system_pagesize ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(int update_every, usec_t dt) {
    (void)dt;
    static int mib_active_count[4] = {0, 0, 0, 0}, mib_inactive_count[4] = {0, 0, 0, 0}, mib_wire_count[4] = {0, 0, 0, 0},
               mib_cache_count[4] = {0, 0, 0, 0}, mib_vfs_bufspace[2] = {0, 0}, mib_free_count[4] = {0, 0, 0, 0};
    vmmeter_t vmmeter_data;
    int vfs_bufspace_count;

#if defined(NETDATA_COLLECT_LAUNDRY)
    static int mib_laundry_count[4] = {0, 0, 0, 0};
#endif

    if (FUNC7(FUNC0("vm.stats.vm.v_active_count",   mib_active_count,   vmmeter_data.v_active_count) ||
                 FUNC0("vm.stats.vm.v_inactive_count", mib_inactive_count, vmmeter_data.v_inactive_count) ||
                 FUNC0("vm.stats.vm.v_wire_count",     mib_wire_count,     vmmeter_data.v_wire_count) ||
#if __FreeBSD_version < 1200016
                 FUNC0("vm.stats.vm.v_cache_count",    mib_cache_count,    vmmeter_data.v_cache_count) ||
#endif
#if defined(NETDATA_COLLECT_LAUNDRY)
                 GETSYSCTL_SIMPLE("vm.stats.vm.v_laundry_count",  mib_laundry_count,  vmmeter_data.v_laundry_count) ||
#endif
                 FUNC0("vfs.bufspace",                 mib_vfs_bufspace,     vfs_bufspace_count) ||
                 FUNC0("vm.stats.vm.v_free_count",     mib_free_count,     vmmeter_data.v_free_count))) {
        FUNC1("DISABLED: system.ram chart");
        FUNC1("DISABLED: system.ram module");
        return 1;
    } else {

        // --------------------------------------------------------------------

        static RRDSET *st = NULL;
        static RRDDIM *rd_free = NULL, *rd_active = NULL, *rd_inactive = NULL, *rd_wired = NULL,
                      *rd_cache = NULL, *rd_buffers = NULL;

#if defined(NETDATA_COLLECT_LAUNDRY)
        static RRDDIM *rd_laundry = NULL;
#endif

        if (FUNC7(!st)) {
            st = FUNC4(
                    "system",
                    "ram",
                    NULL,
                    "ram",
                    NULL,
                    "System RAM",
                    "MiB",
                    "freebsd.plugin",
                    "system.ram",
                    NETDATA_CHART_PRIO_SYSTEM_RAM,
                    update_every,
                    RRDSET_TYPE_STACKED
            );

            rd_free     = FUNC2(st, "free",     NULL, system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
            rd_active   = FUNC2(st, "active",   NULL, system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
            rd_inactive = FUNC2(st, "inactive", NULL, system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
            rd_wired    = FUNC2(st, "wired",    NULL, system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
#if __FreeBSD_version < 1200016
            rd_cache    = FUNC2(st, "cache",    NULL, system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
#endif
#if defined(NETDATA_COLLECT_LAUNDRY)
            rd_laundry  = rrddim_add(st, "laundry",  NULL, system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
#endif
            rd_buffers  = FUNC2(st, "buffers",  NULL, 1, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC6(st);

        FUNC3(st, rd_free,     vmmeter_data.v_free_count);
        FUNC3(st, rd_active,   vmmeter_data.v_active_count);
        FUNC3(st, rd_inactive, vmmeter_data.v_inactive_count);
        FUNC3(st, rd_wired,    vmmeter_data.v_wire_count);
#if __FreeBSD_version < 1200016
        FUNC3(st, rd_cache,    vmmeter_data.v_cache_count);
#endif
#if defined(NETDATA_COLLECT_LAUNDRY)
        rrddim_set_by_pointer(st, rd_laundry,  vmmeter_data.v_laundry_count);
#endif
        FUNC3(st, rd_buffers,  vfs_bufspace_count);
        FUNC5(st);
    }

    return 0;
}