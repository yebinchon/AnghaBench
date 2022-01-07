; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pg_stat_statements.max\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Sets the maximum number of statements tracked by pg_stat_statements.\00", align 1
@pgss_max = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pg_stat_statements.track\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Selects which statements are tracked by pg_stat_statements.\00", align 1
@pgss_track = common dso_local global i32 0, align 4
@PGSS_TRACK_TOP = common dso_local global i32 0, align 4
@track_options = common dso_local global i32 0, align 4
@PGC_SUSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"pg_stat_statements.track_utility\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Selects whether utility commands are tracked by pg_stat_statements.\00", align 1
@pgss_track_utility = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"pg_stat_statements.save\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Save pg_stat_statements statistics across server shutdowns.\00", align 1
@pgss_save = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"pg_stat_statements\00", align 1
@shmem_startup_hook = common dso_local global i32 0, align 4
@prev_shmem_startup_hook = common dso_local global i32 0, align 4
@pgss_shmem_startup = common dso_local global i32 0, align 4
@post_parse_analyze_hook = common dso_local global i32 0, align 4
@prev_post_parse_analyze_hook = common dso_local global i32 0, align 4
@pgss_post_parse_analyze = common dso_local global i32 0, align 4
@ExecutorStart_hook = common dso_local global i32 0, align 4
@prev_ExecutorStart = common dso_local global i32 0, align 4
@pgss_ExecutorStart = common dso_local global i32 0, align 4
@ExecutorRun_hook = common dso_local global i32 0, align 4
@prev_ExecutorRun = common dso_local global i32 0, align 4
@pgss_ExecutorRun = common dso_local global i32 0, align 4
@ExecutorFinish_hook = common dso_local global i32 0, align 4
@prev_ExecutorFinish = common dso_local global i32 0, align 4
@pgss_ExecutorFinish = common dso_local global i32 0, align 4
@ExecutorEnd_hook = common dso_local global i32 0, align 4
@prev_ExecutorEnd = common dso_local global i32 0, align 4
@pgss_ExecutorEnd = common dso_local global i32 0, align 4
@ProcessUtility_hook = common dso_local global i32 0, align 4
@prev_ProcessUtility = common dso_local global i32 0, align 4
@pgss_ProcessUtility = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %34

4:                                                ; preds = %0
  %5 = load i32, i32* @INT_MAX, align 4
  %6 = load i32, i32* @PGC_POSTMASTER, align 4
  %7 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* @pgss_max, i32 5000, i32 100, i32 %5, i32 %6, i32 0, i32* null, i32* null, i32* null)
  %8 = load i32, i32* @PGSS_TRACK_TOP, align 4
  %9 = load i32, i32* @track_options, align 4
  %10 = load i32, i32* @PGC_SUSET, align 4
  %11 = call i32 @DefineCustomEnumVariable(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* @pgss_track, i32 %8, i32 %9, i32 %10, i32 0, i32* null, i32* null, i32* null)
  %12 = load i32, i32* @PGC_SUSET, align 4
  %13 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* @pgss_track_utility, i32 1, i32 %12, i32 0, i32* null, i32* null, i32* null)
  %14 = load i32, i32* @PGC_SIGHUP, align 4
  %15 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* @pgss_save, i32 1, i32 %14, i32 0, i32* null, i32* null, i32* null)
  %16 = call i32 @EmitWarningsOnPlaceholders(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %17 = call i32 (...) @pgss_memsize()
  %18 = call i32 @RequestAddinShmemSpace(i32 %17)
  %19 = call i32 @RequestNamedLWLockTranche(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %20 = load i32, i32* @shmem_startup_hook, align 4
  store i32 %20, i32* @prev_shmem_startup_hook, align 4
  %21 = load i32, i32* @pgss_shmem_startup, align 4
  store i32 %21, i32* @shmem_startup_hook, align 4
  %22 = load i32, i32* @post_parse_analyze_hook, align 4
  store i32 %22, i32* @prev_post_parse_analyze_hook, align 4
  %23 = load i32, i32* @pgss_post_parse_analyze, align 4
  store i32 %23, i32* @post_parse_analyze_hook, align 4
  %24 = load i32, i32* @ExecutorStart_hook, align 4
  store i32 %24, i32* @prev_ExecutorStart, align 4
  %25 = load i32, i32* @pgss_ExecutorStart, align 4
  store i32 %25, i32* @ExecutorStart_hook, align 4
  %26 = load i32, i32* @ExecutorRun_hook, align 4
  store i32 %26, i32* @prev_ExecutorRun, align 4
  %27 = load i32, i32* @pgss_ExecutorRun, align 4
  store i32 %27, i32* @ExecutorRun_hook, align 4
  %28 = load i32, i32* @ExecutorFinish_hook, align 4
  store i32 %28, i32* @prev_ExecutorFinish, align 4
  %29 = load i32, i32* @pgss_ExecutorFinish, align 4
  store i32 %29, i32* @ExecutorFinish_hook, align 4
  %30 = load i32, i32* @ExecutorEnd_hook, align 4
  store i32 %30, i32* @prev_ExecutorEnd, align 4
  %31 = load i32, i32* @pgss_ExecutorEnd, align 4
  store i32 %31, i32* @ExecutorEnd_hook, align 4
  %32 = load i32, i32* @ProcessUtility_hook, align 4
  store i32 %32, i32* @prev_ProcessUtility, align 4
  %33 = load i32, i32* @pgss_ProcessUtility, align 4
  store i32 %33, i32* @ProcessUtility_hook, align 4
  br label %34

34:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @DefineCustomIntVariable(i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomEnumVariable(i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomBoolVariable(i8*, i8*, i32*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EmitWarningsOnPlaceholders(i8*) #1

declare dso_local i32 @RequestAddinShmemSpace(i32) #1

declare dso_local i32 @pgss_memsize(...) #1

declare dso_local i32 @RequestNamedLWLockTranche(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
