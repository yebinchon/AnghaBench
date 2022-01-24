#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
struct TYPE_5__ {unsigned long long tv_sec; int tv_usec; } ;
struct TYPE_4__ {unsigned long long tv_sec; int tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
struct mountinfo {int flags; struct mountinfo* next; } ;
typedef  int /*<<< orphan*/  heartbeat_t ;
struct TYPE_6__ {int rrd_update_every; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 char* CONFIG_SECTION_DISKSPACE ; 
 int MOUNTINFO_IS_BIND ; 
 int MOUNTINFO_IS_DUMMY ; 
 int NETDATA_CHART_PRIO_NETDATA_DISKSPACE ; 
 int /*<<< orphan*/  PLUGIN_DISKSPACE_NAME ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/  RUSAGE_THREAD ; 
 int USEC_PER_SEC ; 
 int check_for_new_mountpoints_every ; 
 int cleanup_mount_points ; 
 int FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 scalar_t__ dict_mountpoints ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mountinfo* disk_mountinfo_root ; 
 int /*<<< orphan*/  diskspace_main_cleanup ; 
 int /*<<< orphan*/  FUNC3 (struct mountinfo*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* localhost ; 
 int /*<<< orphan*/  mount_point_cleanup ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int netdata_exit ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 

void *FUNC17(void *ptr) {
    FUNC10(diskspace_main_cleanup, ptr);

    int vdo_cpu_netdata = FUNC0("plugin:proc", "netdata server resources", 1);

    cleanup_mount_points = FUNC0(CONFIG_SECTION_DISKSPACE, "remove charts of unmounted disks" , cleanup_mount_points);

    int update_every = (int)FUNC1(CONFIG_SECTION_DISKSPACE, "update every", localhost->rrd_update_every);
    if(update_every < localhost->rrd_update_every)
        update_every = localhost->rrd_update_every;

    check_for_new_mountpoints_every = (int)FUNC1(CONFIG_SECTION_DISKSPACE, "check for new mount points every", check_for_new_mountpoints_every);
    if(check_for_new_mountpoints_every < update_every)
        check_for_new_mountpoints_every = update_every;

    struct rusage thread;

    usec_t duration = 0;
    usec_t step = update_every * USEC_PER_SEC;
    heartbeat_t hb;
    FUNC5(&hb);
    while(!netdata_exit) {
        duration = FUNC6(&hb);
        /* usec_t hb_dt = */ FUNC7(&hb, step);

        if(FUNC16(netdata_exit)) break;


        // --------------------------------------------------------------------------
        // this is smart enough not to reload it every time

        FUNC8(0);


        // --------------------------------------------------------------------------
        // disk space metrics

        struct mountinfo *mi;
        for(mi = disk_mountinfo_root; mi; mi = mi->next) {

            if(FUNC16(mi->flags & (MOUNTINFO_IS_DUMMY | MOUNTINFO_IS_BIND)))
                continue;

            FUNC3(mi, update_every);
            if(FUNC16(netdata_exit)) break;
        }

        if(FUNC16(netdata_exit)) break;

        if(dict_mountpoints)
            FUNC2(dict_mountpoints, mount_point_cleanup, NULL);

        if(vdo_cpu_netdata) {
            static RRDSET *stcpu_thread = NULL, *st_duration = NULL;
            static RRDDIM *rd_user = NULL, *rd_system = NULL, *rd_duration = NULL;

            // ----------------------------------------------------------------

            FUNC4(RUSAGE_THREAD, &thread);

            if(FUNC16(!stcpu_thread)) {
                stcpu_thread = FUNC13(
                        "netdata"
                        , "plugin_diskspace"
                        , NULL
                        , "diskspace"
                        , NULL
                        , "NetData Disk Space Plugin CPU usage"
                        , "milliseconds/s"
                        , PLUGIN_DISKSPACE_NAME
                        , NULL
                        , NETDATA_CHART_PRIO_NETDATA_DISKSPACE
                        , update_every
                        , RRDSET_TYPE_STACKED
                );

                rd_user   = FUNC11(stcpu_thread, "user", NULL, 1, 1000, RRD_ALGORITHM_INCREMENTAL);
                rd_system = FUNC11(stcpu_thread, "system", NULL, 1, 1000, RRD_ALGORITHM_INCREMENTAL);
            }
            else
                FUNC15(stcpu_thread);

            FUNC12(stcpu_thread, rd_user, thread.ru_utime.tv_sec * 1000000ULL + thread.ru_utime.tv_usec);
            FUNC12(stcpu_thread, rd_system, thread.ru_stime.tv_sec * 1000000ULL + thread.ru_stime.tv_usec);
            FUNC14(stcpu_thread);

            // ----------------------------------------------------------------

            if(FUNC16(!st_duration)) {
                st_duration = FUNC13(
                        "netdata"
                        , "plugin_diskspace_dt"
                        , NULL
                        , "diskspace"
                        , NULL
                        , "NetData Disk Space Plugin Duration"
                        , "milliseconds/run"
                        , PLUGIN_DISKSPACE_NAME
                        , NULL
                        , 132021
                        , update_every
                        , RRDSET_TYPE_AREA
                );

                rd_duration = FUNC11(st_duration, "duration", NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
            }
            else
                FUNC15(st_duration);

            FUNC12(st_duration, rd_duration, duration);
            FUNC14(st_duration);

            // ----------------------------------------------------------------

            if(FUNC16(netdata_exit)) break;
        }
    }

    FUNC9(1);
    return NULL;
}