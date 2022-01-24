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
struct freebsd_module {char* name; int enabled; unsigned long long duration; int /*<<< orphan*/ * rd; int /*<<< orphan*/  dim; int /*<<< orphan*/  (* func ) (int,int) ;} ;
typedef  int /*<<< orphan*/  heartbeat_t ;
struct TYPE_2__ {int rrd_update_every; } ;
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROCNETDEV_LOOP ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int USEC_PER_SEC ; 
 void* FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  freebsd_main_cleanup ; 
 struct freebsd_module* freebsd_modules ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* localhost ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int netdata_exit ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 scalar_t__ FUNC18 (int) ; 

void *FUNC19(void *ptr) {
    FUNC9(freebsd_main_cleanup, ptr);

    int vdo_cpu_netdata = FUNC0("plugin:freebsd", "netdata server resources", 1);

    // initialize FreeBSD plugin
    if (FUNC2())
        FUNC7(1);

    // check the enabled status for each module
    int i;
    for(i = 0 ; freebsd_modules[i].name ;i++) {
        struct freebsd_module *pm = &freebsd_modules[i];

        pm->enabled = FUNC0("plugin:freebsd", pm->name, pm->enabled);
        pm->duration = 0ULL;
        pm->rd = NULL;
    }

    usec_t step = localhost->rrd_update_every * USEC_PER_SEC;
    heartbeat_t hb;
    FUNC4(&hb);

    while(!netdata_exit) {
        usec_t hb_dt = FUNC6(&hb, step);
        usec_t duration = 0ULL;

        if(FUNC18(netdata_exit)) break;

        // BEGIN -- the job to be done

        for(i = 0 ; freebsd_modules[i].name ;i++) {
            struct freebsd_module *pm = &freebsd_modules[i];
            if(FUNC18(!pm->enabled)) continue;

            FUNC1(D_PROCNETDEV_LOOP, "FREEBSD calling %s.", pm->name);

            pm->enabled = !pm->func(localhost->rrd_update_every, hb_dt);
            pm->duration = FUNC5(&hb) - duration;
            duration += pm->duration;

            if(FUNC18(netdata_exit)) break;
        }

        // END -- the job is done

        // --------------------------------------------------------------------

        if(vdo_cpu_netdata) {
            static RRDSET *st = NULL;

            if(FUNC18(!st)) {
                st = FUNC15("netdata", "plugin_freebsd_modules");

                if(!st) {
                    st = FUNC13(
                            "netdata"
                            , "plugin_freebsd_modules"
                            , NULL
                            , "freebsd"
                            , NULL
                            , "NetData FreeBSD Plugin Modules Durations"
                            , "milliseconds/run"
                            , "netdata"
                            , "stats"
                            , 132001
                            , localhost->rrd_update_every
                            , RRDSET_TYPE_STACKED
                    );

                    for(i = 0 ; freebsd_modules[i].name ;i++) {
                        struct freebsd_module *pm = &freebsd_modules[i];
                        if(FUNC18(!pm->enabled)) continue;

                        pm->rd = FUNC11(st, pm->dim, NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                    }
                }
            }
            else FUNC16(st);

            for(i = 0 ; freebsd_modules[i].name ;i++) {
                struct freebsd_module *pm = &freebsd_modules[i];
                if(FUNC18(!pm->enabled)) continue;

                FUNC12(st, pm->rd, pm->duration);
            }
            FUNC14(st);

            FUNC3();
            FUNC10();
        }
    }

    FUNC8(1);
    return NULL;
}