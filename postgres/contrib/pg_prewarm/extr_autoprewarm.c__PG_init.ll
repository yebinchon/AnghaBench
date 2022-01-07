; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"pg_prewarm.autoprewarm_interval\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Sets the interval between dumps of shared buffers\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"If set to zero, time-based dumping is disabled.\00", align 1
@autoprewarm_interval = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@GUC_UNIT_S = common dso_local global i32 0, align 4
@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"pg_prewarm.autoprewarm\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Starts the autoprewarm worker.\00", align 1
@autoprewarm = common dso_local global i64 0, align 8
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"pg_prewarm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @INT_MAX, align 4
  %2 = sdiv i32 %1, 1000
  %3 = load i32, i32* @PGC_SIGHUP, align 4
  %4 = load i32, i32* @GUC_UNIT_S, align 4
  %5 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32* @autoprewarm_interval, i32 300, i32 0, i32 %2, i32 %3, i32 %4, i32* null, i32* null, i32* null)
  %6 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %19

9:                                                ; preds = %0
  %10 = load i32, i32* @PGC_POSTMASTER, align 4
  %11 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32* null, i64* @autoprewarm, i32 1, i32 %10, i32 0, i32* null, i32* null, i32* null)
  %12 = call i32 @EmitWarningsOnPlaceholders(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @MAXALIGN(i32 4)
  %14 = call i32 @RequestAddinShmemSpace(i32 %13)
  %15 = load i64, i64* @autoprewarm, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 (...) @apw_start_master_worker()
  br label %19

19:                                               ; preds = %8, %17, %9
  ret void
}

declare dso_local i32 @DefineCustomIntVariable(i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomBoolVariable(i8*, i8*, i32*, i64*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EmitWarningsOnPlaceholders(i8*) #1

declare dso_local i32 @RequestAddinShmemSpace(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @apw_start_master_worker(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
