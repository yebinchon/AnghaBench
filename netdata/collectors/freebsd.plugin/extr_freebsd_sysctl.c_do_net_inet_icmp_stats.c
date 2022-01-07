
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef scalar_t__ u_long ;
struct icmpstat {scalar_t__* icps_outhist; scalar_t__* icps_inhist; scalar_t__ icps_checksum; scalar_t__ icps_error; scalar_t__ icps_tooshort; scalar_t__ icps_badlen; scalar_t__ icps_badcode; } ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,struct icmpstat) ;
 size_t ICMP_ECHO ;
 size_t ICMP_ECHOREPLY ;
 int ICMP_MAXTYPE ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int config_get_boolean (char*,char*,int) ;
 int error (char*) ;
 scalar_t__ likely (int) ;
 int * rrddim_add (int *,char*,char*,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,scalar_t__) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_net_inet_icmp_stats(int update_every, usec_t dt) {
    (void)dt;
    static int do_icmp_packets = -1, do_icmp_errors = -1, do_icmpmsg = -1;

    if (unlikely(do_icmp_packets == -1)) {
        do_icmp_packets = config_get_boolean("plugin:freebsd:net.inet.icmp.stats", "ipv4 ICMP packets", 1);
        do_icmp_errors = config_get_boolean("plugin:freebsd:net.inet.icmp.stats", "ipv4 ICMP errors", 1);
        do_icmpmsg = config_get_boolean("plugin:freebsd:net.inet.icmp.stats", "ipv4 ICMP messages", 1);
    }

    if (likely(do_icmp_packets || do_icmp_errors || do_icmpmsg)) {
        static int mib[4] = {0, 0, 0, 0};
        struct icmpstat icmpstat;
        struct icmp_total {
            u_long msgs_in;
            u_long msgs_out;
        } icmp_total = {0, 0};

        if (unlikely(GETSYSCTL_SIMPLE("net.inet.icmp.stats", mib, icmpstat))) {
            do_icmp_packets = 0;
            error("DISABLED: ipv4.icmp chart");
            do_icmp_errors = 0;
            error("DISABLED: ipv4.icmp_errors chart");
            do_icmpmsg = 0;
            error("DISABLED: ipv4.icmpmsg chart");
            error("DISABLED: net.inet.icmp.stats module");
            return 1;
        } else {
            int i;

            for (i = 0; i <= ICMP_MAXTYPE; i++) {
                icmp_total.msgs_in += icmpstat.icps_inhist[i];
                icmp_total.msgs_out += icmpstat.icps_outhist[i];
            }
            icmp_total.msgs_in += icmpstat.icps_badcode + icmpstat.icps_badlen + icmpstat.icps_checksum + icmpstat.icps_tooshort;



            if (likely(do_icmp_packets)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in = ((void*)0), *rd_out = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4"
                            , "icmp"
                            , ((void*)0)
                            , "icmp"
                            , ((void*)0)
                            , "IPv4 ICMP Packets"
                            , "packets/s"
                            , "freebsd.plugin"
                            , "net.inet.icmp.stats"
                            , 2602
                            , update_every
                            , RRDSET_TYPE_LINE
                    );

                    rd_in = rrddim_add(st, "InMsgs", "received", 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out = rrddim_add(st, "OutMsgs", "sent", -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in, icmp_total.msgs_in);
                rrddim_set_by_pointer(st, rd_out, icmp_total.msgs_out);

                rrdset_done(st);
            }



            if (likely(do_icmp_errors)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in = ((void*)0), *rd_out = ((void*)0), *rd_in_csum = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4"
                            , "icmp_errors"
                            , ((void*)0)
                            , "icmp"
                            , ((void*)0)
                            , "IPv4 ICMP Errors"
                            , "packets/s"
                            , "freebsd.plugin"
                            , "net.inet.icmp.stats"
                            , 2603
                            , update_every
                            , RRDSET_TYPE_LINE
                    );

                    rd_in = rrddim_add(st, "InErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out = rrddim_add(st, "OutErrors", ((void*)0), -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in_csum = rrddim_add(st, "InCsumErrors", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in, icmpstat.icps_badcode + icmpstat.icps_badlen +
                                                      icmpstat.icps_checksum + icmpstat.icps_tooshort);
                rrddim_set_by_pointer(st, rd_out, icmpstat.icps_error);
                rrddim_set_by_pointer(st, rd_in_csum, icmpstat.icps_checksum);

                rrdset_done(st);
            }



            if (likely(do_icmpmsg)) {
                static RRDSET *st = ((void*)0);
                static RRDDIM *rd_in_reps = ((void*)0), *rd_out_reps = ((void*)0), *rd_in = ((void*)0), *rd_out = ((void*)0);

                if (unlikely(!st)) {
                    st = rrdset_create_localhost(
                            "ipv4"
                            , "icmpmsg"
                            , ((void*)0)
                            , "icmp"
                            , ((void*)0)
                            , "IPv4 ICMP Messages"
                            , "packets/s"
                            , "freebsd.plugin"
                            , "net.inet.icmp.stats"
                            , 2604
                            , update_every
                            , RRDSET_TYPE_LINE
                    );

                    rd_in_reps = rrddim_add(st, "InEchoReps", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out_reps = rrddim_add(st, "OutEchoReps", ((void*)0), -1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_in = rrddim_add(st, "InEchos", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
                    rd_out = rrddim_add(st, "OutEchos", ((void*)0), -1, 1, RRD_ALGORITHM_INCREMENTAL);
                } else
                    rrdset_next(st);

                rrddim_set_by_pointer(st, rd_in_reps, icmpstat.icps_inhist[ICMP_ECHOREPLY]);
                rrddim_set_by_pointer(st, rd_out_reps, icmpstat.icps_outhist[ICMP_ECHOREPLY]);
                rrddim_set_by_pointer(st, rd_in, icmpstat.icps_inhist[ICMP_ECHO]);
                rrddim_set_by_pointer(st, rd_out, icmpstat.icps_outhist[ICMP_ECHO]);

                rrdset_done(st);
            }
        }
    } else {
        error("DISABLED: net.inet.icmp.stats module");
        return 1;
    }

    return 0;
}
