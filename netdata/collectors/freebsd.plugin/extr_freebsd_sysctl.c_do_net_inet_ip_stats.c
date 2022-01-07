
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct ipstat {scalar_t__ ips_noproto; scalar_t__ ips_badaddr; scalar_t__ ips_noroute; scalar_t__ ips_badvers; scalar_t__ ips_badoptions; scalar_t__ ips_badlen; scalar_t__ ips_badhlen; scalar_t__ ips_odropped; scalar_t__ ips_toolong; scalar_t__ ips_toosmall; scalar_t__ ips_tooshort; scalar_t__ ips_badsum; scalar_t__ ips_reassembled; scalar_t__ ips_fragdropped; scalar_t__ ips_fragments; scalar_t__ ips_ofragments; scalar_t__ ips_cantfrag; scalar_t__ ips_fragmented; scalar_t__ ips_delivered; scalar_t__ ips_forward; scalar_t__ ips_localout; scalar_t__ ips_total; } ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,struct ipstat) ;
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

int do_net_inet_ip_stats(int update_every, usec_t dt) {
    (void)dt;
    static int do_ip_packets = -1, do_ip_fragsout = -1, do_ip_fragsin = -1, do_ip_errors = -1;

    if (unlikely(do_ip_packets == -1)) {
        do_ip_packets = config_get_boolean("plugin:freebsd:net.inet.ip.stats", "ipv4 packets", 1);
        do_ip_fragsout = config_get_boolean("plugin:freebsd:net.inet.ip.stats", "ipv4 fragments sent", 1);
        do_ip_fragsin = config_get_boolean("plugin:freebsd:net.inet.ip.stats", "ipv4 fragments assembly", 1);
        do_ip_errors = config_get_boolean("plugin:freebsd:net.inet.ip.stats", "ipv4 errors", 1);
    }


    if (likely(do_ip_packets || do_ip_fragsout || do_ip_fragsin || do_ip_errors)) {
        static int mib[4] = {0, 0, 0, 0};
        struct ipstat ipstat;

        if (unlikely(GETSYSCTL_SIMPLE("net.inet.ip.stats", mib, ipstat))) {
            do_ip_packets = 0;
            error("DISABLED: ipv4.packets chart");
            do_ip_fragsout = 0;
            error("DISABLED: ipv4.fragsout chart");
            do_ip_fragsin = 0;
            error("DISABLED: ipv4.fragsin chart");
            do_ip_errors = 0;
            error("DISABLED: ipv4.errors chart");
            error("DISABLED: net.inet.ip.stats module");
            return 1;
        } else {



            if (likely(do_ip_packets)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in_receives = ((void*)0), *rd_out_requests = ((void*)0), *rd_forward_datagrams = ((void*)0),
                              *rd_in_delivers = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "packets",
                            ((void*)0),
                            "packets",
                            ((void*)0),
                            "IPv4 Packets",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3000,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rd_in_receives = rrddim_add(st, "InReceives", "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_requests = rrddim_add(st, "OutRequests", "sent", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_forward_datagrams = rrddim_add(st, "ForwDatagrams", "forwarded", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_delivers = rrddim_add(st, "InDelivers", "delivered", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in_receives, ipstat.ips_total);
                rrddim_set_by_pointer(st, rd_out_requests, ipstat.ips_localout);
                rrddim_set_by_pointer(st, rd_forward_datagrams, ipstat.ips_forward);
                rrddim_set_by_pointer(st, rd_in_delivers, ipstat.ips_delivered);
                rrdset_done(st);
            }



            if (likely(do_ip_fragsout)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_ok = ((void*)0), *rd_fails = ((void*)0), *rd_created = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "fragsout",
                            ((void*)0),
                            "fragments",
                            ((void*)0),
                            "IPv4 Fragments Sent",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3010,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd_ok = rrddim_add(st, "FragOKs", "ok", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_fails = rrddim_add(st, "FragFails", "failed", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_created = rrddim_add(st, "FragCreates", "created", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_ok, ipstat.ips_fragmented);
                rrddim_set_by_pointer(st, rd_fails, ipstat.ips_cantfrag);
                rrddim_set_by_pointer(st, rd_created, ipstat.ips_ofragments);
                rrdset_done(st);
            }



            if (likely(do_ip_fragsin)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_ok = ((void*)0), *rd_failed = ((void*)0), *rd_all = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "fragsin",
                            ((void*)0),
                            "fragments",
                            ((void*)0),
                            "IPv4 Fragments Reassembly",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3011,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd_ok = rrddim_add(st, "ReasmOKs", "ok", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_failed = rrddim_add(st, "ReasmFails", "failed", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_all = rrddim_add(st, "ReasmReqds", "all", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_ok, ipstat.ips_fragments);
                rrddim_set_by_pointer(st, rd_failed, ipstat.ips_fragdropped);
                rrddim_set_by_pointer(st, rd_all, ipstat.ips_reassembled);
                rrdset_done(st);
            }



            if (likely(do_ip_errors)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in_discards = ((void*)0), *rd_out_discards = ((void*)0),
                              *rd_in_hdr_errors = ((void*)0), *rd_out_no_routes = ((void*)0),
                              *rd_in_addr_errors = ((void*)0), *rd_in_unknown_protos = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4",
                            "errors",
                            ((void*)0),
                            "errors",
                            ((void*)0),
                            "IPv4 Errors",
                            "packets/s",
                            "freebsd.plugin",
                            "net.inet.ip.stats",
                            3002,
                            update_every,
                            RRDSET_TYPE_LINE
                    );

                    rrdset_flag_set(st, RRDSET_FLAG_DETAIL);

                    rd_in_discards = rrddim_add(st, "InDiscards", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_discards = rrddim_add(st, "OutDiscards", ((void*)0), -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_hdr_errors = rrddim_add(st, "InHdrErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_no_routes = rrddim_add(st, "OutNoRoutes", ((void*)0), -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_addr_errors = rrddim_add(st, "InAddrErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_unknown_protos = rrddim_add(st, "InUnknownProtos", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in_discards, ipstat.ips_badsum + ipstat.ips_tooshort +
                                                                ipstat.ips_toosmall + ipstat.ips_toolong);
                rrddim_set_by_pointer(st, rd_out_discards, ipstat.ips_odropped);
                rrddim_set_by_pointer(st, rd_in_hdr_errors, ipstat.ips_badhlen + ipstat.ips_badlen +
                                                                ipstat.ips_badoptions + ipstat.ips_badvers);
                rrddim_set_by_pointer(st, rd_out_no_routes, ipstat.ips_noroute);
                rrddim_set_by_pointer(st, rd_in_addr_errors, ipstat.ips_badaddr);
                rrddim_set_by_pointer(st, rd_in_unknown_protos, ipstat.ips_noproto);
                rrdset_done(st);
            }
        }
    } else {
        error("DISABLED: net.inet.ip.stats module");
        return 1;
    }

    return 0;
}
