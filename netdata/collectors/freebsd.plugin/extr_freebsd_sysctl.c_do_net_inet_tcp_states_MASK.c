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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 size_t TCPS_ESTABLISHED ; 
 int TCP_NSTATES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(int update_every, usec_t dt) {
    (void)dt;
    static int mib[4] = {0, 0, 0, 0};
    uint64_t tcps_states[TCP_NSTATES];

    // see http://net-snmp.sourceforge.net/docs/mibs/tcp.html
    if (FUNC7(FUNC0("net.inet.tcp.states", mib, tcps_states))) {
        FUNC1("DISABLED: ipv4.tcpsock chart");
        FUNC1("DISABLED: net.inet.tcp.states module");
        return 1;
    } else {

        // --------------------------------------------------------------------

        static RRDSET *st = NULL;
        static RRDDIM *rd = NULL;

        if (FUNC7(!st)) {
            st = FUNC4(
                    "ipv4",
                    "tcpsock",
                    NULL,
                    "tcp",
                    NULL,
                    "IPv4 TCP Connections",
                    "active connections",
                    "freebsd.plugin",
                    "net.inet.tcp.states",
                    2500,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd = FUNC2(st, "CurrEstab", "connections", 1, 1, RRD_ALGORITHM_ABSOLUTE);
        } else
            FUNC6(st);

        FUNC3(st, rd, tcps_states[TCPS_ESTABLISHED]);
        FUNC5(st);
    }

    return 0;
}