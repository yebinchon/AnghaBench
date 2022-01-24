#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int CPUSTATES ; 
 int FUNC0 (char*,int*,long*) ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_CPU ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(int update_every, usec_t dt) {
    (void)dt;

    if (FUNC8(CPUSTATES != 5)) {
        FUNC1("FREEBSD: There are %d CPU states (5 was expected)", CPUSTATES);
        FUNC1("DISABLED: system.cpu chart");
        FUNC1("DISABLED: kern.cp_time module");
        return 1;
    } else {
        static int mib[2] = {0, 0};
        long cp_time[CPUSTATES];

        if (FUNC8(FUNC0("kern.cp_time", mib, cp_time))) {
            FUNC1("DISABLED: system.cpu chart");
            FUNC1("DISABLED: kern.cp_time module");
            return 1;
        } else {

            // --------------------------------------------------------------------

            static RRDSET *st = NULL;
            static RRDDIM *rd_nice = NULL, *rd_system = NULL, *rd_user = NULL, *rd_interrupt = NULL, *rd_idle = NULL;

            if (FUNC8(!st)) {
                st = FUNC5(
                        "system",
                        "cpu",
                        NULL,
                        "cpu",
                        "system.cpu",
                        "Total CPU utilization",
                        "percentage",
                        "freebsd.plugin",
                        "kern.cp_time",
                        NETDATA_CHART_PRIO_SYSTEM_CPU,
                        update_every,
                        RRDSET_TYPE_STACKED
                );

                rd_nice         = FUNC2(st, "nice", NULL, 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_system       = FUNC2(st, "system", NULL, 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_user         = FUNC2(st, "user", NULL, 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_interrupt    = FUNC2(st, "interrupt", NULL, 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                rd_idle         = FUNC2(st, "idle", NULL, 1, 1, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL);
                FUNC3(st, "idle");
            }
            else FUNC7(st);

            FUNC4(st, rd_nice, cp_time[1]);
            FUNC4(st, rd_system, cp_time[2]);
            FUNC4(st, rd_user, cp_time[0]);
            FUNC4(st, rd_interrupt, cp_time[3]);
            FUNC4(st, rd_idle, cp_time[4]);
            FUNC6(st);
        }
    }

    return 0;
}