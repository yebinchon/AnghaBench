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
struct ipstat {scalar_t__ ips_noproto; scalar_t__ ips_badaddr; scalar_t__ ips_noroute; scalar_t__ ips_badvers; scalar_t__ ips_badoptions; scalar_t__ ips_badlen; scalar_t__ ips_badhlen; scalar_t__ ips_odropped; scalar_t__ ips_toolong; scalar_t__ ips_toosmall; scalar_t__ ips_tooshort; scalar_t__ ips_badsum; scalar_t__ ips_reassembled; scalar_t__ ips_fragdropped; scalar_t__ ips_fragments; scalar_t__ ips_ofragments; scalar_t__ ips_cantfrag; scalar_t__ ips_fragmented; scalar_t__ ips_delivered; scalar_t__ ips_forward; scalar_t__ ips_localout; scalar_t__ ips_total; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,struct ipstat) ; 
 int /*<<< orphan*/  RRDSET_FLAG_DETAIL ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(int update_every, usec_t dt) {
    (void)dt;
    static int do_ip_packets = -1, do_ip_fragsout = -1, do_ip_fragsin = -1, do_ip_errors = -1;

    if (FUNC10(do_ip_packets == -1)) {
        do_ip_packets  = FUNC1("plugin:freebsd:net.inet.ip.stats", "ipv4 packets", 1);
        do_ip_fragsout = FUNC1("plugin:freebsd:net.inet.ip.stats", "ipv4 fragments sent", 1);
        do_ip_fragsin  = FUNC1("plugin:freebsd:net.inet.ip.stats", "ipv4 fragments assembly", 1);
        do_ip_errors   = FUNC1("plugin:freebsd:net.inet.ip.stats", "ipv4 errors", 1);
    }

    // see also http://net-snmp.sourceforge.net/docs/mibs/ip.html
    if (FUNC3(do_ip_packets || do_ip_fragsout || do_ip_fragsin || do_ip_errors)) {
        static int mib[4] = {0, 0, 0, 0};
        struct ipstat ipstat;

        if (FUNC10(FUNC0("net.inet.ip.stats", mib, ipstat))) {
            do_ip_packets = 0;
            FUNC2("DISABLED: ipv4.packets chart");
            do_ip_fragsout = 0;
            FUNC2("DISABLED: ipv4.fragsout chart");
            do_ip_fragsin = 0;
            FUNC2("DISABLED: ipv4.fragsin chart");
            do_ip_errors = 0;
            FUNC2("DISABLED: ipv4.errors chart");
            FUNC2("DISABLED: net.inet.ip.stats module");
            return 1;
        } else {

            // --------------------------------------------------------------------

            if (FUNC3(do_ip_packets)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in_receives = NULL, *rd_out_requests = NULL, *rd_forward_datagrams = NULL,
                              *rd_in_delivers = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "ipv4",
                            "packets",
                            NULL,
                            "packets",
                            NULL,
                            "IPv4 Packets",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3000,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_in_receives       = FUNC4(st, "InReceives",    "received",  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_requests      = FUNC4(st, "OutRequests",   "sent",     -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_forward_datagrams = FUNC4(st, "ForwDatagrams", "forwarded", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_delivers       = FUNC4(st, "InDelivers",    "delivered", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC9(st);

                FUNC5(st, rd_in_receives,       ipstat.ips_total);
                FUNC5(st, rd_out_requests,      ipstat.ips_localout);
                FUNC5(st, rd_forward_datagrams, ipstat.ips_forward);
                FUNC5(st, rd_in_delivers,       ipstat.ips_delivered);
                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_ip_fragsout)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_ok = NULL, *rd_fails = NULL, *rd_created = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "ipv4",
                            "fragsout",
                            NULL,
                            "fragments",
                            NULL,
                            "IPv4 Fragments Sent",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3010,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    FUNC8(st, RRDSET_FLAG_DETAIL);

                    rd_ok      = FUNC4(st, "FragOKs",     "ok",      1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_fails   = FUNC4(st, "FragFails",   "failed", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_created = FUNC4(st, "FragCreates", "created", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC9(st);

                FUNC5(st, rd_ok,      ipstat.ips_fragmented);
                FUNC5(st, rd_fails,   ipstat.ips_cantfrag);
                FUNC5(st, rd_created, ipstat.ips_ofragments);
                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_ip_fragsin)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_ok = NULL, *rd_failed = NULL, *rd_all = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "ipv4",
                            "fragsin",
                            NULL,
                            "fragments",
                            NULL,
                            "IPv4 Fragments Reassembly",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3011,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    FUNC8(st, RRDSET_FLAG_DETAIL);

                    rd_ok     = FUNC4(st, "ReasmOKs",   "ok",      1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_failed = FUNC4(st, "ReasmFails", "failed", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_all    = FUNC4(st, "ReasmReqds", "all",     1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC9(st);

                FUNC5(st, rd_ok,     ipstat.ips_fragments);
                FUNC5(st, rd_failed, ipstat.ips_fragdropped);
                FUNC5(st, rd_all,    ipstat.ips_reassembled);
                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_ip_errors)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in_discards = NULL, *rd_out_discards = NULL,
                              *rd_in_hdr_errors = NULL, *rd_out_no_routes = NULL,
                              *rd_in_addr_errors = NULL, *rd_in_unknown_protos = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "ipv4",
                            "errors",
                            NULL,
                            "errors",
                            NULL,
                            "IPv4 Errors",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3002,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    FUNC8(st, RRDSET_FLAG_DETAIL);

                    rd_in_discards       = FUNC4(st, "InDiscards",      NULL,  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_discards      = FUNC4(st, "OutDiscards",     NULL, -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_hdr_errors     = FUNC4(st, "InHdrErrors",     NULL,  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_no_routes     = FUNC4(st, "OutNoRoutes",     NULL, -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_addr_errors    = FUNC4(st, "InAddrErrors",    NULL,  1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_unknown_protos = FUNC4(st, "InUnknownProtos", NULL,  1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC9(st);

                FUNC5(st, rd_in_discards,       ipstat.ips_badsum + ipstat.ips_tooshort +
                                                                ipstat.ips_toosmall + ipstat.ips_toolong);
                FUNC5(st, rd_out_discards,      ipstat.ips_odropped);
                FUNC5(st, rd_in_hdr_errors,     ipstat.ips_badhlen + ipstat.ips_badlen +
                                                                ipstat.ips_badoptions + ipstat.ips_badvers);
                FUNC5(st, rd_out_no_routes,     ipstat.ips_noroute);
                FUNC5(st, rd_in_addr_errors,    ipstat.ips_badaddr);
                FUNC5(st, rd_in_unknown_protos, ipstat.ips_noproto);
                FUNC7(st);
            }
        }
    } else {
        FUNC2("DISABLED: net.inet.ip.stats module");
        return 1;
    }

    return 0;
}