#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_4__ {unsigned long long tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {unsigned long long tv_sec; scalar_t__ tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
typedef  int /*<<< orphan*/  heartbeat_t ;
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  PLUGIN_CGROUPS_NAME ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/  RUSAGE_THREAD ; 
 scalar_t__ USEC_PER_SEC ; 
 scalar_t__ cgroup_check_for_new_every ; 
 int /*<<< orphan*/  cgroup_main_cleanup ; 
 int /*<<< orphan*/  cgroup_root ; 
 scalar_t__ cgroup_update_every ; 
 scalar_t__ cgroups_check ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int netdata_exit ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

void *FUNC16(void *ptr) {
    FUNC6(cgroup_main_cleanup, ptr);

    struct rusage thread;

    // when ZERO, attempt to do it
    int vdo_cpu_netdata = FUNC0("plugin:cgroups", "cgroups plugin resource charts", 1);

    FUNC8();

    RRDSET *stcpu_thread = NULL;

    heartbeat_t hb;
    FUNC3(&hb);
    usec_t step = cgroup_update_every * USEC_PER_SEC;
    usec_t find_every = cgroup_check_for_new_every * USEC_PER_SEC, find_dt = 0;

    while(!netdata_exit) {
        usec_t hb_dt = FUNC4(&hb, step);
        if(FUNC14(netdata_exit)) break;

        // BEGIN -- the job to be done

        find_dt += hb_dt;
        if(FUNC14(find_dt >= find_every || cgroups_check)) {
            FUNC1();
            find_dt = 0;
            cgroups_check = 0;
        }

        FUNC7(cgroup_root);
        FUNC15(cgroup_update_every);

        // END -- the job is done

        // --------------------------------------------------------------------

        if(vdo_cpu_netdata) {
            FUNC2(RUSAGE_THREAD, &thread);

            if(FUNC14(!stcpu_thread)) {

                stcpu_thread = FUNC11(
                        "netdata"
                        , "plugin_cgroups_cpu"
                        , NULL
                        , "cgroups"
                        , NULL
                        , "NetData CGroups Plugin CPU usage"
                        , "milliseconds/s"
                        , PLUGIN_CGROUPS_NAME
                        , "stats"
                        , 132000
                        , cgroup_update_every
                        , RRDSET_TYPE_STACKED
                );

                FUNC9(stcpu_thread, "user",  NULL,  1, 1000, RRD_ALGORITHM_INCREMENTAL);
                FUNC9(stcpu_thread, "system", NULL, 1, 1000, RRD_ALGORITHM_INCREMENTAL);
            }
            else
                FUNC13(stcpu_thread);

            FUNC10(stcpu_thread, "user"  , thread.ru_utime.tv_sec * 1000000ULL + thread.ru_utime.tv_usec);
            FUNC10(stcpu_thread, "system", thread.ru_stime.tv_sec * 1000000ULL + thread.ru_stime.tv_usec);
            FUNC12(stcpu_thread);
        }
    }

    FUNC5(1);
    return NULL;
}