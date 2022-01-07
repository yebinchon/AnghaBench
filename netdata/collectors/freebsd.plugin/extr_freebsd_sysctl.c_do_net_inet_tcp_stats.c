
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct tcpstat {scalar_t__ tcps_ecn_ect1; scalar_t__ tcps_ecn_ect0; scalar_t__ tcps_ecn_ce; scalar_t__ tcps_listendrop; scalar_t__ tcps_sc_zonefail; scalar_t__ tcps_sc_sendcookie; scalar_t__ tcps_sc_recvcookie; scalar_t__ tcps_rcvoopack; scalar_t__ tcps_finwait2_drops; scalar_t__ tcps_persistdrop; scalar_t__ tcps_rcvmemdrop; scalar_t__ tcps_rcvafterclose; scalar_t__ tcps_rcvpackafterwin; scalar_t__ tcps_conndrops; scalar_t__ tcps_accepts; scalar_t__ tcps_connattempt; scalar_t__ tcps_drops; scalar_t__ tcps_sndrexmitpack; scalar_t__ tcps_rcvbadsum; scalar_t__ tcps_rcvshort; scalar_t__ tcps_rcvbadoff; scalar_t__ tcps_rcvreassfull; scalar_t__ tcps_sndtotal; scalar_t__ tcps_rcvtotal; } ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int CONFIG_BOOLEAN_AUTO ;
 int CONFIG_BOOLEAN_YES ;
 int GETSYSCTL_SIMPLE (char*,int*,struct tcpstat) ;
 int RRDSET_FLAG_DETAIL ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int config_get_boolean (char*,char*,int) ;
 int config_get_boolean_ondemand (char*,char*,int) ;
 int error (char*) ;
 scalar_t__ likely (int) ;
 int netdata_zero_metrics_enabled ;
 int * rrddim_add (int *,char*,char*,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,scalar_t__) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_flag_set (int *,int ) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_net_inet_tcp_stats(int update_every, usec_t dt) {
    (void)dt;
    static int do_tcp_packets = -1, do_tcp_errors = -1, do_tcp_handshake = -1, do_tcpext_connaborts = -1, do_tcpext_ofo = -1,
               do_tcpext_syncookies = -1, do_tcpext_listen = -1, do_ecn = -1;

    if (unlikely(do_tcp_packets == -1)) {
        do_tcp_packets = config_get_boolean("plugin:freebsd:net.inet.tcp.stats", "ipv4 TCP packets", 1);
        do_tcp_errors = config_get_boolean("plugin:freebsd:net.inet.tcp.stats", "ipv4 TCP errors", 1);
        do_tcp_handshake = config_get_boolean("plugin:freebsd:net.inet.tcp.stats", "ipv4 TCP handshake issues", 1);
        do_tcpext_connaborts = config_get_boolean_ondemand("plugin:freebsd:net.inet.tcp.stats", "TCP connection aborts",
                                                           CONFIG_BOOLEAN_AUTO);
        do_tcpext_ofo = config_get_boolean_ondemand("plugin:freebsd:net.inet.tcp.stats", "TCP out-of-order queue",
                                                           CONFIG_BOOLEAN_AUTO);
        do_tcpext_syncookies = config_get_boolean_ondemand("plugin:freebsd:net.inet.tcp.stats", "TCP SYN cookies",
                                                           CONFIG_BOOLEAN_AUTO);
        do_tcpext_listen = config_get_boolean_ondemand("plugin:freebsd:net.inet.tcp.stats", "TCP listen issues",
                                                           CONFIG_BOOLEAN_AUTO);
        do_ecn = config_get_boolean_ondemand("plugin:freebsd:net.inet.tcp.stats", "ECN packets",
                                                           CONFIG_BOOLEAN_AUTO);
    }


    if (likely(do_tcp_packets || do_tcp_errors || do_tcp_handshake || do_tcpext_connaborts || do_tcpext_ofo ||
               do_tcpext_syncookies || do_tcpext_listen || do_ecn)) {
        static int mib[4] = {0, 0, 0, 0};
        struct tcpstat tcpstat;

        if (unlikely(GETSYSCTL_SIMPLE("net.inet.tcp.stats", mib, tcpstat))) {
            do_tcp_packets = 0;
            error("DISABLED: ipv4.tcppackets chart");
            do_tcp_errors = 0;
            error("DISABLED: ipv4.tcperrors  chart");
            do_tcp_handshake = 0;
            error("DISABLED: ipv4.tcphandshake  chart");
            do_tcpext_connaborts = 0;
            error("DISABLED: ipv4.tcpconnaborts  chart");
            do_tcpext_ofo = 0;
            error("DISABLED: ipv4.tcpofo chart");
            do_tcpext_syncookies = 0;
            error("DISABLED: ipv4.tcpsyncookies chart");
            do_tcpext_listen = 0;
            error("DISABLED: ipv4.tcplistenissues chart");
            do_ecn = 0;
            error("DISABLED: ipv4.ecnpkts chart");
            error("DISABLED: net.inet.tcp.stats module");
            return 1;
        } else {



            if (likely(do_tcp_packets)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in_segs = ((void*)0), *rd_out_segs = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "tcppackets",
                            ((void*)0),
                            "tcp",
                            ((void*)0),
                            "IPv4 TCP Packets",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            2600,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_in_segs = rrddim_add(st, "InSegs", "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_segs = rrddim_add(st, "OutSegs", "sent", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in_segs, tcpstat.tcps_rcvtotal);
                rrddim_set_by_pointer(st, rd_out_segs, tcpstat.tcps_sndtotal);
                rrdset_done(st);
            }



            if (likely(do_tcp_errors)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in_errs = ((void*)0), *rd_in_csum_errs = ((void*)0), *rd_retrans_segs = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "tcperrors",
                            ((void*)0),
                            "tcp",
                            ((void*)0),
                            "IPv4 TCP Errors",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            2700,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd_in_errs = rrddim_add(st, "InErrs", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_csum_errs = rrddim_add(st, "InCsumErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_retrans_segs = rrddim_add(st, "RetransSegs", ((void*)0), -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);





                rrddim_set_by_pointer(st, rd_in_errs, tcpstat.tcps_rcvbadoff + tcpstat.tcps_rcvshort);

                rrddim_set_by_pointer(st, rd_in_csum_errs, tcpstat.tcps_rcvbadsum);
                rrddim_set_by_pointer(st, rd_retrans_segs, tcpstat.tcps_sndrexmitpack);
                rrdset_done(st);
            }



            if (likely(do_tcp_handshake)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_estab_resets = ((void*)0), *rd_active_opens = ((void*)0), *rd_passive_opens = ((void*)0),
                              *rd_attempt_fails = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "tcphandshake",
                            ((void*)0),
                            "tcp",
                            ((void*)0),
                            "IPv4 TCP Handshake Issues",
                            "events/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            2900,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd_estab_resets = rrddim_add(st, "EstabResets", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_active_opens = rrddim_add(st, "ActiveOpens", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_passive_opens = rrddim_add(st, "PassiveOpens", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_attempt_fails = rrddim_add(st, "AttemptFails", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_estab_resets, tcpstat.tcps_drops);
                rrddim_set_by_pointer(st, rd_active_opens, tcpstat.tcps_connattempt);
                rrddim_set_by_pointer(st, rd_passive_opens, tcpstat.tcps_accepts);
                rrddim_set_by_pointer(st, rd_attempt_fails, tcpstat.tcps_conndrops);
                rrdset_done(st);
            }



            if (do_tcpext_connaborts == CONFIG_BOOLEAN_YES || (do_tcpext_connaborts == CONFIG_BOOLEAN_AUTO &&
                                                               (tcpstat.tcps_rcvpackafterwin ||
                                                                tcpstat.tcps_rcvafterclose ||
                                                                tcpstat.tcps_rcvmemdrop ||
                                                                tcpstat.tcps_persistdrop ||
                                                                tcpstat.tcps_finwait2_drops ||
                                                                netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_connaborts = CONFIG_BOOLEAN_YES;

                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_on_data = ((void*)0), *rd_on_close = ((void*)0), *rd_on_memory = ((void*)0),
                              *rd_on_timeout = ((void*)0), *rd_on_linger = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "tcpconnaborts",
                            ((void*)0),
                            "tcp",
                            ((void*)0),
                            "TCP Connection Aborts",
                            "connections/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3010,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_on_data = rrddim_add(st, "TCPAbortOnData", "baddata", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_close = rrddim_add(st, "TCPAbortOnClose", "userclosed", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_memory = rrddim_add(st, "TCPAbortOnMemory", "nomemory", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_timeout = rrddim_add(st, "TCPAbortOnTimeout", "timeout", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_on_linger = rrddim_add(st, "TCPAbortOnLinger", "linger", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else rrdset_next(st);

                rrddim_set_by_pointer(st, rd_on_data, tcpstat.tcps_rcvpackafterwin);
                rrddim_set_by_pointer(st, rd_on_close, tcpstat.tcps_rcvafterclose);
                rrddim_set_by_pointer(st, rd_on_memory, tcpstat.tcps_rcvmemdrop);
                rrddim_set_by_pointer(st, rd_on_timeout, tcpstat.tcps_persistdrop);
                rrddim_set_by_pointer(st, rd_on_linger, tcpstat.tcps_finwait2_drops);
                rrdset_done(st);
            }



            if (do_tcpext_ofo == CONFIG_BOOLEAN_YES || (do_tcpext_ofo == CONFIG_BOOLEAN_AUTO &&
                                                        (tcpstat.tcps_rcvoopack ||
                                                         netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_ofo = CONFIG_BOOLEAN_YES;

                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_ofo_queue = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "tcpofo",
                            ((void*)0),
                            "tcp",
                            ((void*)0),
                            "TCP Out-Of-Order Queue",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3050,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_ofo_queue = rrddim_add(st, "TCPOFOQueue", "inqueue", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else rrdset_next(st);

                rrddim_set_by_pointer(st, rd_ofo_queue, tcpstat.tcps_rcvoopack);
                rrdset_done(st);
            }



            if (do_tcpext_syncookies == CONFIG_BOOLEAN_YES || (do_tcpext_syncookies == CONFIG_BOOLEAN_AUTO &&
                                                               (tcpstat.tcps_sc_sendcookie ||
                                                                tcpstat.tcps_sc_recvcookie ||
                                                                tcpstat.tcps_sc_zonefail ||
                                                                netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_syncookies = CONFIG_BOOLEAN_YES;

                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_recv = ((void*)0), *rd_send = ((void*)0), *rd_failed = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "tcpsyncookies",
                            ((void*)0),
                            "tcp",
                            ((void*)0),
                            "TCP SYN Cookies",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3100,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_recv = rrddim_add(st, "SyncookiesRecv", "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_send = rrddim_add(st, "SyncookiesSent", "sent", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_failed = rrddim_add(st, "SyncookiesFailed", "failed", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else rrdset_next(st);

                rrddim_set_by_pointer(st, rd_recv, tcpstat.tcps_sc_recvcookie);
                rrddim_set_by_pointer(st, rd_send, tcpstat.tcps_sc_sendcookie);
                rrddim_set_by_pointer(st, rd_failed, tcpstat.tcps_sc_zonefail);
                rrdset_done(st);
            }



            if(do_tcpext_listen == CONFIG_BOOLEAN_YES || (do_tcpext_listen == CONFIG_BOOLEAN_AUTO &&
                                                          (tcpstat.tcps_listendrop ||
                                                           netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_tcpext_listen = CONFIG_BOOLEAN_YES;

                static RRDSET *st_listen = ((void*)0);
                static RRDDIM *rd_overflows = ((void*)0);

                if(unlikely(!st_listen)) {

                    st_listen = rrdset_create_localhost(
                            "ipv4",
                            "tcplistenissues",
                            ((void*)0),
                            "tcp",
                            ((void*)0),
                            "TCP Listen Socket Issues",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            3015,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_overflows = rrddim_add(st_listen, "ListenOverflows", "overflows", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else
                    rrdset_next(st_listen);

                rrddim_set_by_pointer(st_listen, rd_overflows, tcpstat.tcps_listendrop);

                rrdset_done(st_listen);
            }



            if (do_ecn == CONFIG_BOOLEAN_YES || (do_ecn == CONFIG_BOOLEAN_AUTO &&
                                                 (tcpstat.tcps_ecn_ce ||
                                                  tcpstat.tcps_ecn_ect0 ||
                                                  tcpstat.tcps_ecn_ect1 ||
                                                  netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                do_ecn = CONFIG_BOOLEAN_YES;

                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_ce = ((void*)0), *rd_no_ect = ((void*)0), *rd_ect0 = ((void*)0), *rd_ect1 = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "ecnpkts",
                            ((void*)0),
                            "ecn",
                            ((void*)0),
                            "IPv4 ECN Statistics",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.tcp.stats",
                            8700,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd_ce = rrddim_add(st, "InCEPkts", "CEP", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_no_ect = rrddim_add(st, "InNoECTPkts", "NoECTP", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_ect0 = rrddim_add(st, "InECT0Pkts", "ECTP0", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_ect1 = rrddim_add(st, "InECT1Pkts", "ECTP1", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                }
                else rrdset_next(st);

                rrddim_set_by_pointer(st, rd_ce, tcpstat.tcps_ecn_ce);
                rrddim_set_by_pointer(st, rd_no_ect, tcpstat.tcps_ecn_ce - (tcpstat.tcps_ecn_ect0 +
                                                                            tcpstat.tcps_ecn_ect1));
                rrddim_set_by_pointer(st, rd_ect0, tcpstat.tcps_ecn_ect0);
                rrddim_set_by_pointer(st, rd_ect1, tcpstat.tcps_ecn_ect1);
                rrdset_done(st);
            }

        }
    } else {
        error("DISABLED: net.inet.tcp.stats module");
        return 1;
    }

    return 0;
}
