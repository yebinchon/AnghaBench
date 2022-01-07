; ModuleID = '/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"auto_explain.log_min_duration\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Sets the minimum execution time above which plans will be logged.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Zero prints all plans. -1 turns this feature off.\00", align 1
@auto_explain_log_min_duration = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PGC_SUSET = common dso_local global i32 0, align 4
@GUC_UNIT_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"auto_explain.log_analyze\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Use EXPLAIN ANALYZE for plan logging.\00", align 1
@auto_explain_log_analyze = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"auto_explain.log_settings\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Log modified configuration parameters affecting query planning.\00", align 1
@auto_explain_log_settings = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"auto_explain.log_verbose\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Use EXPLAIN VERBOSE for plan logging.\00", align 1
@auto_explain_log_verbose = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"auto_explain.log_buffers\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Log buffers usage.\00", align 1
@auto_explain_log_buffers = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"auto_explain.log_triggers\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Include trigger statistics in plans.\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"This has no effect unless log_analyze is also set.\00", align 1
@auto_explain_log_triggers = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"auto_explain.log_format\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"EXPLAIN format to be used for plan logging.\00", align 1
@auto_explain_log_format = common dso_local global i32 0, align 4
@EXPLAIN_FORMAT_TEXT = common dso_local global i32 0, align 4
@format_options = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"auto_explain.log_level\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Log level for the plan.\00", align 1
@auto_explain_log_level = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@loglevel_options = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"auto_explain.log_nested_statements\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Log nested statements.\00", align 1
@auto_explain_log_nested_statements = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"auto_explain.log_timing\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Collect timing data, not just row counts.\00", align 1
@auto_explain_log_timing = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [25 x i8] c"auto_explain.sample_rate\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Fraction of queries to process.\00", align 1
@auto_explain_sample_rate = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"auto_explain\00", align 1
@ExecutorStart_hook = common dso_local global i32 0, align 4
@prev_ExecutorStart = common dso_local global i32 0, align 4
@explain_ExecutorStart = common dso_local global i32 0, align 4
@ExecutorRun_hook = common dso_local global i32 0, align 4
@prev_ExecutorRun = common dso_local global i32 0, align 4
@explain_ExecutorRun = common dso_local global i32 0, align 4
@ExecutorFinish_hook = common dso_local global i32 0, align 4
@prev_ExecutorFinish = common dso_local global i32 0, align 4
@explain_ExecutorFinish = common dso_local global i32 0, align 4
@ExecutorEnd_hook = common dso_local global i32 0, align 4
@prev_ExecutorEnd = common dso_local global i32 0, align 4
@explain_ExecutorEnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @INT_MAX, align 4
  %2 = load i32, i32* @PGC_SUSET, align 4
  %3 = load i32, i32* @GUC_UNIT_MS, align 4
  %4 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32* @auto_explain_log_min_duration, i32 -1, i32 -1, i32 %1, i32 %2, i32 %3, i32* null, i32* null, i32* null)
  %5 = load i32, i32* @PGC_SUSET, align 4
  %6 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* null, i32* @auto_explain_log_analyze, i32 0, i32 %5, i32 0, i32* null, i32* null, i32* null)
  %7 = load i32, i32* @PGC_SUSET, align 4
  %8 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* null, i32* @auto_explain_log_settings, i32 0, i32 %7, i32 0, i32* null, i32* null, i32* null)
  %9 = load i32, i32* @PGC_SUSET, align 4
  %10 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* null, i32* @auto_explain_log_verbose, i32 0, i32 %9, i32 0, i32* null, i32* null, i32* null)
  %11 = load i32, i32* @PGC_SUSET, align 4
  %12 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* null, i32* @auto_explain_log_buffers, i32 0, i32 %11, i32 0, i32* null, i32* null, i32* null)
  %13 = load i32, i32* @PGC_SUSET, align 4
  %14 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32* @auto_explain_log_triggers, i32 0, i32 %13, i32 0, i32* null, i32* null, i32* null)
  %15 = load i32, i32* @EXPLAIN_FORMAT_TEXT, align 4
  %16 = load i32, i32* @format_options, align 4
  %17 = load i32, i32* @PGC_SUSET, align 4
  %18 = call i32 @DefineCustomEnumVariable(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32* null, i32* @auto_explain_log_format, i32 %15, i32 %16, i32 %17, i32 0, i32* null, i32* null, i32* null)
  %19 = load i32, i32* @LOG, align 4
  %20 = load i32, i32* @loglevel_options, align 4
  %21 = load i32, i32* @PGC_SUSET, align 4
  %22 = call i32 @DefineCustomEnumVariable(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32* null, i32* @auto_explain_log_level, i32 %19, i32 %20, i32 %21, i32 0, i32* null, i32* null, i32* null)
  %23 = load i32, i32* @PGC_SUSET, align 4
  %24 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* null, i32* @auto_explain_log_nested_statements, i32 0, i32 %23, i32 0, i32* null, i32* null, i32* null)
  %25 = load i32, i32* @PGC_SUSET, align 4
  %26 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i8* null, i32* @auto_explain_log_timing, i32 1, i32 %25, i32 0, i32* null, i32* null, i32* null)
  %27 = load i32, i32* @PGC_SUSET, align 4
  %28 = call i32 @DefineCustomRealVariable(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32* null, i32* @auto_explain_sample_rate, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 %27, i32 0, i32* null, i32* null, i32* null)
  %29 = call i32 @EmitWarningsOnPlaceholders(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %30 = load i32, i32* @ExecutorStart_hook, align 4
  store i32 %30, i32* @prev_ExecutorStart, align 4
  %31 = load i32, i32* @explain_ExecutorStart, align 4
  store i32 %31, i32* @ExecutorStart_hook, align 4
  %32 = load i32, i32* @ExecutorRun_hook, align 4
  store i32 %32, i32* @prev_ExecutorRun, align 4
  %33 = load i32, i32* @explain_ExecutorRun, align 4
  store i32 %33, i32* @ExecutorRun_hook, align 4
  %34 = load i32, i32* @ExecutorFinish_hook, align 4
  store i32 %34, i32* @prev_ExecutorFinish, align 4
  %35 = load i32, i32* @explain_ExecutorFinish, align 4
  store i32 %35, i32* @ExecutorFinish_hook, align 4
  %36 = load i32, i32* @ExecutorEnd_hook, align 4
  store i32 %36, i32* @prev_ExecutorEnd, align 4
  %37 = load i32, i32* @explain_ExecutorEnd, align 4
  store i32 %37, i32* @ExecutorEnd_hook, align 4
  ret void
}

declare dso_local i32 @DefineCustomIntVariable(i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomBoolVariable(i8*, i8*, i8*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomEnumVariable(i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomRealVariable(i8*, i8*, i32*, i32*, double, double, double, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EmitWarningsOnPlaceholders(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
