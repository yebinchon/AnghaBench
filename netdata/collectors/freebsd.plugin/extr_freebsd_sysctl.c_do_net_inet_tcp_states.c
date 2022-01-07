
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int uint64_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,int *) ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 size_t TCPS_ESTABLISHED ;
 int TCP_NSTATES ;
 int error (char*) ;
 int * rrddim_add (int *,char*,char*,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_net_inet_tcp_states(int update_every, usec_t dt) {
    (void)dt;
    static int mib[4] = {0, 0, 0, 0};
    uint64_t tcps_states[TCP_NSTATES];


    if (unlikely(GETSYSCTL_SIMPLE("net.inet.tcp.states", mib, tcps_states))) {
        error("DISABLED: ipv4.tcpsock chart");
        error("DISABLED: net.inet.tcp.states module");
        return 1;
    } else {



        static RRDSET *st = ((void*)0);
        static RRDDIM *rd = ((void*)0);

        if (unlikely(!st)) {
            st = rrdset_create_localhost(
                    "ipv4",
                    "tcpsock",
                    ((void*)0),
                    "tcp",
                    ((void*)0),
                    "IPv4 TCP Connections",
                    "active connections",
                    "freebsd.plugin",
                    "net.inet.tcp.states",
                    2500,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd = rrddim_add(st, "CurrEstab", "connections", 1, 1, RRD_ALGORITHM_ABSOLUTE);
        } else
            rrdset_next(st);

        rrddim_set_by_pointer(st, rd, tcps_states[TCPS_ESTABLISHED]);
        rrdset_done(st);
    }

    return 0;
}
