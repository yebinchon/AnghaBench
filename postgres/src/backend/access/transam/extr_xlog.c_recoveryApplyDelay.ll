; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_recoveryApplyDelay.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_recoveryApplyDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@recovery_min_apply_delay = common dso_local global i64 0, align 8
@reachedConsistency = common dso_local global i32 0, align 4
@ArchiveRecoveryRequested = common dso_local global i32 0, align 4
@RM_XACT_ID = common dso_local global i64 0, align 8
@XLOG_XACT_OPMASK = common dso_local global i32 0, align 4
@XLOG_XACT_COMMIT = common dso_local global i32 0, align 4
@XLOG_XACT_COMMIT_PREPARED = common dso_local global i32 0, align 4
@recoveryDelayUntilTime = common dso_local global i32 0, align 4
@XLogCtl = common dso_local global %struct.TYPE_2__* null, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"recovery apply delay %ld seconds, %d milliseconds\00", align 1
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_RECOVERY_APPLY_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @recoveryApplyDelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recoveryApplyDelay(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i64, i64* @recovery_min_apply_delay, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

11:                                               ; preds = %1
  %12 = load i32, i32* @reachedConsistency, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %98

15:                                               ; preds = %11
  %16 = load i32, i32* @ArchiveRecoveryRequested, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %98

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @XLogRecGetRmid(i32* %20)
  %22 = load i64, i64* @RM_XACT_ID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %98

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @XLogRecGetInfo(i32* %26)
  %28 = load i32, i32* @XLOG_XACT_OPMASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @XLOG_XACT_COMMIT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @XLOG_XACT_COMMIT_PREPARED, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %98

38:                                               ; preds = %33, %25
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @getRecordTimestamp(i32* %39, i32* %5)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %98

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* @recovery_min_apply_delay, align 8
  %46 = call i32 @TimestampTzPlusMilliseconds(i32 %44, i64 %45)
  store i32 %46, i32* @recoveryDelayUntilTime, align 4
  %47 = call i32 (...) @GetCurrentTimestamp()
  %48 = load i32, i32* @recoveryDelayUntilTime, align 4
  %49 = call i32 @TimestampDifference(i32 %47, i32 %48, i64* %6, i32* %7)
  %50 = load i64, i64* %6, align 8
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %98

56:                                               ; preds = %52, %43
  br label %57

57:                                               ; preds = %56, %76
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XLogCtl, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @ResetLatch(i32* %59)
  %61 = call i32 (...) @HandleStartupProcInterrupts()
  %62 = call i64 (...) @CheckForStandbyTrigger()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %97

65:                                               ; preds = %57
  %66 = call i32 (...) @GetCurrentTimestamp()
  %67 = load i32, i32* @recoveryDelayUntilTime, align 4
  %68 = call i32 @TimestampDifference(i32 %66, i32 %67, i64* %6, i32* %7)
  %69 = load i64, i64* %6, align 8
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = sdiv i32 %72, 1000
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %97

76:                                               ; preds = %71, %65
  %77 = load i32, i32* @DEBUG2, align 4
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %79, 1000
  %81 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %78, i32 %80)
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XLogCtl, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* @WL_LATCH_SET, align 4
  %85 = load i32, i32* @WL_TIMEOUT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %88 = or i32 %86, %87
  %89 = load i64, i64* %6, align 8
  %90 = mul nsw i64 %89, 1000
  %91 = load i32, i32* %7, align 4
  %92 = sdiv i32 %91, 1000
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = load i32, i32* @WAIT_EVENT_RECOVERY_APPLY_DELAY, align 4
  %96 = call i32 @WaitLatch(i32* %83, i32 %88, i64 %94, i32 %95)
  br label %57

97:                                               ; preds = %75, %64
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %55, %42, %37, %24, %18, %14, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @XLogRecGetRmid(i32*) #1

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @getRecordTimestamp(i32*, i32*) #1

declare dso_local i32 @TimestampTzPlusMilliseconds(i32, i64) #1

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @ResetLatch(i32*) #1

declare dso_local i32 @HandleStartupProcInterrupts(...) #1

declare dso_local i64 @CheckForStandbyTrigger(...) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i32 @WaitLatch(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
