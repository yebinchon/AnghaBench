
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int procfile ;
typedef int RRDSET ;


 int BITS_IN_A_KILOBIT ;
 int CONFIG_SECTION_PLUGIN_PROC_NET_IPVS ;
 int FILENAME_MAX ;
 int NETDATA_CHART_PRIO_IPVS_NET ;
 int NETDATA_CHART_PRIO_IPVS_PACKETS ;
 int NETDATA_CHART_PRIO_IPVS_SOCKETS ;
 int PLUGIN_PROC_MODULE_NET_IPVS_NAME ;
 int PLUGIN_PROC_NAME ;
 int PROCFILE_FLAG_DEFAULT ;
 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int RRD_TYPE_NET_IPVS ;
 int config_get (int ,char*,char*) ;
 int config_get_boolean (int ,char*,int) ;
 int netdata_configured_host_prefix ;
 int procfile_lines (int *) ;
 int procfile_lineword (int *,int,int) ;
 int procfile_linewords (int *,int) ;
 int * procfile_open (int ,char*,int ) ;
 int * procfile_readall (int *) ;
 int rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set (int *,char*,unsigned long long) ;
 int * rrdset_create_localhost (int ,char*,int *,int ,int *,char*,char*,int ,int ,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 int snprintfz (char*,int ,char*,int ,char*) ;
 unsigned long long strtoull (int ,int *,int) ;
 scalar_t__ unlikely (int) ;

int do_proc_net_ip_vs_stats(int update_every, usec_t dt) {
    (void)dt;
    static int do_bandwidth = -1, do_sockets = -1, do_packets = -1;
    static procfile *ff = ((void*)0);

    if(do_bandwidth == -1) do_bandwidth = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "IPVS bandwidth", 1);
    if(do_sockets == -1) do_sockets = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "IPVS connections", 1);
    if(do_packets == -1) do_packets = config_get_boolean(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "IPVS packets", 1);

    if(!ff) {
        char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/net/ip_vs_stats");
        ff = procfile_open(config_get(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "filename to monitor", filename), " \t,:|", PROCFILE_FLAG_DEFAULT);
    }
    if(!ff) return 1;

    ff = procfile_readall(ff);
    if(!ff) return 0;


    if(procfile_lines(ff) < 3) return 1;


    if(procfile_linewords(ff, 2) < 5) return 1;

    unsigned long long entries, InPackets, OutPackets, InBytes, OutBytes;

    entries = strtoull(procfile_lineword(ff, 2, 0), ((void*)0), 16);
    InPackets = strtoull(procfile_lineword(ff, 2, 1), ((void*)0), 16);
    OutPackets = strtoull(procfile_lineword(ff, 2, 2), ((void*)0), 16);
    InBytes = strtoull(procfile_lineword(ff, 2, 3), ((void*)0), 16);
    OutBytes = strtoull(procfile_lineword(ff, 2, 4), ((void*)0), 16);




    if(do_sockets) {
        static RRDSET *st = ((void*)0);

        if(unlikely(!st)) {
            st = rrdset_create_localhost(
                    RRD_TYPE_NET_IPVS
                    , "sockets"
                    , ((void*)0)
                    , RRD_TYPE_NET_IPVS
                    , ((void*)0)
                    , "IPVS New Connections"
                    , "connections/s"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_NET_IPVS_NAME
                    , NETDATA_CHART_PRIO_IPVS_SOCKETS
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            rrddim_add(st, "connections", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st);

        rrddim_set(st, "connections", entries);
        rrdset_done(st);
    }



    if(do_packets) {
        static RRDSET *st = ((void*)0);
        if(unlikely(!st)) {
            st = rrdset_create_localhost(
                    RRD_TYPE_NET_IPVS
                    , "packets"
                    , ((void*)0)
                    , RRD_TYPE_NET_IPVS
                    , ((void*)0)
                    , "IPVS Packets"
                    , "packets/s"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_NET_IPVS_NAME
                    , NETDATA_CHART_PRIO_IPVS_PACKETS
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            rrddim_add(st, "received", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rrddim_add(st, "sent", ((void*)0), -1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st);

        rrddim_set(st, "received", InPackets);
        rrddim_set(st, "sent", OutPackets);
        rrdset_done(st);
    }



    if(do_bandwidth) {
        static RRDSET *st = ((void*)0);
        if(unlikely(!st)) {
            st = rrdset_create_localhost(
                    RRD_TYPE_NET_IPVS
                    , "net"
                    , ((void*)0)
                    , RRD_TYPE_NET_IPVS
                    , ((void*)0)
                    , "IPVS Bandwidth"
                    , "kilobits/s"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_NET_IPVS_NAME
                    , NETDATA_CHART_PRIO_IPVS_NET
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            rrddim_add(st, "received", ((void*)0), 8, BITS_IN_A_KILOBIT, RRD_ALGORITHM_INCREMENTAL);
            rrddim_add(st, "sent", ((void*)0), -8, BITS_IN_A_KILOBIT, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st);

        rrddim_set(st, "received", InBytes);
        rrddim_set(st, "sent", OutBytes);
        rrdset_done(st);
    }

    return 0;
}
