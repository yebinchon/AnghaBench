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
struct tcpstat {scalar_t__ tcps_ecn_ect1; scalar_t__ tcps_ecn_ect0; scalar_t__ tcps_ecn_ce; scalar_t__ tcps_listendrop; scalar_t__ tcps_sc_zonefail; scalar_t__ tcps_sc_sendcookie; scalar_t__ tcps_sc_recvcookie; scalar_t__ tcps_rcvoopack; scalar_t__ tcps_finwait2_drops; scalar_t__ tcps_persistdrop; scalar_t__ tcps_rcvmemdrop; scalar_t__ tcps_rcvafterclose; scalar_t__ tcps_rcvpackafterwin; scalar_t__ tcps_conndrops; scalar_t__ tcps_accepts; scalar_t__ tcps_connattempt; scalar_t__ tcps_drops; scalar_t__ tcps_sndrexmitpack; scalar_t__ tcps_rcvbadsum; scalar_t__ tcps_rcvshort; scalar_t__ tcps_rcvbadoff; scalar_t__ tcps_rcvreassfull; scalar_t__ tcps_sndtotal; scalar_t__ tcps_rcvtotal; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int CONFIG_BOOLEAN_AUTO ; 
 int CONFIG_BOOLEAN_YES ; 
 int FUNC0 (char*,int*,struct tcpstat) ; 
 int /*<<< orphan*/  RRDSET_FLAG_DETAIL ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int netdata_zero_metrics_enabled ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(int update_every, usec_t dt) {
    (void)dt;
    static int do_tcp_packets = -1, do_tcp_errors = -1, do_tcp_handshake = -1, do_tcpext_connaborts = -1, do_tcpext_ofo = -1,
               do_tcpext_syncookies = -1, do_tcpext_listen = -1, do_ecn = -1;

    if (FUNC11(do_tcp_packets == -1)) {
        do_tcp_packets       = FUNC1("plugin:freebsd:net.inet.tcp.stats", "ipv4 TCP packets",          1);
        do_tcp_errors        = FUNC1("plugin:freebsd:net.inet.tcp.stats", "ipv4 TCP errors",           1);
        do_tcp_handshake     = FUNC1("plugin:freebsd:net.inet.tcp.stats", "ipv4 TCP handshake issues", 1);
        do_tcpext_connaborts = FUNC2("plugin:freebsd:net.inet.tcp.stats", "TCP connection aborts",
                                                           CONFIG_BOOLEAN_AUTO);
        do_tcpext_ofo        = FUNC2("plugin:freebsd:net.inet.tcp.stats", "TCP out-of-order queue",
                                                           CONFIG_BOOLEAN_AUTO);
        do_tcpext_syncookies = FUNC2("plugin:freebsd:net.inet.tcp.stats", "TCP SYN cookies",
                                                           CONFIG_BOOLEAN_AUTO);
        do_tcpext_listen     = FUNC2("plugin:freebsd:net.inet.tcp.stats", "TCP listen issues",
                                                           CONFIG_BOOLEAN_AUTO);
        do_ecn               = FUNC2("plugin:freebsd:net.inet.tcp.stats", "ECN packets",
                                                           CONFIG_BOOLEAN_AUTO);
    }

    // see http://net-snmp.sourceforge.net/docs/mibs/tcp.html
    if (FUNC4(do_tcp_packets || do_tcp_errors || do_tcp_handshake || do_tcpext_connaborts || do_tcpext_ofo ||
               do_tcpext_syncookies || do_tcpext_listen || do_ecn)) {
        static int mib[4] = {0, 0, 0, 0};
        struct tcpstat tcpstat;

        if (FUNC11(FUNC0("net.inet.tcp.stats", mib, tcpstat))) {
            do_tcp_packets = 0;
            FUNC3("DISABLED: ipv4.tcppackets chart");
            do_tcp_errors = 0;
            FUNC3("DISABLED: ipv4.tcperrors  chart");
            do_tcp_handshake = 0;
            FUNC3("DISABLED: ipv4.tcphandshake  chart");
            do_tcpext_connaborts = 0;
            FUNC3("DISABLED: ipv4.tcpconnaborts  chart");
            do_tcpext_ofo = 0;
            FUNC3("DISABLED: ipv4.tcpofo chart");
            do_tcpext_syncookies = 0;
            FUNC3("DISABLED: ipv4.tcpsyncookies chart");
            do_tcpext_listen = 0;
            FUNC3("DISABLED: ipv4.tcplistenissues chart");
            do_ecn = 0;
            FUNC3("DISABLED: ipv4.ecnpkts chart");
            FUNC3("DISABLED: net.inet.tcp.stats module");
            return 1;
        } else {

            // --------------------------------------------------------------------

            if (FUNC4(do_tcp_packets)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in_segs = NULL, *rd_out_segs = NULL;

                if (FUNC11(!st)) {
                    st = FUNC7(
                            "ipv4",
                            "tcppackets",
                            NULL,
                            "tcp",
                            NULL,
                            "IPv4 TCP Packets",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            2600,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_in_segs  = FUNC5(st, "InSegs",  "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_segs = FUNC5(st, "OutSegs", "sent",    -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC10(st);

                FUNC6(st, rd_in_segs,  tcpstat.tcps_rcvtotal);
                FUNC6(st, rd_out_segs, tcpstat.tcps_sndtotal);
                FUNC8(st);
            }

            // --------------------------------------------------------------------

            if (FUNC4(do_tcp_errors)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in_errs = NULL, *rd_in_csum_errs = NULL, *rd_retrans_segs = NULL;

                if (FUNC11(!st)) {
                    st = FUNC7(
                            "ipv4",
                            "tcperrors",
                            NULL,
                            "tcp",
                            NULL,
                            "IPv4 TCP Errors",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            2700,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    FUNC9(st, RRDSET_FLAG_DETAIL);

                    rd_in_errs      = FUNC5(st, "InErrs",       NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_csum_errs = FUNC5(st, "InCsumErrors", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_retrans_segs = FUNC5(st, "RetransSegs",  NULL, -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC10(st);

#if __FreeBSD__ >= 11
                rrddim_set_by_pointer(st, rd_in_errs,      tcpstat.tcps_rcvbadoff + tcpstat.tcps_rcvreassfull +
                                                           tcpstat.tcps_rcvshort);
#else
                FUNC6(st, rd_in_errs,      tcpstat.tcps_rcvbadoff + tcpstat.tcps_rcvshort);
#endif
                FUNC6(st, rd_in_csum_errs, tcpstat.tcps_rcvbadsum);
                FUNC6(st, rd_retrans_segs, tcpstat.tcps_sndrexmitpack);
                FUNC8(st);
            }

            // --------------------------------------------------------------------

            if (FUNC4(do_tcp_handshake)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_estab_resets = NULL, *rd_active_opens = NULL, *rd_passive_opens = NULL,
                              *rd_attempt_fails = NULL;

                if (FUNC11(!st)) {
                    st = FUNC7(
                            "ipv4",
                            "tcphandshake",
                            NULL,
                            "tcp",
                            NULL,
                            "IPv4 TCP Handshake Issues",
                            "events/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            2900,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    FUNC9(st, RRDSET_FLAG_DETAIL);

                    rd_estab_resets  = FUNC5(st, "EstabResets",  NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_active_opens  = FUNC5(st, "ActiveOpens",  NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_passive_opens = FUNC5(st, "PassiveOpens", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_attempt_fails = FUNC5(st, "AttemptFails", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC10(st);

                FUNC6(st, rd_estab_resets,  tcpstat.tcps_drops);
                FUNC6(st, rd_active_opens,  tcpstat.tcps_connattempt);
                FUNC6(st, rd_passive_opens, tcpstat.tcps_accepts);
                FUNC6(st, rd_attempt_fails, tcpstat.tcps_conndrops);
                FUNC8(st);
            }

            // --------------------------------------------------------------------

            if (do_tcpext_connaborts == CONFIG_BOOLEAN_YES || (do_tcpext_connaborts == CONFIG_BOOLEAN_AUTO &&
                                                               (tcpstat.tcps_rcvpackafterwin ||
                                                                tcpstat.tcps_rcvafterclose ||
                                                                tcpstat.tcps_rcvmemdrop ||
                                                                tcpstat.tcps_persistdrop ||
                                                                tcpstat.tcps_finwait2_drops ||
                                                                netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_connaborts = CONFIG_BOOLEAN_YES;

                static RRDSET *st = NULL;
                static RRDDIM *rd_on_data = NULL, *rd_on_close = NULL, *rd_on_memory = NULL,
                              *rd_on_timeout = NULL, *rd_on_linger = NULL;

                if (FUNC11(!st)) {
                    st = FUNC7(
                            "ipv4",
                            "tcpconnaborts",
                            NULL,
                            "tcp",
                            NULL,
                            "TCP Connection Aborts",
                            "connections/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3010,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_on_data    = FUNC5(st, "TCPAbortOnData",    "baddata",     1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_close   = FUNC5(st, "TCPAbortOnClose",   "userclosed",  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_memory  = FUNC5(st, "TCPAbortOnMemory",  "nomemory",    1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_timeout = FUNC5(st, "TCPAbortOnTimeout", "timeout",     1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_linger  = FUNC5(st, "TCPAbortOnLinger",  "linger",      1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else FUNC10(st);

                FUNC6(st, rd_on_data,    tcpstat.tcps_rcvpackafterwin);
                FUNC6(st, rd_on_close,   tcpstat.tcps_rcvafterclose);
                FUNC6(st, rd_on_memory,  tcpstat.tcps_rcvmemdrop);
                FUNC6(st, rd_on_timeout, tcpstat.tcps_persistdrop);
                FUNC6(st, rd_on_linger,  tcpstat.tcps_finwait2_drops);
                FUNC8(st);
            }

            // --------------------------------------------------------------------

            if (do_tcpext_ofo == CONFIG_BOOLEAN_YES || (do_tcpext_ofo == CONFIG_BOOLEAN_AUTO &&
                                                        (tcpstat.tcps_rcvoopack ||
                                                         netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_ofo = CONFIG_BOOLEAN_YES;

                static RRDSET *st = NULL;
                static RRDDIM *rd_ofo_queue = NULL;

                if (FUNC11(!st)) {
                    st = FUNC7(
                            "ipv4",
                            "tcpofo",
                            NULL,
                            "tcp",
                            NULL,
                            "TCP Out-Of-Order Queue",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3050,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_ofo_queue = FUNC5(st, "TCPOFOQueue", "inqueue",  1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else FUNC10(st);

                FUNC6(st, rd_ofo_queue,   tcpstat.tcps_rcvoopack);
                FUNC8(st);
            }

            // --------------------------------------------------------------------

            if (do_tcpext_syncookies == CONFIG_BOOLEAN_YES || (do_tcpext_syncookies == CONFIG_BOOLEAN_AUTO &&
                                                               (tcpstat.tcps_sc_sendcookie ||
                                                                tcpstat.tcps_sc_recvcookie ||
                                                                tcpstat.tcps_sc_zonefail ||
                                                                netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_syncookies = CONFIG_BOOLEAN_YES;

                static RRDSET *st = NULL;
                static RRDDIM *rd_recv = NULL, *rd_send = NULL, *rd_failed = NULL;

                if (FUNC11(!st)) {
                    st = FUNC7(
                            "ipv4",
                            "tcpsyncookies",
                            NULL,
                            "tcp",
                            NULL,
                            "TCP SYN Cookies",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3100,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_recv   = FUNC5(st, "SyncookiesRecv",   "received",  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_send   = FUNC5(st, "SyncookiesSent",   "sent",     -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_failed = FUNC5(st, "SyncookiesFailed", "failed",   -1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else FUNC10(st);

                FUNC6(st, rd_recv,   tcpstat.tcps_sc_recvcookie);
                FUNC6(st, rd_send,   tcpstat.tcps_sc_sendcookie);
                FUNC6(st, rd_failed, tcpstat.tcps_sc_zonefail);
                FUNC8(st);
            }

            // --------------------------------------------------------------------

            if(do_tcpext_listen == CONFIG_BOOLEAN_YES || (do_tcpext_listen == CONFIG_BOOLEAN_AUTO &&
                                                          (tcpstat.tcps_listendrop ||
                                                           netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_listen = CONFIG_BOOLEAN_YES;

                static RRDSET *st_listen = NULL;
                static RRDDIM *rd_overflows = NULL;

                if(FUNC11(!st_listen)) {

                    st_listen = FUNC7(
                            "ipv4",
                            "tcplistenissues",
                            NULL,
                            "tcp",
                            NULL,
                            "TCP Listen Socket Issues",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3015,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_overflows = FUNC5(st_listen, "ListenOverflows", "overflows",  1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else
                    FUNC10(st_listen);

                FUNC6(st_listen, rd_overflows, tcpstat.tcps_listendrop);

                FUNC8(st_listen);
            }

            // --------------------------------------------------------------------

            if (do_ecn == CONFIG_BOOLEAN_YES || (do_ecn == CONFIG_BOOLEAN_AUTO &&
                                                 (tcpstat.tcps_ecn_ce ||
                                                  tcpstat.tcps_ecn_ect0 ||
                                                  tcpstat.tcps_ecn_ect1 ||
                                                  netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_ecn = CONFIG_BOOLEAN_YES;

                static RRDSET *st = NULL;
                static RRDDIM *rd_ce = NULL, *rd_no_ect = NULL, *rd_ect0 = NULL, *rd_ect1 = NULL;

                if (FUNC11(!st)) {
                    st = FUNC7(
                            "ipv4",
                            "ecnpkts",
                            NULL,
                            "ecn",
                            NULL,
                            "IPv4 ECN Statistics",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            8700,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    FUNC9(st, RRDSET_FLAG_DETAIL);

                    rd_ce     = FUNC5(st, "InCEPkts", "CEP", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_no_ect = FUNC5(st, "InNoECTPkts", "NoECTP", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_ect0   = FUNC5(st, "InECT0Pkts", "ECTP0", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_ect1   = FUNC5(st, "InECT1Pkts", "ECTP1", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else FUNC10(st);

                FUNC6(st, rd_ce,     tcpstat.tcps_ecn_ce);
                FUNC6(st, rd_no_ect, tcpstat.tcps_ecn_ce - (tcpstat.tcps_ecn_ect0 +
                                                                            tcpstat.tcps_ecn_ect1));
                FUNC6(st, rd_ect0,   tcpstat.tcps_ecn_ect0);
                FUNC6(st, rd_ect1,   tcpstat.tcps_ecn_ect1);
                FUNC8(st);
            }

        }
    } else {
        FUNC3("DISABLED: net.inet.tcp.stats module");
        return 1;
    }

    return 0;
}