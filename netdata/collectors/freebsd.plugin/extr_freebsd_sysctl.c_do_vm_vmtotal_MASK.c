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
struct vmtotal {scalar_t__ t_rm; scalar_t__ t_pw; scalar_t__ t_dw; scalar_t__ t_rq; scalar_t__ t_sw; scalar_t__ t_sl; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,struct vmtotal) ; 
 int MEGA_FACTOR ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_PROCESSES ; 
 int /*<<< orphan*/  RRDSET_FLAG_DETAIL ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int system_pagesize ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(int update_every, usec_t dt) {
    (void)dt;
    static int do_all_processes = -1, do_processes = -1, do_committed = -1;

    if (FUNC10(do_all_processes == -1)) {
        do_all_processes    = FUNC1("plugin:freebsd:vm.vmtotal", "enable total processes", 1);
        do_processes        = FUNC1("plugin:freebsd:vm.vmtotal", "processes running", 1);
        do_committed        = FUNC1("plugin:freebsd:vm.vmtotal", "committed memory", 1);
    }

    if (FUNC3(do_all_processes | do_processes | do_committed)) {
        static int mib[2] = {0, 0};
        struct vmtotal vmtotal_data;

        if (FUNC10(FUNC0("vm.vmtotal", mib, vmtotal_data))) {
            do_all_processes = 0;
            FUNC2("DISABLED: system.active_processes chart");
            do_processes = 0;
            FUNC2("DISABLED: system.processes chart");
            do_committed = 0;
            FUNC2("DISABLED: mem.committed chart");
            FUNC2("DISABLED: vm.vmtotal module");
            return 1;
        } else {

            // --------------------------------------------------------------------

            if (FUNC3(do_all_processes)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "system",
                            "active_processes",
                            NULL,
                            "processes",
                            NULL,
                            "System Active Processes",
                            "processes",
                            "freebsd.plugin",
                            "vm.vmtotal",
                            NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES,
                            update_every,
                            RRDSET_TYPE_LINE
                    );
                    rd = FUNC4(st, "active", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
                }
                else FUNC9(st);

                FUNC5(st, rd, (vmtotal_data.t_rq + vmtotal_data.t_dw + vmtotal_data.t_pw + vmtotal_data.t_sl + vmtotal_data.t_sw));
                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_processes)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_running = NULL, *rd_blocked = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "system",
                            "processes",
                            NULL,
                            "processes",
                            NULL,
                            "System Processes",
                            "processes",
                            "freebsd.plugin",
                            "vm.vmtotal",
                            NETDATA_CHART_PRIO_SYSTEM_PROCESSES,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_running = FUNC4(st, "running", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
                    rd_blocked = FUNC4(st, "blocked", NULL, -1, 1, RRD_ALGORITHM_ABSOLUTE);
                }
                else FUNC9(st);

                FUNC5(st, rd_running, vmtotal_data.t_rq);
                FUNC5(st, rd_blocked, (vmtotal_data.t_dw + vmtotal_data.t_pw));
                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_committed)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "mem",
                            "committed",
                            NULL,
                            "system",
                            NULL,
                            "Committed (Allocated) Memory",
                            "MiB",
                            "freebsd.plugin",
                            "vm.vmtotal",
                            NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED,
                            update_every,
                            RRDSET_TYPE_AREA
                    );
                    FUNC8(st, RRDSET_FLAG_DETAIL);

                    rd = FUNC4(st, "Committed_AS", NULL, system_pagesize, MEGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
                }
                else FUNC9(st);

                FUNC5(st, rd, vmtotal_data.t_rm);
                FUNC7(st);
            }
        }
    } else {
        FUNC2("DISABLED: vm.vmtotal module");
        return 1;
    }

    return 0;
}