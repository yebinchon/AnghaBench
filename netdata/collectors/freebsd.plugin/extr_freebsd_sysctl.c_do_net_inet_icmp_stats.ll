; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_icmp_stats.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_icmp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmpstat = type { i64*, i64*, i64, i64, i64, i64, i64 }
%struct.icmp_total = type { i64, i64 }

@do_net_inet_icmp_stats.do_icmp_packets = internal global i32 -1, align 4
@do_net_inet_icmp_stats.do_icmp_errors = internal global i32 -1, align 4
@do_net_inet_icmp_stats.do_icmpmsg = internal global i32 -1, align 4
@.str = private unnamed_addr constant [35 x i8] c"plugin:freebsd:net.inet.icmp.stats\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ipv4 ICMP packets\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ipv4 ICMP errors\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ipv4 ICMP messages\00", align 1
@do_net_inet_icmp_stats.mib = internal global [4 x i32] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [20 x i8] c"net.inet.icmp.stats\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"DISABLED: ipv4.icmp chart\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"DISABLED: ipv4.icmp_errors chart\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"DISABLED: ipv4.icmpmsg chart\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"DISABLED: net.inet.icmp.stats module\00", align 1
@ICMP_MAXTYPE = common dso_local global i32 0, align 4
@do_net_inet_icmp_stats.st = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_in = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_out = internal global i32* null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"IPv4 ICMP Packets\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"packets/s\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"InMsgs\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"OutMsgs\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@do_net_inet_icmp_stats.st.18 = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_in.19 = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_out.20 = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_in_csum = internal global i32* null, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"icmp_errors\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"IPv4 ICMP Errors\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"InErrors\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"OutErrors\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"InCsumErrors\00", align 1
@do_net_inet_icmp_stats.st.26 = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_in_reps = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_out_reps = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_in.27 = internal global i32* null, align 8
@do_net_inet_icmp_stats.rd_out.28 = internal global i32* null, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"icmpmsg\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"IPv4 ICMP Messages\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"InEchoReps\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"OutEchoReps\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"InEchos\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"OutEchos\00", align 1
@ICMP_ECHOREPLY = common dso_local global i64 0, align 8
@ICMP_ECHO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_net_inet_icmp_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.icmpstat, align 8
  %7 = alloca %struct.icmp_total, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @do_net_inet_icmp_stats.do_icmp_packets, align 4
  %11 = icmp eq i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @config_get_boolean(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %16, i32* @do_net_inet_icmp_stats.do_icmp_packets, align 4
  %17 = call i32 @config_get_boolean(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %17, i32* @do_net_inet_icmp_stats.do_icmp_errors, align 4
  %18 = call i32 @config_get_boolean(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %18, i32* @do_net_inet_icmp_stats.do_icmpmsg, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @do_net_inet_icmp_stats.do_icmp_packets, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @do_net_inet_icmp_stats.do_icmp_errors, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @do_net_inet_icmp_stats.do_icmpmsg, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %22, %19
  %29 = phi i1 [ true, %22 ], [ true, %19 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %242

33:                                               ; preds = %28
  %34 = bitcast %struct.icmp_total* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 16, i1 false)
  %35 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_net_inet_icmp_stats.mib, i64 0, i64 0), %struct.icmpstat* byval(%struct.icmpstat) align 8 %6)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  store i32 0, i32* @do_net_inet_icmp_stats.do_icmp_packets, align 4
  %39 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_icmp_stats.do_icmp_errors, align 4
  %40 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_icmp_stats.do_icmpmsg, align 4
  %41 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %42 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %245

43:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ICMP_MAXTYPE, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.icmp_total, %struct.icmp_total* %7, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.icmp_total, %struct.icmp_total* %7, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %63
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %48
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %44

70:                                               ; preds = %44
  %71 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %72, %74
  %76 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %75, %77
  %79 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.icmp_total, %struct.icmp_total* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* @do_net_inet_icmp_stats.do_icmp_packets, align 4
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %70
  %89 = load i32*, i32** @do_net_inet_icmp_stats.st, align 8
  %90 = icmp ne i32* %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %98 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 2602, i32 %96, i32 %97)
  store i32* %98, i32** @do_net_inet_icmp_stats.st, align 8
  %99 = load i32*, i32** @do_net_inet_icmp_stats.st, align 8
  %100 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %101 = call i32* @rrddim_add(i32* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 1, i32 1, i32 %100)
  store i32* %101, i32** @do_net_inet_icmp_stats.rd_in, align 8
  %102 = load i32*, i32** @do_net_inet_icmp_stats.st, align 8
  %103 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %104 = call i32* @rrddim_add(i32* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 -1, i32 1, i32 %103)
  store i32* %104, i32** @do_net_inet_icmp_stats.rd_out, align 8
  br label %108

105:                                              ; preds = %88
  %106 = load i32*, i32** @do_net_inet_icmp_stats.st, align 8
  %107 = call i32 @rrdset_next(i32* %106)
  br label %108

108:                                              ; preds = %105, %95
  %109 = load i32*, i32** @do_net_inet_icmp_stats.st, align 8
  %110 = load i32*, i32** @do_net_inet_icmp_stats.rd_in, align 8
  %111 = getelementptr inbounds %struct.icmp_total, %struct.icmp_total* %7, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @rrddim_set_by_pointer(i32* %109, i32* %110, i64 %112)
  %114 = load i32*, i32** @do_net_inet_icmp_stats.st, align 8
  %115 = load i32*, i32** @do_net_inet_icmp_stats.rd_out, align 8
  %116 = getelementptr inbounds %struct.icmp_total, %struct.icmp_total* %7, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @rrddim_set_by_pointer(i32* %114, i32* %115, i64 %117)
  %119 = load i32*, i32** @do_net_inet_icmp_stats.st, align 8
  %120 = call i32 @rrdset_done(i32* %119)
  br label %121

121:                                              ; preds = %108, %70
  %122 = load i32, i32* @do_net_inet_icmp_stats.do_icmp_errors, align 4
  %123 = call i64 @likely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %175

125:                                              ; preds = %121
  %126 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %127 = icmp ne i32* %126, null
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %125
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %135 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 2603, i32 %133, i32 %134)
  store i32* %135, i32** @do_net_inet_icmp_stats.st.18, align 8
  %136 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %137 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %138 = call i32* @rrddim_add(i32* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %137)
  store i32* %138, i32** @do_net_inet_icmp_stats.rd_in.19, align 8
  %139 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %140 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %141 = call i32* @rrddim_add(i32* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* null, i32 -1, i32 1, i32 %140)
  store i32* %141, i32** @do_net_inet_icmp_stats.rd_out.20, align 8
  %142 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %143 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %144 = call i32* @rrddim_add(i32* %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %143)
  store i32* %144, i32** @do_net_inet_icmp_stats.rd_in_csum, align 8
  br label %148

145:                                              ; preds = %125
  %146 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %147 = call i32 @rrdset_next(i32* %146)
  br label %148

148:                                              ; preds = %145, %132
  %149 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %150 = load i32*, i32** @do_net_inet_icmp_stats.rd_in.19, align 8
  %151 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %152, %154
  %156 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %155, %157
  %159 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %158, %160
  %162 = call i32 @rrddim_set_by_pointer(i32* %149, i32* %150, i64 %161)
  %163 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %164 = load i32*, i32** @do_net_inet_icmp_stats.rd_out.20, align 8
  %165 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @rrddim_set_by_pointer(i32* %163, i32* %164, i64 %166)
  %168 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %169 = load i32*, i32** @do_net_inet_icmp_stats.rd_in_csum, align 8
  %170 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @rrddim_set_by_pointer(i32* %168, i32* %169, i64 %171)
  %173 = load i32*, i32** @do_net_inet_icmp_stats.st.18, align 8
  %174 = call i32 @rrdset_done(i32* %173)
  br label %175

175:                                              ; preds = %148, %121
  %176 = load i32, i32* @do_net_inet_icmp_stats.do_icmpmsg, align 4
  %177 = call i64 @likely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %240

179:                                              ; preds = %175
  %180 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %181 = icmp ne i32* %180, null
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i64 @unlikely(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %179
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %189 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 2604, i32 %187, i32 %188)
  store i32* %189, i32** @do_net_inet_icmp_stats.st.26, align 8
  %190 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %191 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %192 = call i32* @rrddim_add(i32* %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %191)
  store i32* %192, i32** @do_net_inet_icmp_stats.rd_in_reps, align 8
  %193 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %194 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %195 = call i32* @rrddim_add(i32* %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* null, i32 -1, i32 1, i32 %194)
  store i32* %195, i32** @do_net_inet_icmp_stats.rd_out_reps, align 8
  %196 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %197 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %198 = call i32* @rrddim_add(i32* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %197)
  store i32* %198, i32** @do_net_inet_icmp_stats.rd_in.27, align 8
  %199 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %200 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %201 = call i32* @rrddim_add(i32* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* null, i32 -1, i32 1, i32 %200)
  store i32* %201, i32** @do_net_inet_icmp_stats.rd_out.28, align 8
  br label %205

202:                                              ; preds = %179
  %203 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %204 = call i32 @rrdset_next(i32* %203)
  br label %205

205:                                              ; preds = %202, %186
  %206 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %207 = load i32*, i32** @do_net_inet_icmp_stats.rd_in_reps, align 8
  %208 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 1
  %209 = load i64*, i64** %208, align 8
  %210 = load i64, i64* @ICMP_ECHOREPLY, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @rrddim_set_by_pointer(i32* %206, i32* %207, i64 %212)
  %214 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %215 = load i32*, i32** @do_net_inet_icmp_stats.rd_out_reps, align 8
  %216 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = load i64, i64* @ICMP_ECHOREPLY, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @rrddim_set_by_pointer(i32* %214, i32* %215, i64 %220)
  %222 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %223 = load i32*, i32** @do_net_inet_icmp_stats.rd_in.27, align 8
  %224 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 1
  %225 = load i64*, i64** %224, align 8
  %226 = load i64, i64* @ICMP_ECHO, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @rrddim_set_by_pointer(i32* %222, i32* %223, i64 %228)
  %230 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %231 = load i32*, i32** @do_net_inet_icmp_stats.rd_out.28, align 8
  %232 = getelementptr inbounds %struct.icmpstat, %struct.icmpstat* %6, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i64, i64* @ICMP_ECHO, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @rrddim_set_by_pointer(i32* %230, i32* %231, i64 %236)
  %238 = load i32*, i32** @do_net_inet_icmp_stats.st.26, align 8
  %239 = call i32 @rrdset_done(i32* %238)
  br label %240

240:                                              ; preds = %205, %175
  br label %241

241:                                              ; preds = %240
  br label %244

242:                                              ; preds = %28
  %243 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %245

244:                                              ; preds = %241
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %242, %38
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, %struct.icmpstat* byval(%struct.icmpstat) align 8) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
