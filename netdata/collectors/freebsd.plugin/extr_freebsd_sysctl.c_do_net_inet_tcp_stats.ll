; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_tcp_stats.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_tcp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpstat = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@do_net_inet_tcp_stats.do_tcp_packets = internal global i32 -1, align 4
@do_net_inet_tcp_stats.do_tcp_errors = internal global i32 -1, align 4
@do_net_inet_tcp_stats.do_tcp_handshake = internal global i32 -1, align 4
@do_net_inet_tcp_stats.do_tcpext_connaborts = internal global i32 -1, align 4
@do_net_inet_tcp_stats.do_tcpext_ofo = internal global i32 -1, align 4
@do_net_inet_tcp_stats.do_tcpext_syncookies = internal global i32 -1, align 4
@do_net_inet_tcp_stats.do_tcpext_listen = internal global i32 -1, align 4
@do_net_inet_tcp_stats.do_ecn = internal global i32 -1, align 4
@.str = private unnamed_addr constant [34 x i8] c"plugin:freebsd:net.inet.tcp.stats\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ipv4 TCP packets\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ipv4 TCP errors\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ipv4 TCP handshake issues\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"TCP connection aborts\00", align 1
@CONFIG_BOOLEAN_AUTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"TCP out-of-order queue\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"TCP SYN cookies\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"TCP listen issues\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ECN packets\00", align 1
@do_net_inet_tcp_stats.mib = internal global [4 x i32] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [19 x i8] c"net.inet.tcp.stats\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"DISABLED: ipv4.tcppackets chart\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"DISABLED: ipv4.tcperrors  chart\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"DISABLED: ipv4.tcphandshake  chart\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"DISABLED: ipv4.tcpconnaborts  chart\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"DISABLED: ipv4.tcpofo chart\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"DISABLED: ipv4.tcpsyncookies chart\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"DISABLED: ipv4.tcplistenissues chart\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"DISABLED: ipv4.ecnpkts chart\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"DISABLED: net.inet.tcp.stats module\00", align 1
@do_net_inet_tcp_stats.st = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_in_segs = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_out_segs = internal global i32* null, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"tcppackets\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"IPv4 TCP Packets\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"packets/s\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"InSegs\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"OutSegs\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@do_net_inet_tcp_stats.st.29 = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_in_errs = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_in_csum_errs = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_retrans_segs = internal global i32* null, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"tcperrors\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"IPv4 TCP Errors\00", align 1
@RRDSET_FLAG_DETAIL = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"InErrs\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"InCsumErrors\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"RetransSegs\00", align 1
@do_net_inet_tcp_stats.st.35 = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_estab_resets = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_active_opens = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_passive_opens = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_attempt_fails = internal global i32* null, align 8
@.str.36 = private unnamed_addr constant [13 x i8] c"tcphandshake\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"IPv4 TCP Handshake Issues\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"events/s\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"EstabResets\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"ActiveOpens\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"PassiveOpens\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"AttemptFails\00", align 1
@CONFIG_BOOLEAN_YES = common dso_local global i32 0, align 4
@netdata_zero_metrics_enabled = common dso_local global i32 0, align 4
@do_net_inet_tcp_stats.st.43 = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_on_data = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_on_close = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_on_memory = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_on_timeout = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_on_linger = internal global i32* null, align 8
@.str.44 = private unnamed_addr constant [14 x i8] c"tcpconnaborts\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"TCP Connection Aborts\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"connections/s\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"TCPAbortOnData\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"baddata\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"TCPAbortOnClose\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"userclosed\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"TCPAbortOnMemory\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"nomemory\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"TCPAbortOnTimeout\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"TCPAbortOnLinger\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"linger\00", align 1
@do_net_inet_tcp_stats.st.57 = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_ofo_queue = internal global i32* null, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"tcpofo\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"TCP Out-Of-Order Queue\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"TCPOFOQueue\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"inqueue\00", align 1
@do_net_inet_tcp_stats.st.62 = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_recv = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_send = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_failed = internal global i32* null, align 8
@.str.63 = private unnamed_addr constant [14 x i8] c"tcpsyncookies\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"TCP SYN Cookies\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"SyncookiesRecv\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"SyncookiesSent\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"SyncookiesFailed\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@do_net_inet_tcp_stats.st_listen = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_overflows = internal global i32* null, align 8
@.str.69 = private unnamed_addr constant [16 x i8] c"tcplistenissues\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"TCP Listen Socket Issues\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"ListenOverflows\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"overflows\00", align 1
@do_net_inet_tcp_stats.st.73 = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_ce = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_no_ect = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_ect0 = internal global i32* null, align 8
@do_net_inet_tcp_stats.rd_ect1 = internal global i32* null, align 8
@.str.74 = private unnamed_addr constant [8 x i8] c"ecnpkts\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"ecn\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"IPv4 ECN Statistics\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"InCEPkts\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"CEP\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"InNoECTPkts\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"NoECTP\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"InECT0Pkts\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"ECTP0\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"InECT1Pkts\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"ECTP1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_net_inet_tcp_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpstat, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @do_net_inet_tcp_stats.do_tcp_packets, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = call i32 @config_get_boolean(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %14, i32* @do_net_inet_tcp_stats.do_tcp_packets, align 4
  %15 = call i32 @config_get_boolean(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %15, i32* @do_net_inet_tcp_stats.do_tcp_errors, align 4
  %16 = call i32 @config_get_boolean(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %16, i32* @do_net_inet_tcp_stats.do_tcp_handshake, align 4
  %17 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %18 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  store i32 %18, i32* @do_net_inet_tcp_stats.do_tcpext_connaborts, align 4
  %19 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %20 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %19)
  store i32 %20, i32* @do_net_inet_tcp_stats.do_tcpext_ofo, align 4
  %21 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %22 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %21)
  store i32 %22, i32* @do_net_inet_tcp_stats.do_tcpext_syncookies, align 4
  %23 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %24 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %23)
  store i32 %24, i32* @do_net_inet_tcp_stats.do_tcpext_listen, align 4
  %25 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %26 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %25)
  store i32 %26, i32* @do_net_inet_tcp_stats.do_ecn, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load i32, i32* @do_net_inet_tcp_stats.do_tcp_packets, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @do_net_inet_tcp_stats.do_tcp_errors, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @do_net_inet_tcp_stats.do_tcp_handshake, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_connaborts, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_ofo, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_syncookies, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_listen, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @do_net_inet_tcp_stats.do_ecn, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %27
  %52 = phi i1 [ true, %45 ], [ true, %42 ], [ true, %39 ], [ true, %36 ], [ true, %33 ], [ true, %30 ], [ true, %27 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @likely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %539

56:                                               ; preds = %51
  %57 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_net_inet_tcp_stats.mib, i64 0, i64 0), %struct.tcpstat* byval(%struct.tcpstat) align 8 %6)
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  store i32 0, i32* @do_net_inet_tcp_stats.do_tcp_packets, align 4
  %61 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_tcp_stats.do_tcp_errors, align 4
  %62 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_tcp_stats.do_tcp_handshake, align 4
  %63 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_tcp_stats.do_tcpext_connaborts, align 4
  %64 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_tcp_stats.do_tcpext_ofo, align 4
  %65 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_tcp_stats.do_tcpext_syncookies, align 4
  %66 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_tcp_stats.do_tcpext_listen, align 4
  %67 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_tcp_stats.do_ecn, align 4
  %68 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %69 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %542

70:                                               ; preds = %56
  %71 = load i32, i32* @do_net_inet_tcp_stats.do_tcp_packets, align 4
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %70
  %75 = load i32*, i32** @do_net_inet_tcp_stats.st, align 8
  %76 = icmp ne i32* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %84 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 2600, i32 %82, i32 %83)
  store i32* %84, i32** @do_net_inet_tcp_stats.st, align 8
  %85 = load i32*, i32** @do_net_inet_tcp_stats.st, align 8
  %86 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %87 = call i32* @rrddim_add(i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 1, i32 1, i32 %86)
  store i32* %87, i32** @do_net_inet_tcp_stats.rd_in_segs, align 8
  %88 = load i32*, i32** @do_net_inet_tcp_stats.st, align 8
  %89 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %90 = call i32* @rrddim_add(i32* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 -1, i32 1, i32 %89)
  store i32* %90, i32** @do_net_inet_tcp_stats.rd_out_segs, align 8
  br label %94

91:                                               ; preds = %74
  %92 = load i32*, i32** @do_net_inet_tcp_stats.st, align 8
  %93 = call i32 @rrdset_next(i32* %92)
  br label %94

94:                                               ; preds = %91, %81
  %95 = load i32*, i32** @do_net_inet_tcp_stats.st, align 8
  %96 = load i32*, i32** @do_net_inet_tcp_stats.rd_in_segs, align 8
  %97 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 23
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @rrddim_set_by_pointer(i32* %95, i32* %96, i64 %98)
  %100 = load i32*, i32** @do_net_inet_tcp_stats.st, align 8
  %101 = load i32*, i32** @do_net_inet_tcp_stats.rd_out_segs, align 8
  %102 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 22
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @rrddim_set_by_pointer(i32* %100, i32* %101, i64 %103)
  %105 = load i32*, i32** @do_net_inet_tcp_stats.st, align 8
  %106 = call i32 @rrdset_done(i32* %105)
  br label %107

107:                                              ; preds = %94, %70
  %108 = load i32, i32* @do_net_inet_tcp_stats.do_tcp_errors, align 4
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %158

111:                                              ; preds = %107
  %112 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %113 = icmp ne i32* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %121 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 2700, i32 %119, i32 %120)
  store i32* %121, i32** @do_net_inet_tcp_stats.st.29, align 8
  %122 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %123 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %124 = call i32 @rrdset_flag_set(i32* %122, i32 %123)
  %125 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %126 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %127 = call i32* @rrddim_add(i32* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %126)
  store i32* %127, i32** @do_net_inet_tcp_stats.rd_in_errs, align 8
  %128 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %129 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %130 = call i32* @rrddim_add(i32* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %129)
  store i32* %130, i32** @do_net_inet_tcp_stats.rd_in_csum_errs, align 8
  %131 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %132 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %133 = call i32* @rrddim_add(i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* null, i32 -1, i32 1, i32 %132)
  store i32* %133, i32** @do_net_inet_tcp_stats.rd_retrans_segs, align 8
  br label %137

134:                                              ; preds = %111
  %135 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %136 = call i32 @rrdset_next(i32* %135)
  br label %137

137:                                              ; preds = %134, %118
  %138 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %139 = load i32*, i32** @do_net_inet_tcp_stats.rd_in_errs, align 8
  %140 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 20
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 19
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %141, %143
  %145 = call i32 @rrddim_set_by_pointer(i32* %138, i32* %139, i64 %144)
  %146 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %147 = load i32*, i32** @do_net_inet_tcp_stats.rd_in_csum_errs, align 8
  %148 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 18
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @rrddim_set_by_pointer(i32* %146, i32* %147, i64 %149)
  %151 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %152 = load i32*, i32** @do_net_inet_tcp_stats.rd_retrans_segs, align 8
  %153 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 17
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @rrddim_set_by_pointer(i32* %151, i32* %152, i64 %154)
  %156 = load i32*, i32** @do_net_inet_tcp_stats.st.29, align 8
  %157 = call i32 @rrdset_done(i32* %156)
  br label %158

158:                                              ; preds = %137, %107
  %159 = load i32, i32* @do_net_inet_tcp_stats.do_tcp_handshake, align 4
  %160 = call i64 @likely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %214

162:                                              ; preds = %158
  %163 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %164 = icmp ne i32* %163, null
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %162
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %172 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 2900, i32 %170, i32 %171)
  store i32* %172, i32** @do_net_inet_tcp_stats.st.35, align 8
  %173 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %174 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %175 = call i32 @rrdset_flag_set(i32* %173, i32 %174)
  %176 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %177 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %178 = call i32* @rrddim_add(i32* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %177)
  store i32* %178, i32** @do_net_inet_tcp_stats.rd_estab_resets, align 8
  %179 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %180 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %181 = call i32* @rrddim_add(i32* %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %180)
  store i32* %181, i32** @do_net_inet_tcp_stats.rd_active_opens, align 8
  %182 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %183 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %184 = call i32* @rrddim_add(i32* %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %183)
  store i32* %184, i32** @do_net_inet_tcp_stats.rd_passive_opens, align 8
  %185 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %186 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %187 = call i32* @rrddim_add(i32* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %186)
  store i32* %187, i32** @do_net_inet_tcp_stats.rd_attempt_fails, align 8
  br label %191

188:                                              ; preds = %162
  %189 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %190 = call i32 @rrdset_next(i32* %189)
  br label %191

191:                                              ; preds = %188, %169
  %192 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %193 = load i32*, i32** @do_net_inet_tcp_stats.rd_estab_resets, align 8
  %194 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 16
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @rrddim_set_by_pointer(i32* %192, i32* %193, i64 %195)
  %197 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %198 = load i32*, i32** @do_net_inet_tcp_stats.rd_active_opens, align 8
  %199 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 15
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @rrddim_set_by_pointer(i32* %197, i32* %198, i64 %200)
  %202 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %203 = load i32*, i32** @do_net_inet_tcp_stats.rd_passive_opens, align 8
  %204 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 14
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @rrddim_set_by_pointer(i32* %202, i32* %203, i64 %205)
  %207 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %208 = load i32*, i32** @do_net_inet_tcp_stats.rd_attempt_fails, align 8
  %209 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 13
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @rrddim_set_by_pointer(i32* %207, i32* %208, i64 %210)
  %212 = load i32*, i32** @do_net_inet_tcp_stats.st.35, align 8
  %213 = call i32 @rrdset_done(i32* %212)
  br label %214

214:                                              ; preds = %191, %158
  %215 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_connaborts, align 4
  %216 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %246, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_connaborts, align 4
  %220 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %304

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 12
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %246, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 11
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %246, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 10
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 9
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 8
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %244 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %304

246:                                              ; preds = %242, %238, %234, %230, %226, %222, %214
  %247 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %247, i32* @do_net_inet_tcp_stats.do_tcpext_connaborts, align 4
  %248 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %249 = icmp ne i32* %248, null
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = call i64 @unlikely(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %273

254:                                              ; preds = %246
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %257 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 3010, i32 %255, i32 %256)
  store i32* %257, i32** @do_net_inet_tcp_stats.st.43, align 8
  %258 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %259 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %260 = call i32* @rrddim_add(i32* %258, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i32 1, i32 1, i32 %259)
  store i32* %260, i32** @do_net_inet_tcp_stats.rd_on_data, align 8
  %261 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %262 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %263 = call i32* @rrddim_add(i32* %261, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), i32 1, i32 1, i32 %262)
  store i32* %263, i32** @do_net_inet_tcp_stats.rd_on_close, align 8
  %264 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %265 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %266 = call i32* @rrddim_add(i32* %264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i32 1, i32 1, i32 %265)
  store i32* %266, i32** @do_net_inet_tcp_stats.rd_on_memory, align 8
  %267 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %268 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %269 = call i32* @rrddim_add(i32* %267, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i32 1, i32 1, i32 %268)
  store i32* %269, i32** @do_net_inet_tcp_stats.rd_on_timeout, align 8
  %270 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %271 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %272 = call i32* @rrddim_add(i32* %270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i32 1, i32 1, i32 %271)
  store i32* %272, i32** @do_net_inet_tcp_stats.rd_on_linger, align 8
  br label %276

273:                                              ; preds = %246
  %274 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %275 = call i32 @rrdset_next(i32* %274)
  br label %276

276:                                              ; preds = %273, %254
  %277 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %278 = load i32*, i32** @do_net_inet_tcp_stats.rd_on_data, align 8
  %279 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 12
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @rrddim_set_by_pointer(i32* %277, i32* %278, i64 %280)
  %282 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %283 = load i32*, i32** @do_net_inet_tcp_stats.rd_on_close, align 8
  %284 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 11
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @rrddim_set_by_pointer(i32* %282, i32* %283, i64 %285)
  %287 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %288 = load i32*, i32** @do_net_inet_tcp_stats.rd_on_memory, align 8
  %289 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 10
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @rrddim_set_by_pointer(i32* %287, i32* %288, i64 %290)
  %292 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %293 = load i32*, i32** @do_net_inet_tcp_stats.rd_on_timeout, align 8
  %294 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 9
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @rrddim_set_by_pointer(i32* %292, i32* %293, i64 %295)
  %297 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %298 = load i32*, i32** @do_net_inet_tcp_stats.rd_on_linger, align 8
  %299 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 8
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @rrddim_set_by_pointer(i32* %297, i32* %298, i64 %300)
  %302 = load i32*, i32** @do_net_inet_tcp_stats.st.43, align 8
  %303 = call i32 @rrdset_done(i32* %302)
  br label %304

304:                                              ; preds = %276, %242, %218
  %305 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_ofo, align 4
  %306 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %320, label %308

308:                                              ; preds = %304
  %309 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_ofo, align 4
  %310 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %346

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %312
  %317 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %318 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %346

320:                                              ; preds = %316, %312, %304
  %321 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %321, i32* @do_net_inet_tcp_stats.do_tcpext_ofo, align 4
  %322 = load i32*, i32** @do_net_inet_tcp_stats.st.57, align 8
  %323 = icmp ne i32* %322, null
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = call i64 @unlikely(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %320
  %329 = load i32, i32* %4, align 4
  %330 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %331 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 3050, i32 %329, i32 %330)
  store i32* %331, i32** @do_net_inet_tcp_stats.st.57, align 8
  %332 = load i32*, i32** @do_net_inet_tcp_stats.st.57, align 8
  %333 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %334 = call i32* @rrddim_add(i32* %332, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), i32 1, i32 1, i32 %333)
  store i32* %334, i32** @do_net_inet_tcp_stats.rd_ofo_queue, align 8
  br label %338

335:                                              ; preds = %320
  %336 = load i32*, i32** @do_net_inet_tcp_stats.st.57, align 8
  %337 = call i32 @rrdset_next(i32* %336)
  br label %338

338:                                              ; preds = %335, %328
  %339 = load i32*, i32** @do_net_inet_tcp_stats.st.57, align 8
  %340 = load i32*, i32** @do_net_inet_tcp_stats.rd_ofo_queue, align 8
  %341 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 7
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @rrddim_set_by_pointer(i32* %339, i32* %340, i64 %342)
  %344 = load i32*, i32** @do_net_inet_tcp_stats.st.57, align 8
  %345 = call i32 @rrdset_done(i32* %344)
  br label %346

346:                                              ; preds = %338, %316, %308
  %347 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_syncookies, align 4
  %348 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %370, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_syncookies, align 4
  %352 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %412

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 5
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %370, label %358

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 6
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %368 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %412

370:                                              ; preds = %366, %362, %358, %354, %346
  %371 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %371, i32* @do_net_inet_tcp_stats.do_tcpext_syncookies, align 4
  %372 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %373 = icmp ne i32* %372, null
  %374 = xor i1 %373, true
  %375 = zext i1 %374 to i32
  %376 = call i64 @unlikely(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %391

378:                                              ; preds = %370
  %379 = load i32, i32* %4, align 4
  %380 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %381 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 3100, i32 %379, i32 %380)
  store i32* %381, i32** @do_net_inet_tcp_stats.st.62, align 8
  %382 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %383 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %384 = call i32* @rrddim_add(i32* %382, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 1, i32 1, i32 %383)
  store i32* %384, i32** @do_net_inet_tcp_stats.rd_recv, align 8
  %385 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %386 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %387 = call i32* @rrddim_add(i32* %385, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 -1, i32 1, i32 %386)
  store i32* %387, i32** @do_net_inet_tcp_stats.rd_send, align 8
  %388 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %389 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %390 = call i32* @rrddim_add(i32* %388, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i32 -1, i32 1, i32 %389)
  store i32* %390, i32** @do_net_inet_tcp_stats.rd_failed, align 8
  br label %394

391:                                              ; preds = %370
  %392 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %393 = call i32 @rrdset_next(i32* %392)
  br label %394

394:                                              ; preds = %391, %378
  %395 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %396 = load i32*, i32** @do_net_inet_tcp_stats.rd_recv, align 8
  %397 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 6
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @rrddim_set_by_pointer(i32* %395, i32* %396, i64 %398)
  %400 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %401 = load i32*, i32** @do_net_inet_tcp_stats.rd_send, align 8
  %402 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 5
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @rrddim_set_by_pointer(i32* %400, i32* %401, i64 %403)
  %405 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %406 = load i32*, i32** @do_net_inet_tcp_stats.rd_failed, align 8
  %407 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 4
  %408 = load i64, i64* %407, align 8
  %409 = call i32 @rrddim_set_by_pointer(i32* %405, i32* %406, i64 %408)
  %410 = load i32*, i32** @do_net_inet_tcp_stats.st.62, align 8
  %411 = call i32 @rrdset_done(i32* %410)
  br label %412

412:                                              ; preds = %394, %366, %350
  %413 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_listen, align 4
  %414 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %428, label %416

416:                                              ; preds = %412
  %417 = load i32, i32* @do_net_inet_tcp_stats.do_tcpext_listen, align 4
  %418 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %454

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 3
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %428, label %424

424:                                              ; preds = %420
  %425 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %426 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %454

428:                                              ; preds = %424, %420, %412
  %429 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %429, i32* @do_net_inet_tcp_stats.do_tcpext_listen, align 4
  %430 = load i32*, i32** @do_net_inet_tcp_stats.st_listen, align 8
  %431 = icmp ne i32* %430, null
  %432 = xor i1 %431, true
  %433 = zext i1 %432 to i32
  %434 = call i64 @unlikely(i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %428
  %437 = load i32, i32* %4, align 4
  %438 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %439 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 3015, i32 %437, i32 %438)
  store i32* %439, i32** @do_net_inet_tcp_stats.st_listen, align 8
  %440 = load i32*, i32** @do_net_inet_tcp_stats.st_listen, align 8
  %441 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %442 = call i32* @rrddim_add(i32* %440, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i32 1, i32 1, i32 %441)
  store i32* %442, i32** @do_net_inet_tcp_stats.rd_overflows, align 8
  br label %446

443:                                              ; preds = %428
  %444 = load i32*, i32** @do_net_inet_tcp_stats.st_listen, align 8
  %445 = call i32 @rrdset_next(i32* %444)
  br label %446

446:                                              ; preds = %443, %436
  %447 = load i32*, i32** @do_net_inet_tcp_stats.st_listen, align 8
  %448 = load i32*, i32** @do_net_inet_tcp_stats.rd_overflows, align 8
  %449 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @rrddim_set_by_pointer(i32* %447, i32* %448, i64 %450)
  %452 = load i32*, i32** @do_net_inet_tcp_stats.st_listen, align 8
  %453 = call i32 @rrdset_done(i32* %452)
  br label %454

454:                                              ; preds = %446, %424, %416
  %455 = load i32, i32* @do_net_inet_tcp_stats.do_ecn, align 4
  %456 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %478, label %458

458:                                              ; preds = %454
  %459 = load i32, i32* @do_net_inet_tcp_stats.do_ecn, align 4
  %460 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %537

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %478, label %466

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %478, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %470
  %475 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %476 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %537

478:                                              ; preds = %474, %470, %466, %462, %454
  %479 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %479, i32* @do_net_inet_tcp_stats.do_ecn, align 4
  %480 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %481 = icmp ne i32* %480, null
  %482 = xor i1 %481, true
  %483 = zext i1 %482 to i32
  %484 = call i64 @unlikely(i32 %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %505

486:                                              ; preds = %478
  %487 = load i32, i32* %4, align 4
  %488 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %489 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 8700, i32 %487, i32 %488)
  store i32* %489, i32** @do_net_inet_tcp_stats.st.73, align 8
  %490 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %491 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %492 = call i32 @rrdset_flag_set(i32* %490, i32 %491)
  %493 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %494 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %495 = call i32* @rrddim_add(i32* %493, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i32 1, i32 1, i32 %494)
  store i32* %495, i32** @do_net_inet_tcp_stats.rd_ce, align 8
  %496 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %497 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %498 = call i32* @rrddim_add(i32* %496, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0), i32 -1, i32 1, i32 %497)
  store i32* %498, i32** @do_net_inet_tcp_stats.rd_no_ect, align 8
  %499 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %500 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %501 = call i32* @rrddim_add(i32* %499, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0), i32 1, i32 1, i32 %500)
  store i32* %501, i32** @do_net_inet_tcp_stats.rd_ect0, align 8
  %502 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %503 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %504 = call i32* @rrddim_add(i32* %502, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i32 1, i32 1, i32 %503)
  store i32* %504, i32** @do_net_inet_tcp_stats.rd_ect1, align 8
  br label %508

505:                                              ; preds = %478
  %506 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %507 = call i32 @rrdset_next(i32* %506)
  br label %508

508:                                              ; preds = %505, %486
  %509 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %510 = load i32*, i32** @do_net_inet_tcp_stats.rd_ce, align 8
  %511 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 2
  %512 = load i64, i64* %511, align 8
  %513 = call i32 @rrddim_set_by_pointer(i32* %509, i32* %510, i64 %512)
  %514 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %515 = load i32*, i32** @do_net_inet_tcp_stats.rd_no_ect, align 8
  %516 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 2
  %517 = load i64, i64* %516, align 8
  %518 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 1
  %519 = load i64, i64* %518, align 8
  %520 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = add nsw i64 %519, %521
  %523 = sub nsw i64 %517, %522
  %524 = call i32 @rrddim_set_by_pointer(i32* %514, i32* %515, i64 %523)
  %525 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %526 = load i32*, i32** @do_net_inet_tcp_stats.rd_ect0, align 8
  %527 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = call i32 @rrddim_set_by_pointer(i32* %525, i32* %526, i64 %528)
  %530 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %531 = load i32*, i32** @do_net_inet_tcp_stats.rd_ect1, align 8
  %532 = getelementptr inbounds %struct.tcpstat, %struct.tcpstat* %6, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = call i32 @rrddim_set_by_pointer(i32* %530, i32* %531, i64 %533)
  %535 = load i32*, i32** @do_net_inet_tcp_stats.st.73, align 8
  %536 = call i32 @rrdset_done(i32* %535)
  br label %537

537:                                              ; preds = %508, %474, %458
  br label %538

538:                                              ; preds = %537
  br label %541

539:                                              ; preds = %51
  %540 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %542

541:                                              ; preds = %538
  store i32 0, i32* %3, align 4
  br label %542

542:                                              ; preds = %541, %539, %60
  %543 = load i32, i32* %3, align 4
  ret i32 %543
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i32 @config_get_boolean_ondemand(i8*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, %struct.tcpstat* byval(%struct.tcpstat) align 8) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32 @rrdset_flag_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
