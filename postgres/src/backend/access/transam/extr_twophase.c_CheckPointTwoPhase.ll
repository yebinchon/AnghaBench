; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_CheckPointTwoPhase.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_CheckPointTwoPhase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i64, i8*, i32, i64, i64 }

@max_prepared_xacts = common dso_local global i64 0, align 8
@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@TwoPhaseState = common dso_local global %struct.TYPE_4__* null, align 8
@InvalidXLogRecPtr = common dso_local global i8* null, align 8
@TWOPHASE_DIR = common dso_local global i32 0, align 4
@log_checkpoints = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"%u two-phase state file was written for a long-running prepared transaction\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"%u two-phase state files were written for long-running prepared transactions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckPointTwoPhase(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* @max_prepared_xacts, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %95

11:                                               ; preds = %1
  %12 = call i32 (...) @TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_START()
  %13 = load i32, i32* @TwoPhaseStateLock, align 4
  %14 = load i32, i32* @LW_SHARED, align 4
  %15 = call i32 @LWLockAcquire(i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %75, %11
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TwoPhaseState, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TwoPhaseState, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %5, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %22
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %34, %22
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %2, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @XlogReadTwoPhaseData(i8* %53, i8** %6, i32* %7)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @RecreateTwoPhaseFile(i32 %57, i8* %58, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @pfree(i8* %70)
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %50, %44, %39, %34
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %16

78:                                               ; preds = %16
  %79 = load i32, i32* @TwoPhaseStateLock, align 4
  %80 = call i32 @LWLockRelease(i32 %79)
  %81 = load i32, i32* @TWOPHASE_DIR, align 4
  %82 = call i32 @fsync_fname(i32 %81, i32 1)
  %83 = call i32 (...) @TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_DONE()
  %84 = load i64, i64* @log_checkpoints, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* @LOG, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @errmsg_plural(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = call i32 @ereport(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %10, %89, %86, %78
  ret void
}

declare dso_local i32 @TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_START(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @XlogReadTwoPhaseData(i8*, i8**, i32*) #1

declare dso_local i32 @RecreateTwoPhaseFile(i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @fsync_fname(i32, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_TWOPHASE_CHECKPOINT_DONE(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
