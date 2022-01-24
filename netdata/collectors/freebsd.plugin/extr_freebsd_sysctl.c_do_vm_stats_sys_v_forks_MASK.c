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
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_FORKS ; 
 int /*<<< orphan*/  RRDSET_FLAG_DETAIL ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(int update_every, usec_t dt) {
    (void)dt;
    static int mib[4] = {0, 0, 0, 0};
    u_int forks_number;

    if (FUNC8(FUNC0("vm.stats.vm.v_forks", mib, forks_number))) {
        FUNC1("DISABLED: system.forks chart");
        FUNC1("DISABLED: vm.stats.sys.v_swtch module");
        return 1;
    } else {

        // --------------------------------------------------------------------

        static RRDSET *st = NULL;
        static RRDDIM *rd = NULL;

        if (FUNC8(!st)) {
            st = FUNC4(
                    "system",
                    "forks",
                    NULL,
                    "processes",
                    NULL,
                    "Started Processes",
                    "processes/s",
                    "freebsd.plugin",
                    "vm.stats.sys.v_swtch",
                    NETDATA_CHART_PRIO_SYSTEM_FORKS,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            FUNC6(st, RRDSET_FLAG_DETAIL);

            rd = FUNC2(st, "started", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else FUNC7(st);

        FUNC3(st, rd, forks_number);
        FUNC5(st);
    }

    return 0;
}