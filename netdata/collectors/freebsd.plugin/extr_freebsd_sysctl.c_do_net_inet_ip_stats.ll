; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_ip_stats.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_ip_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipstat = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@do_net_inet_ip_stats.do_ip_packets = internal global i32 -1, align 4
@do_net_inet_ip_stats.do_ip_fragsout = internal global i32 -1, align 4
@do_net_inet_ip_stats.do_ip_fragsin = internal global i32 -1, align 4
@do_net_inet_ip_stats.do_ip_errors = internal global i32 -1, align 4
@.str = private unnamed_addr constant [33 x i8] c"plugin:freebsd:net.inet.ip.stats\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ipv4 packets\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ipv4 fragments sent\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ipv4 fragments assembly\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ipv4 errors\00", align 1
@do_net_inet_ip_stats.mib = internal global [4 x i32] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"net.inet.ip.stats\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"DISABLED: ipv4.packets chart\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"DISABLED: ipv4.fragsout chart\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"DISABLED: ipv4.fragsin chart\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"DISABLED: ipv4.errors chart\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"DISABLED: net.inet.ip.stats module\00", align 1
@do_net_inet_ip_stats.st = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_in_receives = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_out_requests = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_forward_datagrams = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_in_delivers = internal global i32* null, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"packets\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"IPv4 Packets\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"packets/s\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"InReceives\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"OutRequests\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"ForwDatagrams\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"forwarded\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"InDelivers\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"delivered\00", align 1
@do_net_inet_ip_stats.st.24 = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_ok = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_fails = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_created = internal global i32* null, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"fragsout\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"fragments\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"IPv4 Fragments Sent\00", align 1
@RRDSET_FLAG_DETAIL = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"FragOKs\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"FragFails\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"FragCreates\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"created\00", align 1
@do_net_inet_ip_stats.st.34 = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_ok.35 = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_failed = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_all = internal global i32* null, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"fragsin\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"IPv4 Fragments Reassembly\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"ReasmOKs\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"ReasmFails\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"ReasmReqds\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@do_net_inet_ip_stats.st.42 = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_in_discards = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_out_discards = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_in_hdr_errors = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_out_no_routes = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_in_addr_errors = internal global i32* null, align 8
@do_net_inet_ip_stats.rd_in_unknown_protos = internal global i32* null, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"IPv4 Errors\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"InDiscards\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"OutDiscards\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"InHdrErrors\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"OutNoRoutes\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"InAddrErrors\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"InUnknownProtos\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_net_inet_ip_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipstat, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @do_net_inet_ip_stats.do_ip_packets, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = call i32 @config_get_boolean(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %14, i32* @do_net_inet_ip_stats.do_ip_packets, align 4
  %15 = call i32 @config_get_boolean(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %15, i32* @do_net_inet_ip_stats.do_ip_fragsout, align 4
  %16 = call i32 @config_get_boolean(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %16, i32* @do_net_inet_ip_stats.do_ip_fragsin, align 4
  %17 = call i32 @config_get_boolean(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i32 %17, i32* @do_net_inet_ip_stats.do_ip_errors, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @do_net_inet_ip_stats.do_ip_packets, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @do_net_inet_ip_stats.do_ip_fragsout, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @do_net_inet_ip_stats.do_ip_fragsin, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @do_net_inet_ip_stats.do_ip_errors, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %24, %21, %18
  %31 = phi i1 [ true, %24 ], [ true, %21 ], [ true, %18 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %286

35:                                               ; preds = %30
  %36 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_net_inet_ip_stats.mib, i64 0, i64 0), %struct.ipstat* byval(%struct.ipstat) align 8 %6)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  store i32 0, i32* @do_net_inet_ip_stats.do_ip_packets, align 4
  %40 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_ip_stats.do_ip_fragsout, align 4
  %41 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_ip_stats.do_ip_fragsin, align 4
  %42 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_ip_stats.do_ip_errors, align 4
  %43 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %44 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %289

45:                                               ; preds = %35
  %46 = load i32, i32* @do_net_inet_ip_stats.do_ip_packets, align 4
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %51 = icmp ne i32* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %59 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 3000, i32 %57, i32 %58)
  store i32* %59, i32** @do_net_inet_ip_stats.st, align 8
  %60 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %61 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %62 = call i32* @rrddim_add(i32* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 1, i32 1, i32 %61)
  store i32* %62, i32** @do_net_inet_ip_stats.rd_in_receives, align 8
  %63 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %64 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %65 = call i32* @rrddim_add(i32* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 -1, i32 1, i32 %64)
  store i32* %65, i32** @do_net_inet_ip_stats.rd_out_requests, align 8
  %66 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %67 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %68 = call i32* @rrddim_add(i32* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 1, i32 1, i32 %67)
  store i32* %68, i32** @do_net_inet_ip_stats.rd_forward_datagrams, align 8
  %69 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %70 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %71 = call i32* @rrddim_add(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 1, i32 1, i32 %70)
  store i32* %71, i32** @do_net_inet_ip_stats.rd_in_delivers, align 8
  br label %75

72:                                               ; preds = %49
  %73 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %74 = call i32 @rrdset_next(i32* %73)
  br label %75

75:                                               ; preds = %72, %56
  %76 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %77 = load i32*, i32** @do_net_inet_ip_stats.rd_in_receives, align 8
  %78 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 21
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @rrddim_set_by_pointer(i32* %76, i32* %77, i64 %79)
  %81 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %82 = load i32*, i32** @do_net_inet_ip_stats.rd_out_requests, align 8
  %83 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 20
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @rrddim_set_by_pointer(i32* %81, i32* %82, i64 %84)
  %86 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %87 = load i32*, i32** @do_net_inet_ip_stats.rd_forward_datagrams, align 8
  %88 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 19
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @rrddim_set_by_pointer(i32* %86, i32* %87, i64 %89)
  %91 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %92 = load i32*, i32** @do_net_inet_ip_stats.rd_in_delivers, align 8
  %93 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 18
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @rrddim_set_by_pointer(i32* %91, i32* %92, i64 %94)
  %96 = load i32*, i32** @do_net_inet_ip_stats.st, align 8
  %97 = call i32 @rrdset_done(i32* %96)
  br label %98

98:                                               ; preds = %75, %45
  %99 = load i32, i32* @do_net_inet_ip_stats.do_ip_fragsout, align 4
  %100 = call i64 @likely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %146

102:                                              ; preds = %98
  %103 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %104 = icmp ne i32* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %102
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %112 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 3010, i32 %110, i32 %111)
  store i32* %112, i32** @do_net_inet_ip_stats.st.24, align 8
  %113 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %114 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %115 = call i32 @rrdset_flag_set(i32* %113, i32 %114)
  %116 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %117 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %118 = call i32* @rrddim_add(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 1, i32 1, i32 %117)
  store i32* %118, i32** @do_net_inet_ip_stats.rd_ok, align 8
  %119 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %120 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %121 = call i32* @rrddim_add(i32* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 -1, i32 1, i32 %120)
  store i32* %121, i32** @do_net_inet_ip_stats.rd_fails, align 8
  %122 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %123 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %124 = call i32* @rrddim_add(i32* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 1, i32 1, i32 %123)
  store i32* %124, i32** @do_net_inet_ip_stats.rd_created, align 8
  br label %128

125:                                              ; preds = %102
  %126 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %127 = call i32 @rrdset_next(i32* %126)
  br label %128

128:                                              ; preds = %125, %109
  %129 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %130 = load i32*, i32** @do_net_inet_ip_stats.rd_ok, align 8
  %131 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 17
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @rrddim_set_by_pointer(i32* %129, i32* %130, i64 %132)
  %134 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %135 = load i32*, i32** @do_net_inet_ip_stats.rd_fails, align 8
  %136 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 16
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @rrddim_set_by_pointer(i32* %134, i32* %135, i64 %137)
  %139 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %140 = load i32*, i32** @do_net_inet_ip_stats.rd_created, align 8
  %141 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 15
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @rrddim_set_by_pointer(i32* %139, i32* %140, i64 %142)
  %144 = load i32*, i32** @do_net_inet_ip_stats.st.24, align 8
  %145 = call i32 @rrdset_done(i32* %144)
  br label %146

146:                                              ; preds = %128, %98
  %147 = load i32, i32* @do_net_inet_ip_stats.do_ip_fragsin, align 4
  %148 = call i64 @likely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %194

150:                                              ; preds = %146
  %151 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %152 = icmp ne i32* %151, null
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %150
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %160 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 3011, i32 %158, i32 %159)
  store i32* %160, i32** @do_net_inet_ip_stats.st.34, align 8
  %161 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %162 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %163 = call i32 @rrdset_flag_set(i32* %161, i32 %162)
  %164 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %165 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %166 = call i32* @rrddim_add(i32* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 1, i32 1, i32 %165)
  store i32* %166, i32** @do_net_inet_ip_stats.rd_ok.35, align 8
  %167 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %168 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %169 = call i32* @rrddim_add(i32* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 -1, i32 1, i32 %168)
  store i32* %169, i32** @do_net_inet_ip_stats.rd_failed, align 8
  %170 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %171 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %172 = call i32* @rrddim_add(i32* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32 1, i32 1, i32 %171)
  store i32* %172, i32** @do_net_inet_ip_stats.rd_all, align 8
  br label %176

173:                                              ; preds = %150
  %174 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %175 = call i32 @rrdset_next(i32* %174)
  br label %176

176:                                              ; preds = %173, %157
  %177 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %178 = load i32*, i32** @do_net_inet_ip_stats.rd_ok.35, align 8
  %179 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 14
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @rrddim_set_by_pointer(i32* %177, i32* %178, i64 %180)
  %182 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %183 = load i32*, i32** @do_net_inet_ip_stats.rd_failed, align 8
  %184 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 13
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @rrddim_set_by_pointer(i32* %182, i32* %183, i64 %185)
  %187 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %188 = load i32*, i32** @do_net_inet_ip_stats.rd_all, align 8
  %189 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 12
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @rrddim_set_by_pointer(i32* %187, i32* %188, i64 %190)
  %192 = load i32*, i32** @do_net_inet_ip_stats.st.34, align 8
  %193 = call i32 @rrdset_done(i32* %192)
  br label %194

194:                                              ; preds = %176, %146
  %195 = load i32, i32* @do_net_inet_ip_stats.do_ip_errors, align 4
  %196 = call i64 @likely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %284

198:                                              ; preds = %194
  %199 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %200 = icmp ne i32* %199, null
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %230

205:                                              ; preds = %198
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %208 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 3002, i32 %206, i32 %207)
  store i32* %208, i32** @do_net_inet_ip_stats.st.42, align 8
  %209 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %210 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %211 = call i32 @rrdset_flag_set(i32* %209, i32 %210)
  %212 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %213 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %214 = call i32* @rrddim_add(i32* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %213)
  store i32* %214, i32** @do_net_inet_ip_stats.rd_in_discards, align 8
  %215 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %216 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %217 = call i32* @rrddim_add(i32* %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* null, i32 -1, i32 1, i32 %216)
  store i32* %217, i32** @do_net_inet_ip_stats.rd_out_discards, align 8
  %218 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %219 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %220 = call i32* @rrddim_add(i32* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %219)
  store i32* %220, i32** @do_net_inet_ip_stats.rd_in_hdr_errors, align 8
  %221 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %222 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %223 = call i32* @rrddim_add(i32* %221, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* null, i32 -1, i32 1, i32 %222)
  store i32* %223, i32** @do_net_inet_ip_stats.rd_out_no_routes, align 8
  %224 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %225 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %226 = call i32* @rrddim_add(i32* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %225)
  store i32* %226, i32** @do_net_inet_ip_stats.rd_in_addr_errors, align 8
  %227 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %228 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %229 = call i32* @rrddim_add(i32* %227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %228)
  store i32* %229, i32** @do_net_inet_ip_stats.rd_in_unknown_protos, align 8
  br label %233

230:                                              ; preds = %198
  %231 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %232 = call i32 @rrdset_next(i32* %231)
  br label %233

233:                                              ; preds = %230, %205
  %234 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %235 = load i32*, i32** @do_net_inet_ip_stats.rd_in_discards, align 8
  %236 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 11
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 10
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %237, %239
  %241 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 9
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %240, %242
  %244 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 8
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %243, %245
  %247 = call i32 @rrddim_set_by_pointer(i32* %234, i32* %235, i64 %246)
  %248 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %249 = load i32*, i32** @do_net_inet_ip_stats.rd_out_discards, align 8
  %250 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @rrddim_set_by_pointer(i32* %248, i32* %249, i64 %251)
  %253 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %254 = load i32*, i32** @do_net_inet_ip_stats.rd_in_hdr_errors, align 8
  %255 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %256, %258
  %260 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %259, %261
  %263 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %262, %264
  %266 = call i32 @rrddim_set_by_pointer(i32* %253, i32* %254, i64 %265)
  %267 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %268 = load i32*, i32** @do_net_inet_ip_stats.rd_out_no_routes, align 8
  %269 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @rrddim_set_by_pointer(i32* %267, i32* %268, i64 %270)
  %272 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %273 = load i32*, i32** @do_net_inet_ip_stats.rd_in_addr_errors, align 8
  %274 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @rrddim_set_by_pointer(i32* %272, i32* %273, i64 %275)
  %277 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %278 = load i32*, i32** @do_net_inet_ip_stats.rd_in_unknown_protos, align 8
  %279 = getelementptr inbounds %struct.ipstat, %struct.ipstat* %6, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @rrddim_set_by_pointer(i32* %277, i32* %278, i64 %280)
  %282 = load i32*, i32** @do_net_inet_ip_stats.st.42, align 8
  %283 = call i32 @rrdset_done(i32* %282)
  br label %284

284:                                              ; preds = %233, %194
  br label %285

285:                                              ; preds = %284
  br label %288

286:                                              ; preds = %30
  %287 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %289

288:                                              ; preds = %285
  store i32 0, i32* %3, align 4
  br label %289

289:                                              ; preds = %288, %286, %39
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, %struct.ipstat* byval(%struct.ipstat) align 8) #1

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
