; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@UnBlockSig = common dso_local global i32 0, align 4
@TBLOCK_PARALLEL_INPROGRESS = common dso_local global i64 0, align 8
@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@TRANS_PREPARE = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"AbortTransaction while in %s state\00", align 1
@TRANS_ABORT = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@XactLastRecEnd = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@TopTransactionResourceOwner = common dso_local global i32* null, align 8
@XACT_EVENT_PARALLEL_ABORT = common dso_local global i32 0, align 4
@XACT_EVENT_ABORT = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_BEFORE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_AFTER_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AbortTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AbortTransaction() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %1, align 8
  %5 = call i32 (...) @HOLD_INTERRUPTS()
  %6 = call i32 (...) @AtAbort_Memory()
  %7 = call i32 (...) @AtAbort_ResourceOwner()
  %8 = call i32 (...) @LWLockReleaseAll()
  %9 = call i32 (...) @pgstat_report_wait_end()
  %10 = call i32 (...) @pgstat_progress_end_command()
  %11 = call i32 (...) @AbortBufferIO()
  %12 = call i32 (...) @UnlockBuffers()
  %13 = call i32 (...) @XLogResetInsertion()
  %14 = call i32 (...) @ConditionVariableCancelSleep()
  %15 = call i32 (...) @LockErrorCleanup()
  %16 = call i32 (...) @reschedule_timeouts()
  %17 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TBLOCK_PARALLEL_INPROGRESS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TRANS_INPROGRESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TRANS_PREPARE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @WARNING, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @TransStateAsString(i64 %39)
  %41 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %29, %0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i64, i64* @TRANS_ABORT, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SetUserIdAndSecContext(i32 %54, i32 %57)
  %59 = call i64 (...) @IsInParallelMode()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = call i32 @AtEOXact_Parallel(i32 0)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %42
  %66 = call i32 @AfterTriggerEndXact(i32 0)
  %67 = call i32 (...) @AtAbort_Portals()
  %68 = call i32 @AtEOXact_LargeObject(i32 0)
  %69 = call i32 (...) @AtAbort_Notify()
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @AtEOXact_RelationMap(i32 0, i32 %70)
  %72 = call i32 (...) @AtAbort_Twophase()
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = call i32 @RecordTransactionAbort(i32 0)
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %65
  %78 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* @XactLastRecEnd, align 4
  %80 = call i32 @XLogSetAsyncXactLSN(i32 %79)
  br label %81

81:                                               ; preds = %77, %75
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @TRACE_POSTGRESQL_TRANSACTION_ABORT(i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @ProcArrayEndTransaction(%struct.TYPE_6__* %86, i32 %87)
  %89 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %129

91:                                               ; preds = %81
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @XACT_EVENT_PARALLEL_ABORT, align 4
  %96 = call i32 @CallXactCallbacks(i32 %95)
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @XACT_EVENT_ABORT, align 4
  %99 = call i32 @CallXactCallbacks(i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %102 = load i32, i32* @RESOURCE_RELEASE_BEFORE_LOCKS, align 4
  %103 = call i32 @ResourceOwnerRelease(i32* %101, i32 %102, i32 0, i32 1)
  %104 = call i32 @AtEOXact_Buffers(i32 0)
  %105 = call i32 @AtEOXact_RelationCache(i32 0)
  %106 = call i32 @AtEOXact_Inval(i32 0)
  %107 = call i32 (...) @AtEOXact_MultiXact()
  %108 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %109 = load i32, i32* @RESOURCE_RELEASE_LOCKS, align 4
  %110 = call i32 @ResourceOwnerRelease(i32* %108, i32 %109, i32 0, i32 1)
  %111 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %112 = load i32, i32* @RESOURCE_RELEASE_AFTER_LOCKS, align 4
  %113 = call i32 @ResourceOwnerRelease(i32* %111, i32 %112, i32 0, i32 1)
  %114 = call i32 @smgrDoPendingDeletes(i32 0)
  %115 = call i32 @AtEOXact_GUC(i32 0, i32 1)
  %116 = call i32 @AtEOXact_SPI(i32 0)
  %117 = call i32 (...) @AtEOXact_Enum()
  %118 = call i32 @AtEOXact_on_commit_actions(i32 0)
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @AtEOXact_Namespace(i32 0, i32 %119)
  %121 = call i32 (...) @AtEOXact_SMgr()
  %122 = call i32 @AtEOXact_Files(i32 0)
  %123 = call i32 (...) @AtEOXact_ComboCid()
  %124 = call i32 @AtEOXact_HashTables(i32 0)
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @AtEOXact_PgStat(i32 0, i32 %125)
  %127 = call i32 @AtEOXact_ApplyLauncher(i32 0)
  %128 = call i32 @pgstat_report_xact_timestamp(i32 0)
  br label %129

129:                                              ; preds = %100, %81
  %130 = call i32 (...) @RESUME_INTERRUPTS()
  ret void
}

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @AtAbort_Memory(...) #1

declare dso_local i32 @AtAbort_ResourceOwner(...) #1

declare dso_local i32 @LWLockReleaseAll(...) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @pgstat_progress_end_command(...) #1

declare dso_local i32 @AbortBufferIO(...) #1

declare dso_local i32 @UnlockBuffers(...) #1

declare dso_local i32 @XLogResetInsertion(...) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @LockErrorCleanup(...) #1

declare dso_local i32 @reschedule_timeouts(...) #1

declare dso_local i32 @PG_SETMASK(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TransStateAsString(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SetUserIdAndSecContext(i32, i32) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @AtEOXact_Parallel(i32) #1

declare dso_local i32 @AfterTriggerEndXact(i32) #1

declare dso_local i32 @AtAbort_Portals(...) #1

declare dso_local i32 @AtEOXact_LargeObject(i32) #1

declare dso_local i32 @AtAbort_Notify(...) #1

declare dso_local i32 @AtEOXact_RelationMap(i32, i32) #1

declare dso_local i32 @AtAbort_Twophase(...) #1

declare dso_local i32 @RecordTransactionAbort(i32) #1

declare dso_local i32 @XLogSetAsyncXactLSN(i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_TRANSACTION_ABORT(i32) #1

declare dso_local i32 @ProcArrayEndTransaction(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CallXactCallbacks(i32) #1

declare dso_local i32 @ResourceOwnerRelease(i32*, i32, i32, i32) #1

declare dso_local i32 @AtEOXact_Buffers(i32) #1

declare dso_local i32 @AtEOXact_RelationCache(i32) #1

declare dso_local i32 @AtEOXact_Inval(i32) #1

declare dso_local i32 @AtEOXact_MultiXact(...) #1

declare dso_local i32 @smgrDoPendingDeletes(i32) #1

declare dso_local i32 @AtEOXact_GUC(i32, i32) #1

declare dso_local i32 @AtEOXact_SPI(i32) #1

declare dso_local i32 @AtEOXact_Enum(...) #1

declare dso_local i32 @AtEOXact_on_commit_actions(i32) #1

declare dso_local i32 @AtEOXact_Namespace(i32, i32) #1

declare dso_local i32 @AtEOXact_SMgr(...) #1

declare dso_local i32 @AtEOXact_Files(i32) #1

declare dso_local i32 @AtEOXact_ComboCid(...) #1

declare dso_local i32 @AtEOXact_HashTables(i32) #1

declare dso_local i32 @AtEOXact_PgStat(i32, i32) #1

declare dso_local i32 @AtEOXact_ApplyLauncher(i32) #1

declare dso_local i32 @pgstat_report_xact_timestamp(i32) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
