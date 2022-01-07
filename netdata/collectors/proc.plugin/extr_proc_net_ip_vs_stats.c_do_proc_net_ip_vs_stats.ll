; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_ip_vs_stats.c_do_proc_net_ip_vs_stats.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_ip_vs_stats.c_do_proc_net_ip_vs_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_proc_net_ip_vs_stats.do_bandwidth = internal global i32 -1, align 4
@do_proc_net_ip_vs_stats.do_sockets = internal global i32 -1, align 4
@do_proc_net_ip_vs_stats.do_packets = internal global i32 -1, align 4
@do_proc_net_ip_vs_stats.ff = internal global i32* null, align 8
@CONFIG_SECTION_PLUGIN_PROC_NET_IPVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"IPVS bandwidth\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"IPVS connections\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"IPVS packets\00", align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"/proc/net/ip_vs_stats\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"filename to monitor\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" \09,:|\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@do_proc_net_ip_vs_stats.st = internal global i32* null, align 8
@RRD_TYPE_NET_IPVS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"sockets\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"IPVS New Connections\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"connections/s\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@PLUGIN_PROC_MODULE_NET_IPVS_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_IPVS_SOCKETS = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"connections\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@do_proc_net_ip_vs_stats.st.11 = internal global i32* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"packets\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"IPVS Packets\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"packets/s\00", align 1
@NETDATA_CHART_PRIO_IPVS_PACKETS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@do_proc_net_ip_vs_stats.st.17 = internal global i32* null, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"IPVS Bandwidth\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"kilobits/s\00", align 1
@NETDATA_CHART_PRIO_IPVS_NET = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@BITS_IN_A_KILOBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_proc_net_ip_vs_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @do_proc_net_ip_vs_stats.do_bandwidth, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, align 4
  %18 = call i32 @config_get_boolean(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %18, i32* @do_proc_net_ip_vs_stats.do_bandwidth, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @do_proc_net_ip_vs_stats.do_sockets, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, align 4
  %24 = call i32 @config_get_boolean(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %24, i32* @do_proc_net_ip_vs_stats.do_sockets, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @do_proc_net_ip_vs_stats.do_packets, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, align 4
  %30 = call i32 @config_get_boolean(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %30, i32* @do_proc_net_ip_vs_stats.do_packets, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @FILENAME_MAX, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %6, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %7, align 8
  %40 = load i32, i32* @FILENAME_MAX, align 4
  %41 = load i32, i32* @netdata_configured_host_prefix, align 4
  %42 = call i32 @snprintfz(i8* %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_NET_IPVS, align 4
  %44 = call i32 @config_get(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %45 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %46 = call i32* @procfile_open(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  store i32* %46, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  br label %48

48:                                               ; preds = %34, %31
  %49 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %191

52:                                               ; preds = %48
  %53 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %54 = call i32* @procfile_readall(i32* %53)
  store i32* %54, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %55 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %191

58:                                               ; preds = %52
  %59 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %60 = call i32 @procfile_lines(i32* %59)
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %191

63:                                               ; preds = %58
  %64 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %65 = call i32 @procfile_linewords(i32* %64, i32 2)
  %66 = icmp slt i32 %65, 5
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %191

68:                                               ; preds = %63
  %69 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %70 = call i32 @procfile_lineword(i32* %69, i32 2, i32 0)
  %71 = call i64 @strtoull(i32 %70, i32* null, i32 16)
  store i64 %71, i64* %8, align 8
  %72 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %73 = call i32 @procfile_lineword(i32* %72, i32 2, i32 1)
  %74 = call i64 @strtoull(i32 %73, i32* null, i32 16)
  store i64 %74, i64* %9, align 8
  %75 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %76 = call i32 @procfile_lineword(i32* %75, i32 2, i32 2)
  %77 = call i64 @strtoull(i32 %76, i32* null, i32 16)
  store i64 %77, i64* %10, align 8
  %78 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %79 = call i32 @procfile_lineword(i32* %78, i32 2, i32 3)
  %80 = call i64 @strtoull(i32 %79, i32* null, i32 16)
  store i64 %80, i64* %11, align 8
  %81 = load i32*, i32** @do_proc_net_ip_vs_stats.ff, align 8
  %82 = call i32 @procfile_lineword(i32* %81, i32 2, i32 4)
  %83 = call i64 @strtoull(i32 %82, i32* null, i32 16)
  store i64 %83, i64* %12, align 8
  %84 = load i32, i32* @do_proc_net_ip_vs_stats.do_sockets, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %68
  %87 = load i32*, i32** @do_proc_net_ip_vs_stats.st, align 8
  %88 = icmp ne i32* %87, null
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load i32, i32* @RRD_TYPE_NET_IPVS, align 4
  %95 = load i32, i32* @RRD_TYPE_NET_IPVS, align 4
  %96 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %97 = load i32, i32* @PLUGIN_PROC_MODULE_NET_IPVS_NAME, align 4
  %98 = load i32, i32* @NETDATA_CHART_PRIO_IPVS_SOCKETS, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %101 = call i32* @rrdset_create_localhost(i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %95, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32* %101, i32** @do_proc_net_ip_vs_stats.st, align 8
  %102 = load i32*, i32** @do_proc_net_ip_vs_stats.st, align 8
  %103 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %104 = call i32 @rrddim_add(i32* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %103)
  br label %108

105:                                              ; preds = %86
  %106 = load i32*, i32** @do_proc_net_ip_vs_stats.st, align 8
  %107 = call i32 @rrdset_next(i32* %106)
  br label %108

108:                                              ; preds = %105, %93
  %109 = load i32*, i32** @do_proc_net_ip_vs_stats.st, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @rrddim_set(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** @do_proc_net_ip_vs_stats.st, align 8
  %113 = call i32 @rrdset_done(i32* %112)
  br label %114

114:                                              ; preds = %108, %68
  %115 = load i32, i32* @do_proc_net_ip_vs_stats.do_packets, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %114
  %118 = load i32*, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %119 = icmp ne i32* %118, null
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %117
  %125 = load i32, i32* @RRD_TYPE_NET_IPVS, align 4
  %126 = load i32, i32* @RRD_TYPE_NET_IPVS, align 4
  %127 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %128 = load i32, i32* @PLUGIN_PROC_MODULE_NET_IPVS_NAME, align 4
  %129 = load i32, i32* @NETDATA_CHART_PRIO_IPVS_PACKETS, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %132 = call i32* @rrdset_create_localhost(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 %126, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store i32* %132, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %133 = load i32*, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %134 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %135 = call i32 @rrddim_add(i32* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %134)
  %136 = load i32*, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %137 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %138 = call i32 @rrddim_add(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32* null, i32 -1, i32 1, i32 %137)
  br label %142

139:                                              ; preds = %117
  %140 = load i32*, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %141 = call i32 @rrdset_next(i32* %140)
  br label %142

142:                                              ; preds = %139, %124
  %143 = load i32*, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @rrddim_set(i32* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 %144)
  %146 = load i32*, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @rrddim_set(i32* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64 %147)
  %149 = load i32*, i32** @do_proc_net_ip_vs_stats.st.11, align 8
  %150 = call i32 @rrdset_done(i32* %149)
  br label %151

151:                                              ; preds = %142, %114
  %152 = load i32, i32* @do_proc_net_ip_vs_stats.do_bandwidth, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %190

154:                                              ; preds = %151
  %155 = load i32*, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %156 = icmp ne i32* %155, null
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %154
  %162 = load i32, i32* @RRD_TYPE_NET_IPVS, align 4
  %163 = load i32, i32* @RRD_TYPE_NET_IPVS, align 4
  %164 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %165 = load i32, i32* @PLUGIN_PROC_MODULE_NET_IPVS_NAME, align 4
  %166 = load i32, i32* @NETDATA_CHART_PRIO_IPVS_NET, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %169 = call i32* @rrdset_create_localhost(i32 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 %163, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  store i32* %169, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %170 = load i32*, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %171 = load i32, i32* @BITS_IN_A_KILOBIT, align 4
  %172 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %173 = call i32 @rrddim_add(i32* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 8, i32 %171, i32 %172)
  %174 = load i32*, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %175 = load i32, i32* @BITS_IN_A_KILOBIT, align 4
  %176 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %177 = call i32 @rrddim_add(i32* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32* null, i32 -8, i32 %175, i32 %176)
  br label %181

178:                                              ; preds = %154
  %179 = load i32*, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %180 = call i32 @rrdset_next(i32* %179)
  br label %181

181:                                              ; preds = %178, %161
  %182 = load i32*, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %183 = load i64, i64* %11, align 8
  %184 = call i32 @rrddim_set(i32* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 %183)
  %185 = load i32*, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %186 = load i64, i64* %12, align 8
  %187 = call i32 @rrddim_set(i32* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64 %186)
  %188 = load i32*, i32** @do_proc_net_ip_vs_stats.st.17, align 8
  %189 = call i32 @rrdset_done(i32* %188)
  br label %190

190:                                              ; preds = %181, %151
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %67, %62, %57, %51
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @config_get_boolean(i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32* @procfile_open(i32, i8*, i32) #1

declare dso_local i32 @config_get(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i32 @procfile_lines(i32*) #1

declare dso_local i32 @procfile_linewords(i32*, i32) #1

declare dso_local i64 @strtoull(i32, i32*, i32) #1

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @rrdset_create_localhost(i32, i8*, i32*, i32, i32*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set(i32*, i8*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
