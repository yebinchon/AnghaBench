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
typedef  int /*<<< orphan*/  heartbeat_t ;
struct TYPE_2__ {int rrd_update_every; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROCNETDEV_LOOP ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* localhost ; 
 int /*<<< orphan*/  macos_main_cleanup ; 
 int /*<<< orphan*/  netdata_exit ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void *FUNC12(void *ptr) {
    FUNC9(macos_main_cleanup, ptr);

    // when ZERO, attempt to do it
    int vdo_cpu_netdata             = !FUNC0("plugin:macos", "netdata server resources", 1);
    int vdo_macos_sysctl            = !FUNC0("plugin:macos", "sysctl", 1);
    int vdo_macos_mach_smi          = !FUNC0("plugin:macos", "mach system management interface", 1);
    int vdo_macos_iokit             = !FUNC0("plugin:macos", "iokit", 1);

    // keep track of the time each module was called
    unsigned long long sutime_macos_sysctl = 0ULL;
    unsigned long long sutime_macos_mach_smi = 0ULL;
    unsigned long long sutime_macos_iokit = 0ULL;

    usec_t step = localhost->rrd_update_every * USEC_PER_SEC;
    heartbeat_t hb;
    FUNC6(&hb);

    while(!netdata_exit) {
        usec_t hb_dt = FUNC7(&hb, step);

        if(FUNC11(netdata_exit)) break;

        // BEGIN -- the job to be done

        if(!vdo_macos_sysctl) {
            FUNC1(D_PROCNETDEV_LOOP, "MACOS: calling do_macos_sysctl().");
            vdo_macos_sysctl = FUNC4(localhost->rrd_update_every, hb_dt);
        }
        if(FUNC11(netdata_exit)) break;

        if(!vdo_macos_mach_smi) {
            FUNC1(D_PROCNETDEV_LOOP, "MACOS: calling do_macos_mach_smi().");
            vdo_macos_mach_smi = FUNC3(localhost->rrd_update_every, hb_dt);
        }
        if(FUNC11(netdata_exit)) break;

        if(!vdo_macos_iokit) {
            FUNC1(D_PROCNETDEV_LOOP, "MACOS: calling do_macos_iokit().");
            vdo_macos_iokit = FUNC2(localhost->rrd_update_every, hb_dt);
        }
        if(FUNC11(netdata_exit)) break;

        // END -- the job is done

        // --------------------------------------------------------------------

        if(!vdo_cpu_netdata) {
            FUNC5();
            FUNC10();
        }
    }

    FUNC8(1);
    return NULL;
}