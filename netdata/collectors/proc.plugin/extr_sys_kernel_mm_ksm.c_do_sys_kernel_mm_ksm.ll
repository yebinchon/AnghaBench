; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_kernel_mm_ksm.c_do_sys_kernel_mm_ksm.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_kernel_mm_ksm.c_do_sys_kernel_mm_ksm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@do_sys_kernel_mm_ksm.ff_pages_shared = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.ff_pages_sharing = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.ff_pages_unshared = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.ff_pages_volatile = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.page_size = internal global i64 0, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@values = common dso_local global %struct.TYPE_2__* null, align 8
@PAGES_SHARED = common dso_local global i64 0, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"/sys/kernel/mm/ksm/pages_shared\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"plugin:proc:/sys/kernel/mm/ksm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \09:\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@PAGES_SHARING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"/sys/kernel/mm/ksm/pages_sharing\00", align 1
@PAGES_UNSHARED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"/sys/kernel/mm/ksm/pages_unshared\00", align 1
@PAGES_VOLATILE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"/sys/kernel/mm/ksm/pages_volatile\00", align 1
@netdata_zero_metrics_enabled = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_NO = common dso_local global i64 0, align 8
@do_sys_kernel_mm_ksm.st_mem_ksm = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.rd_shared = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.rd_unshared = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.rd_sharing = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.rd_volatile = internal global i32* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ksm\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Kernel Same Page Merging\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@PLUGIN_PROC_MODULE_KSM_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_MEM_KSM = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"sharing\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@do_sys_kernel_mm_ksm.st_mem_ksm_savings = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.rd_savings = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.rd_offered = internal global i32* null, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"ksm_savings\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Kernel Same Page Merging Savings\00", align 1
@NETDATA_CHART_PRIO_MEM_KSM_SAVINGS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"savings\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"offered\00", align 1
@do_sys_kernel_mm_ksm.st_mem_ksm_ratios = internal global i32* null, align 8
@do_sys_kernel_mm_ksm.rd_savings.20 = internal global i32* null, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"ksm_ratios\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Kernel Same Page Merging Effectiveness\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@NETDATA_CHART_PRIO_MEM_KSM_RATIOS = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sys_kernel_mm_ksm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @_SC_PAGESIZE, align 4
  %20 = call i64 @sysconf(i32 %19)
  store i64 %20, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_shared, align 8
  %23 = icmp ne i32* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %30 = load i64, i64* @PAGES_SHARED, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FILENAME_MAX, align 4
  %35 = load i32, i32* @netdata_configured_host_prefix, align 4
  %36 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %38 = load i64, i64* @PAGES_SHARED, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FILENAME_MAX, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %44 = load i64, i64* @PAGES_SHARED, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @config_get(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %41, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %51 = load i64, i64* @PAGES_SHARED, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %56 = call i32* @procfile_open(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32* %56, i32** @do_sys_kernel_mm_ksm.ff_pages_shared, align 8
  br label %57

57:                                               ; preds = %28, %21
  %58 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_sharing, align 8
  %59 = icmp ne i32* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %57
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %66 = load i64, i64* @PAGES_SHARING, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FILENAME_MAX, align 4
  %71 = load i32, i32* @netdata_configured_host_prefix, align 4
  %72 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %69, i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %74 = load i64, i64* @PAGES_SHARING, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FILENAME_MAX, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %80 = load i64, i64* @PAGES_SHARING, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @config_get(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %77, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %87 = load i64, i64* @PAGES_SHARING, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %92 = call i32* @procfile_open(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  store i32* %92, i32** @do_sys_kernel_mm_ksm.ff_pages_sharing, align 8
  br label %93

93:                                               ; preds = %64, %57
  %94 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_unshared, align 8
  %95 = icmp ne i32* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %93
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %102 = load i64, i64* @PAGES_UNSHARED, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @FILENAME_MAX, align 4
  %107 = load i32, i32* @netdata_configured_host_prefix, align 4
  %108 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %105, i32 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %110 = load i64, i64* @PAGES_UNSHARED, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @FILENAME_MAX, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %116 = load i64, i64* @PAGES_UNSHARED, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @config_get(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %113, i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %123 = load i64, i64* @PAGES_UNSHARED, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %128 = call i32* @procfile_open(i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  store i32* %128, i32** @do_sys_kernel_mm_ksm.ff_pages_unshared, align 8
  br label %129

129:                                              ; preds = %100, %93
  %130 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_volatile, align 8
  %131 = icmp ne i32* %130, null
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %129
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %138 = load i64, i64* @PAGES_VOLATILE, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FILENAME_MAX, align 4
  %143 = load i32, i32* @netdata_configured_host_prefix, align 4
  %144 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %141, i32 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %146 = load i64, i64* @PAGES_VOLATILE, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @FILENAME_MAX, align 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %152 = load i64, i64* @PAGES_VOLATILE, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @config_get(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %155)
  %157 = call i32 (i32, i32, i8*, i32, ...) @snprintfz(i32 %149, i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @values, align 8
  %159 = load i64, i64* @PAGES_VOLATILE, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %164 = call i32* @procfile_open(i32 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  store i32* %164, i32** @do_sys_kernel_mm_ksm.ff_pages_volatile, align 8
  br label %165

165:                                              ; preds = %136, %129
  %166 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_shared, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_sharing, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_unshared, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_volatile, align 8
  %176 = icmp ne i32* %175, null
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %174, %171, %168, %165
  %179 = phi i1 [ true, %171 ], [ true, %168 ], [ true, %165 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 1, i32* %3, align 4
  br label %385

184:                                              ; preds = %178
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %185 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_shared, align 8
  %186 = call i32* @procfile_readall(i32* %185)
  store i32* %186, i32** @do_sys_kernel_mm_ksm.ff_pages_shared, align 8
  %187 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_shared, align 8
  %188 = icmp ne i32* %187, null
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %385

194:                                              ; preds = %184
  %195 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_shared, align 8
  %196 = call i32 @procfile_lineword(i32* %195, i32 0, i32 0)
  %197 = call i64 @str2ull(i32 %196)
  store i64 %197, i64* %6, align 8
  %198 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_sharing, align 8
  %199 = call i32* @procfile_readall(i32* %198)
  store i32* %199, i32** @do_sys_kernel_mm_ksm.ff_pages_sharing, align 8
  %200 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_sharing, align 8
  %201 = icmp ne i32* %200, null
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  br label %385

207:                                              ; preds = %194
  %208 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_sharing, align 8
  %209 = call i32 @procfile_lineword(i32* %208, i32 0, i32 0)
  %210 = call i64 @str2ull(i32 %209)
  store i64 %210, i64* %7, align 8
  %211 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_unshared, align 8
  %212 = call i32* @procfile_readall(i32* %211)
  store i32* %212, i32** @do_sys_kernel_mm_ksm.ff_pages_unshared, align 8
  %213 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_unshared, align 8
  %214 = icmp ne i32* %213, null
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i64 @unlikely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %207
  store i32 0, i32* %3, align 4
  br label %385

220:                                              ; preds = %207
  %221 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_unshared, align 8
  %222 = call i32 @procfile_lineword(i32* %221, i32 0, i32 0)
  %223 = call i64 @str2ull(i32 %222)
  store i64 %223, i64* %8, align 8
  %224 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_volatile, align 8
  %225 = call i32* @procfile_readall(i32* %224)
  store i32* %225, i32** @do_sys_kernel_mm_ksm.ff_pages_volatile, align 8
  %226 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_volatile, align 8
  %227 = icmp ne i32* %226, null
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = call i64 @unlikely(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %220
  store i32 0, i32* %3, align 4
  br label %385

233:                                              ; preds = %220
  %234 = load i32*, i32** @do_sys_kernel_mm_ksm.ff_pages_volatile, align 8
  %235 = call i32 @procfile_lineword(i32* %234, i32 0, i32 0)
  %236 = call i64 @str2ull(i32 %235)
  store i64 %236, i64* %9, align 8
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* %6, align 8
  %239 = add i64 %237, %238
  %240 = load i64, i64* %8, align 8
  %241 = add i64 %239, %240
  %242 = load i64, i64* %9, align 8
  %243 = add i64 %241, %242
  store i64 %243, i64* %10, align 8
  %244 = load i64, i64* %7, align 8
  store i64 %244, i64* %11, align 8
  %245 = load i64, i64* %10, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %233
  %248 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %249 = load i64, i64* @CONFIG_BOOLEAN_NO, align 8
  %250 = icmp eq i64 %248, %249
  br label %251

251:                                              ; preds = %247, %233
  %252 = phi i1 [ false, %233 ], [ %250, %247 ]
  %253 = zext i1 %252 to i32
  %254 = call i64 @unlikely(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  store i32 0, i32* %3, align 4
  br label %385

257:                                              ; preds = %251
  %258 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %259 = icmp ne i32* %258, null
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = call i64 @unlikely(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %283

264:                                              ; preds = %257
  %265 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %266 = load i32, i32* @PLUGIN_PROC_MODULE_KSM_NAME, align 4
  %267 = load i32, i32* @NETDATA_CHART_PRIO_MEM_KSM, align 4
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %270 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %265, i32 %266, i32 %267, i32 %268, i32 %269)
  store i32* %270, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %271 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %272 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %273 = call i32* @rrddim_add(i32* %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 1, i32 1048576, i32 %272)
  store i32* %273, i32** @do_sys_kernel_mm_ksm.rd_shared, align 8
  %274 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %275 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %276 = call i32* @rrddim_add(i32* %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 -1, i32 1048576, i32 %275)
  store i32* %276, i32** @do_sys_kernel_mm_ksm.rd_unshared, align 8
  %277 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %278 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %279 = call i32* @rrddim_add(i32* %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 1, i32 1048576, i32 %278)
  store i32* %279, i32** @do_sys_kernel_mm_ksm.rd_sharing, align 8
  %280 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %281 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %282 = call i32* @rrddim_add(i32* %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 -1, i32 1048576, i32 %281)
  store i32* %282, i32** @do_sys_kernel_mm_ksm.rd_volatile, align 8
  br label %286

283:                                              ; preds = %257
  %284 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %285 = call i32 @rrdset_next(i32* %284)
  br label %286

286:                                              ; preds = %283, %264
  %287 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %288 = load i32*, i32** @do_sys_kernel_mm_ksm.rd_shared, align 8
  %289 = load i64, i64* %6, align 8
  %290 = load i64, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  %291 = mul i64 %289, %290
  %292 = call i32 @rrddim_set_by_pointer(i32* %287, i32* %288, i64 %291)
  %293 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %294 = load i32*, i32** @do_sys_kernel_mm_ksm.rd_unshared, align 8
  %295 = load i64, i64* %8, align 8
  %296 = load i64, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  %297 = mul i64 %295, %296
  %298 = call i32 @rrddim_set_by_pointer(i32* %293, i32* %294, i64 %297)
  %299 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %300 = load i32*, i32** @do_sys_kernel_mm_ksm.rd_sharing, align 8
  %301 = load i64, i64* %7, align 8
  %302 = load i64, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  %303 = mul i64 %301, %302
  %304 = call i32 @rrddim_set_by_pointer(i32* %299, i32* %300, i64 %303)
  %305 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %306 = load i32*, i32** @do_sys_kernel_mm_ksm.rd_volatile, align 8
  %307 = load i64, i64* %9, align 8
  %308 = load i64, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  %309 = mul i64 %307, %308
  %310 = call i32 @rrddim_set_by_pointer(i32* %305, i32* %306, i64 %309)
  %311 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm, align 8
  %312 = call i32 @rrdset_done(i32* %311)
  %313 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %314 = icmp ne i32* %313, null
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i32
  %317 = call i64 @unlikely(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %286
  %320 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %321 = load i32, i32* @PLUGIN_PROC_MODULE_KSM_NAME, align 4
  %322 = load i32, i32* @NETDATA_CHART_PRIO_MEM_KSM_SAVINGS, align 4
  %323 = load i32, i32* %4, align 4
  %324 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %325 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %320, i32 %321, i32 %322, i32 %323, i32 %324)
  store i32* %325, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %326 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %327 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %328 = call i32* @rrddim_add(i32* %326, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 -1, i32 1048576, i32 %327)
  store i32* %328, i32** @do_sys_kernel_mm_ksm.rd_savings, align 8
  %329 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %330 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %331 = call i32* @rrddim_add(i32* %329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32* null, i32 1, i32 1048576, i32 %330)
  store i32* %331, i32** @do_sys_kernel_mm_ksm.rd_offered, align 8
  br label %335

332:                                              ; preds = %286
  %333 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %334 = call i32 @rrdset_next(i32* %333)
  br label %335

335:                                              ; preds = %332, %319
  %336 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %337 = load i32*, i32** @do_sys_kernel_mm_ksm.rd_savings, align 8
  %338 = load i64, i64* %11, align 8
  %339 = load i64, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  %340 = mul i64 %338, %339
  %341 = call i32 @rrddim_set_by_pointer(i32* %336, i32* %337, i64 %340)
  %342 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %343 = load i32*, i32** @do_sys_kernel_mm_ksm.rd_offered, align 8
  %344 = load i64, i64* %10, align 8
  %345 = load i64, i64* @do_sys_kernel_mm_ksm.page_size, align 8
  %346 = mul i64 %344, %345
  %347 = call i32 @rrddim_set_by_pointer(i32* %342, i32* %343, i64 %346)
  %348 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_savings, align 8
  %349 = call i32 @rrdset_done(i32* %348)
  %350 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_ratios, align 8
  %351 = icmp ne i32* %350, null
  %352 = xor i1 %351, true
  %353 = zext i1 %352 to i32
  %354 = call i64 @unlikely(i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %335
  %357 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %358 = load i32, i32* @PLUGIN_PROC_MODULE_KSM_NAME, align 4
  %359 = load i32, i32* @NETDATA_CHART_PRIO_MEM_KSM_RATIOS, align 4
  %360 = load i32, i32* %4, align 4
  %361 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %362 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  store i32* %362, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_ratios, align 8
  %363 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_ratios, align 8
  %364 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %365 = call i32* @rrddim_add(i32* %363, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 1, i32 10000, i32 %364)
  store i32* %365, i32** @do_sys_kernel_mm_ksm.rd_savings.20, align 8
  br label %369

366:                                              ; preds = %335
  %367 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_ratios, align 8
  %368 = call i32 @rrdset_next(i32* %367)
  br label %369

369:                                              ; preds = %366, %356
  %370 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_ratios, align 8
  %371 = load i32*, i32** @do_sys_kernel_mm_ksm.rd_savings.20, align 8
  %372 = load i64, i64* %10, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %369
  %375 = load i64, i64* %11, align 8
  %376 = mul i64 %375, 1000000
  %377 = load i64, i64* %10, align 8
  %378 = udiv i64 %376, %377
  br label %380

379:                                              ; preds = %369
  br label %380

380:                                              ; preds = %379, %374
  %381 = phi i64 [ %378, %374 ], [ 0, %379 ]
  %382 = call i32 @rrddim_set_by_pointer(i32* %370, i32* %371, i64 %381)
  %383 = load i32*, i32** @do_sys_kernel_mm_ksm.st_mem_ksm_ratios, align 8
  %384 = call i32 @rrdset_done(i32* %383)
  store i32 0, i32* %3, align 4
  br label %385

385:                                              ; preds = %380, %256, %232, %219, %206, %193, %183
  %386 = load i32, i32* %3, align 4
  ret i32 %386
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @snprintfz(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @config_get(i8*, i8*, i32) #1

declare dso_local i32* @procfile_open(i32, i8*, i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @str2ull(i32) #1

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
