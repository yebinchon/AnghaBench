
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct udpstat {scalar_t__ udps_filtermcast; scalar_t__ udps_nosum; scalar_t__ udps_badsum; scalar_t__ udps_fullsock; scalar_t__ udps_noport; scalar_t__ udps_badlen; scalar_t__ udps_hdrops; scalar_t__ udps_opackets; scalar_t__ udps_ipackets; } ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,struct udpstat) ;
 int RRDSET_FLAG_DETAIL ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int config_get_boolean (char*,char*,int) ;
 int error (char*) ;
 scalar_t__ likely (int) ;
 int * rrddim_add (int *,char*,char*,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,scalar_t__) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_flag_set (int *,int ) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_net_inet_udp_stats(int update_every, usec_t dt) {
    (void)dt;
    static int do_udp_packets = -1, do_udp_errors = -1;

    if (unlikely(do_udp_packets == -1)) {
        do_udp_packets = config_get_boolean("plugin:freebsd:net.inet.udp.stats", "ipv4 UDP packets", 1);
        do_udp_errors = config_get_boolean("plugin:freebsd:net.inet.udp.stats", "ipv4 UDP errors", 1);
    }


    if (likely(do_udp_packets || do_udp_errors)) {
        static int mib[4] = {0, 0, 0, 0};
        struct udpstat udpstat;

        if (unlikely(GETSYSCTL_SIMPLE("net.inet.udp.stats", mib, udpstat))) {
            do_udp_packets = 0;
            error("DISABLED: ipv4.udppackets chart");
            do_udp_errors = 0;
            error("DISABLED: ipv4.udperrors chart");
            error("DISABLED: net.inet.udp.stats module");
            return 1;
        } else {



            if (likely(do_udp_packets)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in = ((void*)0), *rd_out = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "udppackets",
                            ((void*)0),
                            "udp",
                            ((void*)0),
                            "IPv4 UDP Packets",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.udp.stats",
                            2601,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_in = rrddim_add(st, "InDatagrams", "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out = rrddim_add(st, "OutDatagrams", "sent", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in, udpstat.udps_ipackets);
                rrddim_set_by_pointer(st, rd_out, udpstat.udps_opackets);
                rrdset_done(st);
            }



            if (likely(do_udp_errors)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in_errors = ((void*)0), *rd_no_ports = ((void*)0), *rd_recv_buf_errors = ((void*)0),
                              *rd_in_csum_errors = ((void*)0), *rd_ignored_multi = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "udperrors",
                            ((void*)0),
                            "udp",
                            ((void*)0),
                            "IPv4 UDP Errors",
                            "events/s",
                            "freebsd.plugin",
                            "net.inet.udp.stats",
                            2701,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd_in_errors = rrddim_add(st, "InErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_no_ports = rrddim_add(st, "NoPorts", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_recv_buf_errors = rrddim_add(st, "RcvbufErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_csum_errors = rrddim_add(st, "InCsumErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_ignored_multi = rrddim_add(st, "IgnoredMulti", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in_errors, udpstat.udps_hdrops + udpstat.udps_badlen);
                rrddim_set_by_pointer(st, rd_no_ports, udpstat.udps_noport);
                rrddim_set_by_pointer(st, rd_recv_buf_errors, udpstat.udps_fullsock);
                rrddim_set_by_pointer(st, rd_in_csum_errors, udpstat.udps_badsum + udpstat.udps_nosum);
                rrddim_set_by_pointer(st, rd_ignored_multi, udpstat.udps_filtermcast);
                rrdset_done(st);
            }
        }
    } else {
        error("DISABLED: net.inet.udp.stats module");
        return 1;
    }

    return 0;
}
