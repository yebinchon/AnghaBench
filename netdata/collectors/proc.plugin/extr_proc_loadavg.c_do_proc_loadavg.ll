; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_loadavg.c_do_proc_loadavg.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_loadavg.c_do_proc_loadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@do_proc_loadavg.ff = internal global i32* null, align 8
@do_proc_loadavg.do_loadavg = internal global i32 -1, align 4
@do_proc_loadavg.do_all_processes = internal global i32 -1, align 4
@do_proc_loadavg.next_loadavg_dt = internal global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/proc/loadavg\00", align 1
@CONFIG_SECTION_PLUGIN_PROC_LOADAVG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"filename to monitor\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" \09,:|/\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"enable load average\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"enable total processes\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"/proc/loadavg has no lines.\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"/proc/loadavg has less than 6 words in it.\00", align 1
@do_proc_loadavg.load_chart = internal global %struct.TYPE_7__* null, align 8
@do_proc_loadavg.rd_load1 = internal global i32* null, align 8
@do_proc_loadavg.rd_load5 = internal global i32* null, align 8
@do_proc_loadavg.rd_load15 = internal global i32* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"System Load Average\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@PLUGIN_PROC_MODULE_LOADAVG_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_SYSTEM_LOAD = common dso_local global i32 0, align 4
@MIN_LOADAVG_UPDATE_EVERY = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"load1\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"load5\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"load15\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@do_proc_loadavg.processes_chart = internal global %struct.TYPE_7__* null, align 8
@do_proc_loadavg.rd_active = internal global i32* null, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"active_processes\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"System Active Processes\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"active\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_proc_loadavg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %14 = icmp ne i32* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = load i32, i32* @FILENAME_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load i32, i32* @FILENAME_MAX, align 4
  %26 = load i32, i32* @netdata_configured_host_prefix, align 4
  %27 = call i32 @snprintfz(i8* %24, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_LOADAVG, align 4
  %29 = call i32 @config_get(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %30 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %31 = call i32* @procfile_open(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  store i32* %31, i32** @do_proc_loadavg.ff, align 8
  %32 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %33 = icmp ne i32* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %40

39:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %206 [
    i32 0, label %43
    i32 1, label %204
  ]

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %46 = call i32* @procfile_readall(i32* %45)
  store i32* %46, i32** @do_proc_loadavg.ff, align 8
  %47 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %48 = icmp ne i32* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %204

54:                                               ; preds = %44
  %55 = load i32, i32* @do_proc_loadavg.do_loadavg, align 4
  %56 = icmp eq i32 %55, -1
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_LOADAVG, align 4
  %62 = call i32 @config_get_boolean(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i32 %62, i32* @do_proc_loadavg.do_loadavg, align 4
  %63 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_LOADAVG, align 4
  %64 = call i32 @config_get_boolean(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %64, i32* @do_proc_loadavg.do_all_processes, align 4
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %67 = call i32 @procfile_lines(i32* %66)
  %68 = icmp slt i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %204

74:                                               ; preds = %65
  %75 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %76 = call i32 @procfile_linewords(i32* %75, i32 0)
  %77 = icmp slt i32 %76, 6
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %204

83:                                               ; preds = %74
  %84 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %85 = call i32 @procfile_lineword(i32* %84, i32 0, i32 0)
  %86 = call double @strtod(i32 %85, i32* null)
  store double %86, double* %9, align 8
  %87 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %88 = call i32 @procfile_lineword(i32* %87, i32 0, i32 1)
  %89 = call double @strtod(i32 %88, i32* null)
  store double %89, double* %10, align 8
  %90 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %91 = call i32 @procfile_lineword(i32* %90, i32 0, i32 2)
  %92 = call double @strtod(i32 %91, i32* null)
  store double %92, double* %11, align 8
  %93 = load i32*, i32** @do_proc_loadavg.ff, align 8
  %94 = call i32 @procfile_lineword(i32* %93, i32 0, i32 4)
  %95 = call i64 @str2ull(i32 %94)
  store i64 %95, i64* %12, align 8
  %96 = load i32, i32* @do_proc_loadavg.next_loadavg_dt, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %168

99:                                               ; preds = %83
  %100 = load i32, i32* @do_proc_loadavg.do_loadavg, align 4
  %101 = call i64 @likely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %163

103:                                              ; preds = %99
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %105 = icmp ne %struct.TYPE_7__* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %112 = load i32, i32* @PLUGIN_PROC_MODULE_LOADAVG_NAME, align 4
  %113 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_LOAD, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @MIN_LOADAVG_UPDATE_EVERY, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @MIN_LOADAVG_UPDATE_EVERY, align 4
  br label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %124 = call %struct.TYPE_7__* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %122, i32 %123)
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %126 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %127 = call i32* @rrddim_add(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %126)
  store i32* %127, i32** @do_proc_loadavg.rd_load1, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %129 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %130 = call i32* @rrddim_add(%struct.TYPE_7__* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %129)
  store i32* %130, i32** @do_proc_loadavg.rd_load5, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %132 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %133 = call i32* @rrddim_add(%struct.TYPE_7__* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %132)
  store i32* %133, i32** @do_proc_loadavg.rd_load15, align 8
  br label %137

134:                                              ; preds = %103
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %136 = call i32 @rrdset_next(%struct.TYPE_7__* %135)
  br label %137

137:                                              ; preds = %134, %121
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %139 = load i32*, i32** @do_proc_loadavg.rd_load1, align 8
  %140 = load double, double* %9, align 8
  %141 = fmul double %140, 1.000000e+03
  %142 = fptoui double %141 to i64
  %143 = call i32 @rrddim_set_by_pointer(%struct.TYPE_7__* %138, i32* %139, i64 %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %145 = load i32*, i32** @do_proc_loadavg.rd_load5, align 8
  %146 = load double, double* %10, align 8
  %147 = fmul double %146, 1.000000e+03
  %148 = fptoui double %147 to i64
  %149 = call i32 @rrddim_set_by_pointer(%struct.TYPE_7__* %144, i32* %145, i64 %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %151 = load i32*, i32** @do_proc_loadavg.rd_load15, align 8
  %152 = load double, double* %11, align 8
  %153 = fmul double %152, 1.000000e+03
  %154 = fptoui double %153 to i64
  %155 = call i32 @rrddim_set_by_pointer(%struct.TYPE_7__* %150, i32* %151, i64 %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %157 = call i32 @rrdset_done(%struct.TYPE_7__* %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.load_chart, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @USEC_PER_SEC, align 4
  %162 = mul nsw i32 %160, %161
  store i32 %162, i32* @do_proc_loadavg.next_loadavg_dt, align 4
  br label %167

163:                                              ; preds = %99
  %164 = load i32, i32* @MIN_LOADAVG_UPDATE_EVERY, align 4
  %165 = load i32, i32* @USEC_PER_SEC, align 4
  %166 = mul nsw i32 %164, %165
  store i32 %166, i32* @do_proc_loadavg.next_loadavg_dt, align 4
  br label %167

167:                                              ; preds = %163, %137
  br label %172

168:                                              ; preds = %83
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @do_proc_loadavg.next_loadavg_dt, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* @do_proc_loadavg.next_loadavg_dt, align 4
  br label %172

172:                                              ; preds = %168, %167
  %173 = load i32, i32* @do_proc_loadavg.do_all_processes, align 4
  %174 = call i64 @likely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %203

176:                                              ; preds = %172
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.processes_chart, align 8
  %178 = icmp ne %struct.TYPE_7__* %177, null
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %176
  %184 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %185 = load i32, i32* @PLUGIN_PROC_MODULE_LOADAVG_NAME, align 4
  %186 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %189 = call %struct.TYPE_7__* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  store %struct.TYPE_7__* %189, %struct.TYPE_7__** @do_proc_loadavg.processes_chart, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.processes_chart, align 8
  %191 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %192 = call i32* @rrddim_add(%struct.TYPE_7__* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %191)
  store i32* %192, i32** @do_proc_loadavg.rd_active, align 8
  br label %196

193:                                              ; preds = %176
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.processes_chart, align 8
  %195 = call i32 @rrdset_next(%struct.TYPE_7__* %194)
  br label %196

196:                                              ; preds = %193, %183
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.processes_chart, align 8
  %198 = load i32*, i32** @do_proc_loadavg.rd_active, align 8
  %199 = load i64, i64* %12, align 8
  %200 = call i32 @rrddim_set_by_pointer(%struct.TYPE_7__* %197, i32* %198, i64 %199)
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_proc_loadavg.processes_chart, align 8
  %202 = call i32 @rrdset_done(%struct.TYPE_7__* %201)
  br label %203

203:                                              ; preds = %196, %172
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %81, %72, %53, %40
  %205 = load i32, i32* %3, align 4
  ret i32 %205

206:                                              ; preds = %40
  unreachable
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32* @procfile_open(i32, i8*, i32) #1

declare dso_local i32 @config_get(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i32 @config_get_boolean(i32, i8*, i32) #1

declare dso_local i32 @procfile_lines(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @procfile_linewords(i32*, i32) #1

declare dso_local double @strtod(i32, i32*) #1

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #1

declare dso_local i64 @str2ull(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_7__* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(%struct.TYPE_7__*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(%struct.TYPE_7__*) #1

declare dso_local i32 @rrddim_set_by_pointer(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @rrdset_done(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
