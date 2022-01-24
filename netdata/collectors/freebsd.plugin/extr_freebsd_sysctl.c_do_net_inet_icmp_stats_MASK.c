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
typedef  scalar_t__ u_long ;
struct icmpstat {scalar_t__* icps_outhist; scalar_t__* icps_inhist; scalar_t__ icps_checksum; scalar_t__ icps_error; scalar_t__ icps_tooshort; scalar_t__ icps_badlen; scalar_t__ icps_badcode; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,struct icmpstat) ; 
 size_t ICMP_ECHO ; 
 size_t ICMP_ECHOREPLY ; 
 int ICMP_MAXTYPE ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(int update_every, usec_t dt) {
    (void)dt;
    static int do_icmp_packets = -1, do_icmp_errors = -1, do_icmpmsg = -1;

    if (FUNC9(do_icmp_packets == -1)) {
        do_icmp_packets = FUNC1("plugin:freebsd:net.inet.icmp.stats", "ipv4 ICMP packets",  1);
        do_icmp_errors  = FUNC1("plugin:freebsd:net.inet.icmp.stats", "ipv4 ICMP errors",   1);
        do_icmpmsg      = FUNC1("plugin:freebsd:net.inet.icmp.stats", "ipv4 ICMP messages", 1);
    }

    if (FUNC3(do_icmp_packets || do_icmp_errors || do_icmpmsg)) {
        static int mib[4] = {0, 0, 0, 0};
        struct icmpstat icmpstat;
        struct icmp_total {
            u_long  msgs_in;
            u_long  msgs_out;
        } icmp_total = {0, 0};

        if (FUNC9(FUNC0("net.inet.icmp.stats", mib, icmpstat))) {
            do_icmp_packets = 0;
            FUNC2("DISABLED: ipv4.icmp chart");
            do_icmp_errors = 0;
            FUNC2("DISABLED: ipv4.icmp_errors chart");
            do_icmpmsg = 0;
            FUNC2("DISABLED: ipv4.icmpmsg chart");
            FUNC2("DISABLED: net.inet.icmp.stats module");
            return 1;
        } else {
            int i;

            for (i = 0; i <= ICMP_MAXTYPE; i++) {
                icmp_total.msgs_in += icmpstat.icps_inhist[i];
                icmp_total.msgs_out += icmpstat.icps_outhist[i];
            }
            icmp_total.msgs_in += icmpstat.icps_badcode + icmpstat.icps_badlen + icmpstat.icps_checksum + icmpstat.icps_tooshort;

            // --------------------------------------------------------------------

            if (FUNC3(do_icmp_packets)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in = NULL, *rd_out = NULL;

                if (FUNC9(!st)) {
                    st = FUNC6(
                            "ipv4"
                            , "icmp"
                            , NULL
                            , "icmp"
                            , NULL
                            , "IPv4 ICMP Packets"
                            , "packets/s"
                            , "freebsd.plugin"
                            , "net.inet.icmp.stats"
                            , 2602
                            , update_every
                            , RRDSET_TYPE_LINE
                    );

                    rd_in  = FUNC4(st, "InMsgs",  "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out = FUNC4(st, "OutMsgs", "sent",    -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC8(st);

                FUNC5(st, rd_in,  icmp_total.msgs_in);
                FUNC5(st, rd_out, icmp_total.msgs_out);

                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_icmp_errors)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in = NULL, *rd_out = NULL, *rd_in_csum = NULL;

                if (FUNC9(!st)) {
                    st = FUNC6(
                            "ipv4"
                            , "icmp_errors"
                            , NULL
                            , "icmp"
                            , NULL
                            , "IPv4 ICMP Errors"
                            , "packets/s"
                            , "freebsd.plugin"
                            , "net.inet.icmp.stats"
                            , 2603
                            , update_every
                            , RRDSET_TYPE_LINE
                    );

                    rd_in      = FUNC4(st, "InErrors", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out     = FUNC4(st, "OutErrors", NULL, -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_csum = FUNC4(st, "InCsumErrors", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC8(st);

                FUNC5(st, rd_in,      icmpstat.icps_badcode + icmpstat.icps_badlen +
                                                      icmpstat.icps_checksum + icmpstat.icps_tooshort);
                FUNC5(st, rd_out,     icmpstat.icps_error);
                FUNC5(st, rd_in_csum, icmpstat.icps_checksum);

                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_icmpmsg)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in_reps = NULL, *rd_out_reps = NULL, *rd_in = NULL, *rd_out = NULL;

                if (FUNC9(!st)) {
                    st = FUNC6(
                            "ipv4"
                            , "icmpmsg"
                            , NULL
                            , "icmp"
                            , NULL
                            , "IPv4 ICMP Messages"
                            , "packets/s"
                            , "freebsd.plugin"
                            , "net.inet.icmp.stats"
                            , 2604
                            , update_every
                            , RRDSET_TYPE_LINE
                    );

                    rd_in_reps  = FUNC4(st, "InEchoReps",  NULL,  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_reps = FUNC4(st, "OutEchoReps", NULL, -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in       = FUNC4(st, "InEchos",     NULL,  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out      = FUNC4(st, "OutEchos",    NULL, -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC8(st);

                FUNC5(st, rd_in_reps, icmpstat.icps_inhist[ICMP_ECHOREPLY]);
                FUNC5(st, rd_out_reps, icmpstat.icps_outhist[ICMP_ECHOREPLY]);
                FUNC5(st, rd_in, icmpstat.icps_inhist[ICMP_ECHO]);
                FUNC5(st, rd_out, icmpstat.icps_outhist[ICMP_ECHO]);

                FUNC7(st);
            }
        }
    } else {
        FUNC2("DISABLED: net.inet.icmp.stats module");
        return 1;
    }

    return 0;
}