; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogFlush.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@LogwrtResult = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@XLogCtl = common dso_local global %struct.TYPE_8__* null, align 8
@WALWriteLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@CommitDelay = common dso_local global i64 0, align 8
@enableFsync = common dso_local global i64 0, align 8
@CommitSiblings = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"xlog flush request %X/%X is not satisfied --- flushed only to %X/%X\00", align 1
@LOG = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XLogFlush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @XLogInsertAllowed()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @UpdateMinRecoveryPoint(i32 %9, i32 0)
  br label %103

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %103

16:                                               ; preds = %11
  %17 = call i32 (...) @START_CRIT_SECTION()
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %52, %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = call i32 @SpinLockAcquire(i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_9__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_9__* @LogwrtResult to i8*), i8* align 4 %37, i64 8, i1 false)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = call i32 @SpinLockRelease(i32* %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %88

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @WaitXLogInsertionsToFinish(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @WALWriteLock, align 4
  %49 = load i32, i32* @LW_EXCLUSIVE, align 4
  %50 = call i32 @LWLockAcquireOrWait(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %19

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_9__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_9__* @LogwrtResult to i8*), i8* align 4 %56, i64 8, i1 false)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @WALWriteLock, align 4
  %62 = call i32 @LWLockRelease(i32 %61)
  br label %88

63:                                               ; preds = %53
  %64 = load i64, i64* @CommitDelay, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i64, i64* @enableFsync, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @CommitSiblings, align 4
  %71 = call i64 @MinimumActiveBackends(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* @CommitDelay, align 8
  %75 = call i32 @pg_usleep(i64 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WaitXLogInsertionsToFinish(i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %69, %66, %63
  %79 = load i32, i32* %5, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = bitcast %struct.TYPE_7__* %4 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call i32 @XLogWrite(i64 %84, i32 0)
  %86 = load i32, i32* @WALWriteLock, align 4
  %87 = call i32 @LWLockRelease(i32 %86)
  br label %88

88:                                               ; preds = %78, %60, %44
  %89 = call i32 (...) @END_CRIT_SECTION()
  %90 = call i32 (...) @WalSndWakeupProcessRequests()
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %92 = load i32, i32* %2, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* %2, align 4
  %97 = ashr i32 %96, 32
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %100 = ashr i32 %99, 32
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %102 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @elog(i32 %95, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %8, %15, %94, %88
  ret void
}

declare dso_local i32 @XLogInsertAllowed(...) #1

declare dso_local i32 @UpdateMinRecoveryPoint(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @WaitXLogInsertionsToFinish(i32) #1

declare dso_local i32 @LWLockAcquireOrWait(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @MinimumActiveBackends(i32) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @XLogWrite(i64, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @WalSndWakeupProcessRequests(...) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
