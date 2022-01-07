; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortSubTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortSubTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@UnBlockSig = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"AbortSubTransaction\00", align 1
@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"AbortSubTransaction while in %s state\00", align 1
@TRANS_ABORT = common dso_local global i64 0, align 8
@SUBXACT_EVENT_ABORT_SUB = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_BEFORE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_AFTER_LOCKS = common dso_local global i32 0, align 4
@XactReadOnly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AbortSubTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AbortSubTransaction() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = call i32 (...) @HOLD_INTERRUPTS()
  %4 = call i32 (...) @AtSubAbort_Memory()
  %5 = call i32 (...) @AtSubAbort_ResourceOwner()
  %6 = call i32 (...) @LWLockReleaseAll()
  %7 = call i32 (...) @pgstat_report_wait_end()
  %8 = call i32 (...) @pgstat_progress_end_command()
  %9 = call i32 (...) @AbortBufferIO()
  %10 = call i32 (...) @UnlockBuffers()
  %11 = call i32 (...) @XLogResetInsertion()
  %12 = call i32 (...) @ConditionVariableCancelSleep()
  %13 = call i32 (...) @LockErrorCleanup()
  %14 = call i32 (...) @reschedule_timeouts()
  %15 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %16 = call i32 @ShowTransactionState(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRANS_INPROGRESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %0
  %23 = load i32, i32* @WARNING, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @TransStateAsString(i64 %26)
  %28 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %0
  %30 = load i64, i64* @TRANS_ABORT, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SetUserIdAndSecContext(i32 %35, i32 %38)
  %40 = call i64 (...) @IsInParallelMode()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @AtEOSubXact_Parallel(i32 0, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %29
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %179

54:                                               ; preds = %49
  %55 = call i32 @AfterTriggerEndSubXact(i32 0)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @AtSubAbort_Portals(i32 %58, i32 %63, i64 %66, i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @AtEOSubXact_LargeObject(i32 0, i32 %75, i32 %80)
  %82 = call i32 (...) @AtSubAbort_Notify()
  %83 = call i32 @RecordTransactionAbort(i32 1)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @FullTransactionIdIsValid(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %54
  %90 = call i32 (...) @AtSubAbort_childXids()
  br label %91

91:                                               ; preds = %89, %54
  %92 = load i32, i32* @SUBXACT_EVENT_ABORT_SUB, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CallSubXactCallbacks(i32 %92, i32 %95, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @RESOURCE_RELEASE_BEFORE_LOCKS, align 4
  %106 = call i32 @ResourceOwnerRelease(i64 %104, i32 %105, i32 0, i32 0)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @AtEOSubXact_RelationCache(i32 0, i32 %109, i32 %114)
  %116 = call i32 @AtEOSubXact_Inval(i32 0)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @RESOURCE_RELEASE_LOCKS, align 4
  %121 = call i32 @ResourceOwnerRelease(i64 %119, i32 %120, i32 0, i32 0)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @RESOURCE_RELEASE_AFTER_LOCKS, align 4
  %126 = call i32 @ResourceOwnerRelease(i64 %124, i32 %125, i32 0, i32 0)
  %127 = call i32 (...) @AtSubAbort_smgr()
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @AtEOXact_GUC(i32 0, i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @AtEOSubXact_SPI(i32 0, i32 %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @AtEOSubXact_on_commit_actions(i32 0, i32 %138, i32 %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @AtEOSubXact_Namespace(i32 0, i32 %147, i32 %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @AtEOSubXact_Files(i32 0, i32 %156, i32 %161)
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @AtEOSubXact_HashTables(i32 0, i32 %165)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @AtEOSubXact_PgStat(i32 0, i32 %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @AtSubAbort_Snapshot(i32 %173)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @AtEOSubXact_ApplyLauncher(i32 0, i32 %177)
  br label %179

179:                                              ; preds = %91, %49
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* @XactReadOnly, align 4
  %183 = call i32 (...) @RESUME_INTERRUPTS()
  ret void
}

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @AtSubAbort_Memory(...) #1

declare dso_local i32 @AtSubAbort_ResourceOwner(...) #1

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

declare dso_local i32 @ShowTransactionState(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TransStateAsString(i64) #1

declare dso_local i32 @SetUserIdAndSecContext(i32, i32) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @AtEOSubXact_Parallel(i32, i32) #1

declare dso_local i32 @AfterTriggerEndSubXact(i32) #1

declare dso_local i32 @AtSubAbort_Portals(i32, i32, i64, i32) #1

declare dso_local i32 @AtEOSubXact_LargeObject(i32, i32, i32) #1

declare dso_local i32 @AtSubAbort_Notify(...) #1

declare dso_local i32 @RecordTransactionAbort(i32) #1

declare dso_local i64 @FullTransactionIdIsValid(i32) #1

declare dso_local i32 @AtSubAbort_childXids(...) #1

declare dso_local i32 @CallSubXactCallbacks(i32, i32, i32) #1

declare dso_local i32 @ResourceOwnerRelease(i64, i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_RelationCache(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_Inval(i32) #1

declare dso_local i32 @AtSubAbort_smgr(...) #1

declare dso_local i32 @AtEOXact_GUC(i32, i32) #1

declare dso_local i32 @AtEOSubXact_SPI(i32, i32) #1

declare dso_local i32 @AtEOSubXact_on_commit_actions(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_Namespace(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_Files(i32, i32, i32) #1

declare dso_local i32 @AtEOSubXact_HashTables(i32, i32) #1

declare dso_local i32 @AtEOSubXact_PgStat(i32, i32) #1

declare dso_local i32 @AtSubAbort_Snapshot(i32) #1

declare dso_local i32 @AtEOSubXact_ApplyLauncher(i32, i32) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
