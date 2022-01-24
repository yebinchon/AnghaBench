#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
struct loadavg {double fscale; scalar_t__* ldavg; } ;
typedef  int /*<<< orphan*/  collected_number ;
struct TYPE_7__ {int update_every; } ;
typedef  TYPE_1__ RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,struct loadavg) ; 
 int MIN_LOADAVG_UPDATE_EVERY ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_LOAD ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(int update_every, usec_t dt){
    static usec_t next_loadavg_dt = 0;

    if (next_loadavg_dt <= dt) {
        static int mib[2] = {0, 0};
        struct loadavg sysload;

        if (FUNC7(FUNC0("vm.loadavg", mib, sysload))) {
            FUNC1("DISABLED: system.load chart");
            FUNC1("DISABLED: vm.loadavg module");
            return 1;
        } else {

            // --------------------------------------------------------------------

            static RRDSET *st = NULL;
            static RRDDIM *rd_load1 = NULL, *rd_load2 = NULL, *rd_load3 = NULL;

            if (FUNC7(!st)) {
                st = FUNC4(
                        "system",
                        "load",
                        NULL,
                        "load",
                        NULL,
                        "System Load Average",
                        "load",
                        "freebsd.plugin",
                        "vm.loadavg",
                        NETDATA_CHART_PRIO_SYSTEM_LOAD,
                        (update_every < MIN_LOADAVG_UPDATE_EVERY) ?
                        MIN_LOADAVG_UPDATE_EVERY : update_every, RRDSET_TYPE_LINE
                );
                rd_load1 = FUNC2(st, "load1", NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load2 = FUNC2(st, "load5", NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                rd_load3 = FUNC2(st, "load15", NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
            } else
                FUNC6(st);

            FUNC3(st, rd_load1, (collected_number) ((double) sysload.ldavg[0] / sysload.fscale * 1000));
            FUNC3(st, rd_load2, (collected_number) ((double) sysload.ldavg[1] / sysload.fscale * 1000));
            FUNC3(st, rd_load3, (collected_number) ((double) sysload.ldavg[2] / sysload.fscale * 1000));
            FUNC5(st);

            next_loadavg_dt = st->update_every * USEC_PER_SEC;
        }
    }
    else
        next_loadavg_dt -= dt;

    return 0;
}