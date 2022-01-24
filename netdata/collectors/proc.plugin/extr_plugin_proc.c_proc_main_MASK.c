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
typedef  int usec_t ;
struct proc_module {char* name; int enabled; unsigned long long duration; int /*<<< orphan*/ * rd; int /*<<< orphan*/  dim; int /*<<< orphan*/  (* func ) (int,int) ;} ;
typedef  int /*<<< orphan*/  heartbeat_t ;
struct TYPE_2__ {int rrd_update_every; } ;
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_BOOLEAN_NO ; 
 int /*<<< orphan*/  CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  D_PROCNETDEV_LOOP ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int USEC_PER_SEC ; 
 void* FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* localhost ; 
 int netdata_exit ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  proc_main_cleanup ; 
 struct proc_module* proc_modules ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 scalar_t__ FUNC16 (int) ; 

void *FUNC17(void *ptr) {
    FUNC7(proc_main_cleanup, ptr);

    int vdo_cpu_netdata = FUNC0("plugin:proc", "netdata server resources", CONFIG_BOOLEAN_YES);

    FUNC0("plugin:proc", "/proc/pagetypeinfo", CONFIG_BOOLEAN_NO);

    // check the enabled status for each module
    int i;
    for(i = 0 ; proc_modules[i].name ;i++) {
        struct proc_module *pm = &proc_modules[i];

        pm->enabled = FUNC0("plugin:proc", pm->name, CONFIG_BOOLEAN_YES);
        pm->duration = 0ULL;
        pm->rd = NULL;
    }

    usec_t step = localhost->rrd_update_every * USEC_PER_SEC;
    heartbeat_t hb;
    FUNC3(&hb);
    size_t iterations = 0;

    while(!netdata_exit) {
        iterations++;
        (void)iterations;

        usec_t hb_dt = FUNC5(&hb, step);
        usec_t duration = 0ULL;

        if(FUNC16(netdata_exit)) break;

        // BEGIN -- the job to be done

        for(i = 0 ; proc_modules[i].name ;i++) {
            struct proc_module *pm = &proc_modules[i];
            if(FUNC16(!pm->enabled)) continue;

            FUNC1(D_PROCNETDEV_LOOP, "PROC calling %s.", pm->name);

//#ifdef NETDATA_LOG_ALLOCATIONS
//            if(pm->func == do_proc_interrupts)
//                log_thread_memory_allocations = iterations;
//#endif
            pm->enabled = !pm->func(localhost->rrd_update_every, hb_dt);
            pm->duration = FUNC4(&hb) - duration;
            duration += pm->duration;

//#ifdef NETDATA_LOG_ALLOCATIONS
//            if(pm->func == do_proc_interrupts)
//                log_thread_memory_allocations = 0;
//#endif

            if(FUNC16(netdata_exit)) break;
        }

        // END -- the job is done

        // --------------------------------------------------------------------

        if(vdo_cpu_netdata) {
            static RRDSET *st = NULL;

            if(FUNC16(!st)) {
                st = FUNC13("netdata", "plugin_proc_modules");

                if(!st) {
                    st = FUNC11(
                            "netdata"
                            , "plugin_proc_modules"
                            , NULL
                            , "proc"
                            , NULL
                            , "NetData Proc Plugin Modules Durations"
                            , "milliseconds/run"
                            , "netdata"
                            , "stats"
                            , 132001
                            , localhost->rrd_update_every
                            , RRDSET_TYPE_STACKED
                    );

                    for(i = 0 ; proc_modules[i].name ;i++) {
                        struct proc_module *pm = &proc_modules[i];
                        if(FUNC16(!pm->enabled)) continue;

                        pm->rd = FUNC9(st, pm->dim, NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                    }
                }
            }
            else FUNC14(st);

            for(i = 0 ; proc_modules[i].name ;i++) {
                struct proc_module *pm = &proc_modules[i];
                if(FUNC16(!pm->enabled)) continue;

                FUNC10(st, pm->rd, pm->duration);
            }
            FUNC12(st);

            FUNC2();
            FUNC8();
        }
    }

    FUNC6(1);
    return NULL;
}