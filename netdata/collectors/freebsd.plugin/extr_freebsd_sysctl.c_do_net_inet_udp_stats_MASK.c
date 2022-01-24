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
struct udpstat {scalar_t__ udps_filtermcast; scalar_t__ udps_nosum; scalar_t__ udps_badsum; scalar_t__ udps_fullsock; scalar_t__ udps_noport; scalar_t__ udps_badlen; scalar_t__ udps_hdrops; scalar_t__ udps_opackets; scalar_t__ udps_ipackets; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,struct udpstat) ; 
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
    static int do_udp_packets = -1, do_udp_errors = -1;

    if (FUNC10(do_udp_packets == -1)) {
        do_udp_packets = FUNC1("plugin:freebsd:net.inet.udp.stats", "ipv4 UDP packets", 1);
        do_udp_errors  = FUNC1("plugin:freebsd:net.inet.udp.stats", "ipv4 UDP errors", 1);
    }

    // see http://net-snmp.sourceforge.net/docs/mibs/udp.html
    if (FUNC3(do_udp_packets || do_udp_errors)) {
        static int mib[4] = {0, 0, 0, 0};
        struct udpstat udpstat;

        if (FUNC10(FUNC0("net.inet.udp.stats", mib, udpstat))) {
            do_udp_packets = 0;
            FUNC2("DISABLED: ipv4.udppackets chart");
            do_udp_errors = 0;
            FUNC2("DISABLED: ipv4.udperrors chart");
            FUNC2("DISABLED: net.inet.udp.stats module");
            return 1;
        } else {

            // --------------------------------------------------------------------

            if (FUNC3(do_udp_packets)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in = NULL, *rd_out = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "ipv4",
                            "udppackets",
                            NULL,
                            "udp",
                            NULL,
                            "IPv4 UDP Packets",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.udp.stats",
                            2601,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_in  = FUNC4(st, "InDatagrams",  "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out = FUNC4(st, "OutDatagrams", "sent",    -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC9(st);

                FUNC5(st, rd_in,  udpstat.udps_ipackets);
                FUNC5(st, rd_out, udpstat.udps_opackets);
                FUNC7(st);
            }

            // --------------------------------------------------------------------

            if (FUNC3(do_udp_errors)) {
                static RRDSET *st = NULL;
                static RRDDIM *rd_in_errors = NULL, *rd_no_ports = NULL, *rd_recv_buf_errors = NULL,
                              *rd_in_csum_errors = NULL, *rd_ignored_multi = NULL;

                if (FUNC10(!st)) {
                    st = FUNC6(
                            "ipv4",
                            "udperrors",
                            NULL,
                            "udp",
                            NULL,
                            "IPv4 UDP Errors",
                            "events/s",
                            "freebsd.plugin",
                            "net.inet.udp.stats",
                            2701,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    FUNC8(st, RRDSET_FLAG_DETAIL);

                    rd_in_errors       = FUNC4(st, "InErrors",     NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_no_ports        = FUNC4(st, "NoPorts",      NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_recv_buf_errors = FUNC4(st, "RcvbufErrors", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_csum_errors  = FUNC4(st, "InCsumErrors", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_ignored_multi   = FUNC4(st, "IgnoredMulti", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    FUNC9(st);

                FUNC5(st, rd_in_errors,       udpstat.udps_hdrops + udpstat.udps_badlen);
                FUNC5(st, rd_no_ports,        udpstat.udps_noport);
                FUNC5(st, rd_recv_buf_errors, udpstat.udps_fullsock);
                FUNC5(st, rd_in_csum_errors,  udpstat.udps_badsum + udpstat.udps_nosum);
                FUNC5(st, rd_ignored_multi,   udpstat.udps_filtermcast);
                FUNC7(st);
            }
        }
    } else {
        FUNC2("DISABLED: net.inet.udp.stats module");
        return 1;
    }

    return 0;
}