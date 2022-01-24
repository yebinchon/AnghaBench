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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_SOFT_INTR ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(int update_every, usec_t dt) {
    (void)dt;
    static int mib[4] = {0, 0, 0, 0};
    u_int soft_intr_number;

    if (FUNC7(FUNC0("vm.stats.sys.v_soft", mib, soft_intr_number))) {
        FUNC1("DISABLED: system.dev_intr chart");
        FUNC1("DISABLED: vm.stats.sys.v_soft module");
        return 1;
    } else {

        // --------------------------------------------------------------------

        static RRDSET *st = NULL;
        static RRDDIM *rd = NULL;

        if (FUNC7(!st)) {
            st = FUNC4(
                    "system",
                    "soft_intr",
                    NULL,
                    "interrupts",
                    NULL,
                    "Software Interrupts",
                    "interrupts/s",
                    "freebsd.plugin",
                    "vm.stats.sys.v_soft",
                    NETDATA_CHART_PRIO_SYSTEM_SOFT_INTR,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd = FUNC2(st, "interrupts", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else FUNC6(st);

        FUNC3(st, rd, soft_intr_number);
        FUNC5(st);
    }

    return 0;
}