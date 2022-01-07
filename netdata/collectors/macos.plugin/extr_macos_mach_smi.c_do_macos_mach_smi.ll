; ModuleID = '/home/carl/AnghaBench/netdata/collectors/macos.plugin/extr_macos_mach_smi.c_do_macos_mach_smi.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/macos.plugin/extr_macos_mach_smi.c_do_macos_mach_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@do_macos_mach_smi.do_cpu = internal global i32 -1, align 4
@do_macos_mach_smi.do_ram = internal global i32 -1, align 4
@do_macos_mach_smi.do_swapio = internal global i32 -1, align 4
@do_macos_mach_smi.do_pgfaults = internal global i32 -1, align 4
@.str = private unnamed_addr constant [22 x i8] c"plugin:macos:mach_smi\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cpu utilization\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"system ram\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"swap i/o\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"memory page faults\00", align 1
@CPU_STATE_MAX = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@HOST_CPU_LOAD_INFO_COUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"MACOS: There are %d CPU states (4 was expected)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"DISABLED: system.cpu\00", align 1
@HOST_CPU_LOAD_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"MACOS: host_statistics() failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"system.cpu\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Total CPU utilization\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"macos\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"mach_smi\00", align 1
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@CPU_STATE_USER = common dso_local global i64 0, align 8
@CPU_STATE_NICE = common dso_local global i64 0, align 8
@CPU_STATE_SYSTEM = common dso_local global i64 0, align 8
@CPU_STATE_IDLE = common dso_local global i64 0, align 8
@HOST_VM_INFO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"MACOS: host_statistics64() failed: %s\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"DISABLED: system.ram\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"DISABLED: system.swapio\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"DISABLED: mem.pgfaults\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"system.ram\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"wired\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"purgeable\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"speculative\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"mem.pgfaults\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"pgfaults\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Memory Page Faults\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"faults/s\00", align 1
@NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRDSET_FLAG_DETAIL = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [4 x i8] c"cow\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"pagein\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"pageout\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"zero_fill\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"reactivate\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"purge\00", align 1
@HOST_VM_INFO64 = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_macos_mach_smi(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @do_macos_mach_smi.do_cpu, align 4
  %17 = icmp eq i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = call i32 @config_get_boolean(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %22, i32* @do_macos_mach_smi.do_cpu, align 4
  %23 = call i32 @config_get_boolean(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %23, i32* @do_macos_mach_smi.do_ram, align 4
  %24 = call i32 @config_get_boolean(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %24, i32* @do_macos_mach_smi.do_swapio, align 4
  %25 = call i32 @config_get_boolean(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i32 %25, i32* @do_macos_mach_smi.do_pgfaults, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @CPU_STATE_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = call i32 (...) @mach_host_self()
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @host_page_size(i32 %32, i32* %10)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %309

41:                                               ; preds = %26
  %42 = load i32, i32* @do_macos_mach_smi.do_cpu, align 4
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %126

45:                                               ; preds = %41
  %46 = load i32, i32* @HOST_CPU_LOAD_INFO_COUNT, align 4
  %47 = icmp ne i32 %46, 4
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @HOST_CPU_LOAD_INFO_COUNT, align 4
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  store i32 0, i32* @do_macos_mach_smi.do_cpu, align 4
  %54 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %125

55:                                               ; preds = %45
  %56 = load i32, i32* @HOST_CPU_LOAD_INFO_COUNT, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @HOST_CPU_LOAD_INFO, align 4
  %59 = ptrtoint i64* %30 to i32
  %60 = call i64 @host_statistics(i32 %57, i32 %58, i32 %59, i32* %8)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @KERN_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @mach_error_string(i64 %68)
  %70 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  store i32 0, i32* @do_macos_mach_smi.do_cpu, align 4
  %71 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %124

72:                                               ; preds = %55
  %73 = call i32* @rrdset_find_bytype_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = icmp ne i32* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %83 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 100, i32 %81, i32 %82)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %86 = call i32 @rrddim_add(i32* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %89 = call i32 @rrddim_add(i32* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %92 = call i32 @rrddim_add(i32* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  %95 = call i32 @rrddim_add(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @rrddim_hide(i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %101

98:                                               ; preds = %72
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @rrdset_next(i32* %99)
  br label %101

101:                                              ; preds = %98, %80
  %102 = load i32*, i32** %6, align 8
  %103 = load i64, i64* @CPU_STATE_USER, align 8
  %104 = getelementptr inbounds i64, i64* %30, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @rrddim_set(i32* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = load i64, i64* @CPU_STATE_NICE, align 8
  %109 = getelementptr inbounds i64, i64* %30, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @rrddim_set(i32* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load i64, i64* @CPU_STATE_SYSTEM, align 8
  %114 = getelementptr inbounds i64, i64* %30, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @rrddim_set(i32* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* @CPU_STATE_IDLE, align 8
  %119 = getelementptr inbounds i64, i64* %30, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @rrddim_set(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 %120)
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @rrdset_done(i32* %122)
  br label %124

124:                                              ; preds = %101, %67
  br label %125

125:                                              ; preds = %124, %51
  br label %126

126:                                              ; preds = %125, %41
  %127 = load i32, i32* @do_macos_mach_smi.do_ram, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @do_macos_mach_smi.do_swapio, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @do_macos_mach_smi.do_pgfaults, align 4
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %132, %129, %126
  %136 = phi i1 [ true, %129 ], [ true, %126 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @likely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %308

140:                                              ; preds = %135
  store i32 152, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @HOST_VM_INFO, align 4
  %143 = ptrtoint %struct.TYPE_2__* %13 to i32
  %144 = call i64 @host_statistics(i32 %141, i32 %142, i32 %143, i32* %8)
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @KERN_SUCCESS, align 8
  %147 = icmp ne i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %140
  %152 = load i64, i64* %7, align 8
  %153 = call i32 @mach_error_string(i64 %152)
  %154 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i32 %153)
  store i32 0, i32* @do_macos_mach_smi.do_ram, align 4
  %155 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* @do_macos_mach_smi.do_swapio, align 4
  %156 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* @do_macos_mach_smi.do_pgfaults, align 4
  %157 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  br label %307

158:                                              ; preds = %140
  %159 = load i32, i32* @do_macos_mach_smi.do_ram, align 4
  %160 = call i64 @likely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %231

162:                                              ; preds = %158
  %163 = call i32* @rrdset_find_localhost(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  store i32* %163, i32** %6, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = icmp ne i32* %164, null
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %162
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %173 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 200, i32 %171, i32 %172)
  store i32* %173, i32** %6, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %177 = call i32 @rrddim_add(i32* %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32* null, i32 %175, i32 1048576, i32 %176)
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %181 = call i32 @rrddim_add(i32* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32* null, i32 %179, i32 1048576, i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %185 = call i32 @rrddim_add(i32* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32* null, i32 %183, i32 1048576, i32 %184)
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %189 = call i32 @rrddim_add(i32* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32* null, i32 %187, i32 1048576, i32 %188)
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %193 = call i32 @rrddim_add(i32* %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32* null, i32 %191, i32 1048576, i32 %192)
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %197 = call i32 @rrddim_add(i32* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32* null, i32 %195, i32 1048576, i32 %196)
  br label %201

198:                                              ; preds = %162
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @rrdset_next(i32* %199)
  br label %201

201:                                              ; preds = %198, %170
  %202 = load i32*, i32** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 18
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @rrddim_set(i32* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i64 %204)
  %206 = load i32*, i32** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 17
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @rrddim_set(i32* %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i64 %208)
  %210 = load i32*, i32** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 14
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @rrddim_set(i32* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i64 %212)
  %214 = load i32*, i32** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 13
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @rrddim_set(i32* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i64 %216)
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 11
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @rrddim_set(i32* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i64 %220)
  %222 = load i32*, i32** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 12
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 11
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %224, %226
  %228 = call i32 @rrddim_set(i32* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i64 %227)
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @rrdset_done(i32* %229)
  br label %231

231:                                              ; preds = %201, %158
  %232 = load i32, i32* @do_macos_mach_smi.do_pgfaults, align 4
  %233 = call i64 @likely(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %306

235:                                              ; preds = %231
  %236 = call i32* @rrdset_find_localhost(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  store i32* %236, i32** %6, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = icmp ne i32* %237, null
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = call i64 @unlikely(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %272

243:                                              ; preds = %235
  %244 = load i32, i32* @NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS, align 4
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %247 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %244, i32 %245, i32 %246)
  store i32* %247, i32** %6, align 8
  %248 = load i32*, i32** %6, align 8
  %249 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %250 = call i32 @rrdset_flag_set(i32* %248, i32 %249)
  %251 = load i32*, i32** %6, align 8
  %252 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %253 = call i32 @rrddim_add(i32* %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %252)
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %256 = call i32 @rrddim_add(i32* %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %255)
  %257 = load i32*, i32** %6, align 8
  %258 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %259 = call i32 @rrddim_add(i32* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %258)
  %260 = load i32*, i32** %6, align 8
  %261 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %262 = call i32 @rrddim_add(i32* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %261)
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %265 = call i32 @rrddim_add(i32* %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %264)
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %268 = call i32 @rrddim_add(i32* %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %267)
  %269 = load i32*, i32** %6, align 8
  %270 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %271 = call i32 @rrddim_add(i32* %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %270)
  br label %275

272:                                              ; preds = %235
  %273 = load i32*, i32** %6, align 8
  %274 = call i32 @rrdset_next(i32* %273)
  br label %275

275:                                              ; preds = %272, %243
  %276 = load i32*, i32** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 8
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @rrddim_set(i32* %276, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i64 %278)
  %280 = load i32*, i32** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 7
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @rrddim_set(i32* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 %282)
  %284 = load i32*, i32** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @rrddim_set(i32* %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 %286)
  %288 = load i32*, i32** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @rrddim_set(i32* %288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i64 %290)
  %292 = load i32*, i32** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @rrddim_set(i32* %292, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i64 %294)
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @rrddim_set(i32* %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i64 %298)
  %300 = load i32*, i32** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @rrddim_set(i32* %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i64 %302)
  %304 = load i32*, i32** %6, align 8
  %305 = call i32 @rrdset_done(i32* %304)
  br label %306

306:                                              ; preds = %275, %231
  br label %307

307:                                              ; preds = %306, %151
  br label %308

308:                                              ; preds = %307, %135
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %309

309:                                              ; preds = %308, %40
  %310 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %310)
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i64 @host_page_size(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @host_statistics(i32, i32, i32, i32*) #1

declare dso_local i32 @mach_error_string(i64) #1

declare dso_local i32* @rrdset_find_bytype_localhost(i8*, i8*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrddim_hide(i32*, i8*) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set(i32*, i8*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32* @rrdset_find_localhost(i8*) #1

declare dso_local i32 @rrdset_flag_set(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
