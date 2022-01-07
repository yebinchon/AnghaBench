; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_udp_stats.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_udp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udpstat = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@do_net_inet_udp_stats.do_udp_packets = internal global i32 -1, align 4
@do_net_inet_udp_stats.do_udp_errors = internal global i32 -1, align 4
@.str = private unnamed_addr constant [34 x i8] c"plugin:freebsd:net.inet.udp.stats\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ipv4 UDP packets\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ipv4 UDP errors\00", align 1
@do_net_inet_udp_stats.mib = internal global [4 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [19 x i8] c"net.inet.udp.stats\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"DISABLED: ipv4.udppackets chart\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"DISABLED: ipv4.udperrors chart\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"DISABLED: net.inet.udp.stats module\00", align 1
@do_net_inet_udp_stats.st = internal global i32* null, align 8
@do_net_inet_udp_stats.rd_in = internal global i32* null, align 8
@do_net_inet_udp_stats.rd_out = internal global i32* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"udppackets\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"IPv4 UDP Packets\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"packets/s\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"InDatagrams\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"OutDatagrams\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@do_net_inet_udp_stats.st.17 = internal global i32* null, align 8
@do_net_inet_udp_stats.rd_in_errors = internal global i32* null, align 8
@do_net_inet_udp_stats.rd_no_ports = internal global i32* null, align 8
@do_net_inet_udp_stats.rd_recv_buf_errors = internal global i32* null, align 8
@do_net_inet_udp_stats.rd_in_csum_errors = internal global i32* null, align 8
@do_net_inet_udp_stats.rd_ignored_multi = internal global i32* null, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"udperrors\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"IPv4 UDP Errors\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"events/s\00", align 1
@RRDSET_FLAG_DETAIL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"InErrors\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"NoPorts\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"RcvbufErrors\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"InCsumErrors\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"IgnoredMulti\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_net_inet_udp_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.udpstat, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @do_net_inet_udp_stats.do_udp_packets, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @config_get_boolean(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %14, i32* @do_net_inet_udp_stats.do_udp_packets, align 4
  %15 = call i32 @config_get_boolean(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %15, i32* @do_net_inet_udp_stats.do_udp_errors, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @do_net_inet_udp_stats.do_udp_packets, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @do_net_inet_udp_stats.do_udp_errors, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %144

27:                                               ; preds = %22
  %28 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_net_inet_udp_stats.mib, i64 0, i64 0), %struct.udpstat* byval(%struct.udpstat) align 8 %6)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  store i32 0, i32* @do_net_inet_udp_stats.do_udp_packets, align 4
  %32 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @do_net_inet_udp_stats.do_udp_errors, align 4
  %33 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

35:                                               ; preds = %27
  %36 = load i32, i32* @do_net_inet_udp_stats.do_udp_packets, align 4
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i32*, i32** @do_net_inet_udp_stats.st, align 8
  %41 = icmp ne i32* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %49 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 2601, i32 %47, i32 %48)
  store i32* %49, i32** @do_net_inet_udp_stats.st, align 8
  %50 = load i32*, i32** @do_net_inet_udp_stats.st, align 8
  %51 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %52 = call i32* @rrddim_add(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 1, i32 1, i32 %51)
  store i32* %52, i32** @do_net_inet_udp_stats.rd_in, align 8
  %53 = load i32*, i32** @do_net_inet_udp_stats.st, align 8
  %54 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %55 = call i32* @rrddim_add(i32* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 1, i32 %54)
  store i32* %55, i32** @do_net_inet_udp_stats.rd_out, align 8
  br label %59

56:                                               ; preds = %39
  %57 = load i32*, i32** @do_net_inet_udp_stats.st, align 8
  %58 = call i32 @rrdset_next(i32* %57)
  br label %59

59:                                               ; preds = %56, %46
  %60 = load i32*, i32** @do_net_inet_udp_stats.st, align 8
  %61 = load i32*, i32** @do_net_inet_udp_stats.rd_in, align 8
  %62 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @rrddim_set_by_pointer(i32* %60, i32* %61, i64 %63)
  %65 = load i32*, i32** @do_net_inet_udp_stats.st, align 8
  %66 = load i32*, i32** @do_net_inet_udp_stats.rd_out, align 8
  %67 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @rrddim_set_by_pointer(i32* %65, i32* %66, i64 %68)
  %70 = load i32*, i32** @do_net_inet_udp_stats.st, align 8
  %71 = call i32 @rrdset_done(i32* %70)
  br label %72

72:                                               ; preds = %59, %35
  %73 = load i32, i32* @do_net_inet_udp_stats.do_udp_errors, align 4
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %142

76:                                               ; preds = %72
  %77 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %78 = icmp ne i32* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %76
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %86 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 2701, i32 %84, i32 %85)
  store i32* %86, i32** @do_net_inet_udp_stats.st.17, align 8
  %87 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %88 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %89 = call i32 @rrdset_flag_set(i32* %87, i32 %88)
  %90 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %91 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %92 = call i32* @rrddim_add(i32* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %91)
  store i32* %92, i32** @do_net_inet_udp_stats.rd_in_errors, align 8
  %93 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %94 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %95 = call i32* @rrddim_add(i32* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %94)
  store i32* %95, i32** @do_net_inet_udp_stats.rd_no_ports, align 8
  %96 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %97 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %98 = call i32* @rrddim_add(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %97)
  store i32* %98, i32** @do_net_inet_udp_stats.rd_recv_buf_errors, align 8
  %99 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %100 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %101 = call i32* @rrddim_add(i32* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %100)
  store i32* %101, i32** @do_net_inet_udp_stats.rd_in_csum_errors, align 8
  %102 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %103 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %104 = call i32* @rrddim_add(i32* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* null, i32 1, i32 1, i32 %103)
  store i32* %104, i32** @do_net_inet_udp_stats.rd_ignored_multi, align 8
  br label %108

105:                                              ; preds = %76
  %106 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %107 = call i32 @rrdset_next(i32* %106)
  br label %108

108:                                              ; preds = %105, %83
  %109 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %110 = load i32*, i32** @do_net_inet_udp_stats.rd_in_errors, align 8
  %111 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %112, %114
  %116 = call i32 @rrddim_set_by_pointer(i32* %109, i32* %110, i64 %115)
  %117 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %118 = load i32*, i32** @do_net_inet_udp_stats.rd_no_ports, align 8
  %119 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @rrddim_set_by_pointer(i32* %117, i32* %118, i64 %120)
  %122 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %123 = load i32*, i32** @do_net_inet_udp_stats.rd_recv_buf_errors, align 8
  %124 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @rrddim_set_by_pointer(i32* %122, i32* %123, i64 %125)
  %127 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %128 = load i32*, i32** @do_net_inet_udp_stats.rd_in_csum_errors, align 8
  %129 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %130, %132
  %134 = call i32 @rrddim_set_by_pointer(i32* %127, i32* %128, i64 %133)
  %135 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %136 = load i32*, i32** @do_net_inet_udp_stats.rd_ignored_multi, align 8
  %137 = getelementptr inbounds %struct.udpstat, %struct.udpstat* %6, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @rrddim_set_by_pointer(i32* %135, i32* %136, i64 %138)
  %140 = load i32*, i32** @do_net_inet_udp_stats.st.17, align 8
  %141 = call i32 @rrdset_done(i32* %140)
  br label %142

142:                                              ; preds = %108, %72
  br label %143

143:                                              ; preds = %142
  br label %146

144:                                              ; preds = %22
  %145 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %147

146:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %144, %31
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, %struct.udpstat* byval(%struct.udpstat) align 8) #1

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
