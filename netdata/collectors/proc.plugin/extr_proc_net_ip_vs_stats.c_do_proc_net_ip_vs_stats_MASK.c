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
typedef  int /*<<< orphan*/  procfile ;
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 int BITS_IN_A_KILOBIT ; 
 int /*<<< orphan*/  CONFIG_SECTION_PLUGIN_PROC_NET_IPVS ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_IPVS_NET ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_IPVS_PACKETS ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_IPVS_SOCKETS ; 
 int /*<<< orphan*/  PLUGIN_PROC_MODULE_NET_IPVS_NAME ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/  RRD_TYPE_NET_IPVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 unsigned long long FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(int update_every, usec_t dt) {
    (void)dt;
    static int do_bandwidth = -1, do_sockets = -1, do_packets = -1;
    static procfile *ff = NULL;

    if(do_bandwidth == -1)  do_bandwidth    = FUNC1(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "IPVS bandwidth", 1);
    if(do_sockets == -1)    do_sockets      = FUNC1(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "IPVS connections", 1);
    if(do_packets == -1)    do_packets      = FUNC1(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "IPVS packets", 1);

    if(!ff) {
        char filename[FILENAME_MAX + 1];
        FUNC12(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/proc/net/ip_vs_stats");
        ff = FUNC5(FUNC0(CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, "filename to monitor", filename), " \t,:|", PROCFILE_FLAG_DEFAULT);
    }
    if(!ff) return 1;

    ff = FUNC6(ff);
    if(!ff) return 0; // we return 0, so that we will retry to open it next time

    // make sure we have 3 lines
    if(FUNC2(ff) < 3) return 1;

    // make sure we have 5 words on the 3rd line
    if(FUNC4(ff, 2) < 5) return 1;

    unsigned long long entries, InPackets, OutPackets, InBytes, OutBytes;

    entries     = FUNC13(FUNC3(ff, 2, 0), NULL, 16);
    InPackets   = FUNC13(FUNC3(ff, 2, 1), NULL, 16);
    OutPackets  = FUNC13(FUNC3(ff, 2, 2), NULL, 16);
    InBytes     = FUNC13(FUNC3(ff, 2, 3), NULL, 16);
    OutBytes    = FUNC13(FUNC3(ff, 2, 4), NULL, 16);


    // --------------------------------------------------------------------

    if(do_sockets) {
        static RRDSET *st = NULL;

        if(FUNC14(!st)) {
            st = FUNC9(
                    RRD_TYPE_NET_IPVS
                    , "sockets"
                    , NULL
                    , RRD_TYPE_NET_IPVS
                    , NULL
                    , "IPVS New Connections"
                    , "connections/s"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_NET_IPVS_NAME
                    , NETDATA_CHART_PRIO_IPVS_SOCKETS
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            FUNC7(st, "connections", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else FUNC11(st);

        FUNC8(st, "connections", entries);
        FUNC10(st);
    }

    // --------------------------------------------------------------------

    if(do_packets) {
        static RRDSET *st = NULL;
        if(FUNC14(!st)) {
            st = FUNC9(
                    RRD_TYPE_NET_IPVS
                    , "packets"
                    , NULL
                    , RRD_TYPE_NET_IPVS
                    , NULL
                    , "IPVS Packets"
                    , "packets/s"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_NET_IPVS_NAME
                    , NETDATA_CHART_PRIO_IPVS_PACKETS
                    , update_every
                    , RRDSET_TYPE_LINE
            );

            FUNC7(st, "received", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
            FUNC7(st, "sent", NULL, -1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else FUNC11(st);

        FUNC8(st, "received", InPackets);
        FUNC8(st, "sent", OutPackets);
        FUNC10(st);
    }

    // --------------------------------------------------------------------

    if(do_bandwidth) {
        static RRDSET *st = NULL;
        if(FUNC14(!st)) {
            st = FUNC9(
                    RRD_TYPE_NET_IPVS
                    , "net"
                    , NULL
                    , RRD_TYPE_NET_IPVS
                    , NULL
                    , "IPVS Bandwidth"
                    , "kilobits/s"
                    , PLUGIN_PROC_NAME
                    , PLUGIN_PROC_MODULE_NET_IPVS_NAME
                    , NETDATA_CHART_PRIO_IPVS_NET
                    , update_every
                    , RRDSET_TYPE_AREA
            );

            FUNC7(st, "received", NULL, 8, BITS_IN_A_KILOBIT, RRD_ALGORITHM_INCREMENTAL);
            FUNC7(st, "sent", NULL,    -8, BITS_IN_A_KILOBIT, RRD_ALGORITHM_INCREMENTAL);
        }
        else FUNC11(st);

        FUNC8(st, "received", InBytes);
        FUNC8(st, "sent", OutBytes);
        FUNC10(st);
    }

    return 0;
}