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
 int FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_CPUFREQ_SCALING_CUR_FREQ ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(int update_every, usec_t dt) {
    (void)dt;
    static int mib[4] = {0, 0, 0, 0};
    int cpufreq;

    if (FUNC7(FUNC0("dev.cpu.0.freq", mib, cpufreq))) {
        FUNC1("DISABLED: cpu.scaling_cur_freq chart");
        FUNC1("DISABLED: dev.cpu.0.freq module");
        return 1;
    } else {

        // --------------------------------------------------------------------

        static RRDSET *st = NULL;
        static RRDDIM *rd = NULL;

        if (FUNC7(!st)) {
            st = FUNC4(
                    "cpu",
                    "scaling_cur_freq",
                    NULL,
                    "cpufreq",
                    NULL,
                    "Current CPU Scaling Frequency",
                    "MHz",
                    "freebsd.plugin",
                    "dev.cpu.0.freq",
                    NETDATA_CHART_PRIO_CPUFREQ_SCALING_CUR_FREQ,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd = FUNC2(st, "frequency", NULL, 1, 1000, RRD_ALGORITHM_ABSOLUTE);
        }
        else FUNC6(st);

        FUNC3(st, rd, cpufreq);
        FUNC5(st);
    }

    return 0;
}