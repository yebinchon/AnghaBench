; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommitTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommitTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32*, i64, i64, i32, i8*, i32*, i64, i32* }
%struct.TYPE_6__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@TBLOCK_PARALLEL_INPROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"CommitTransaction\00", align 1
@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"CommitTransaction while in %s state\00", align 1
@XACT_EVENT_PARALLEL_PRE_COMMIT = common dso_local global i32 0, align 4
@XACT_EVENT_PRE_COMMIT = common dso_local global i32 0, align 4
@TRANS_COMMIT = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@XactLastRecEnd = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@XACT_EVENT_PARALLEL_COMMIT = common dso_local global i32 0, align 4
@XACT_EVENT_COMMIT = common dso_local global i32 0, align 4
@TopTransactionResourceOwner = common dso_local global i32* null, align 8
@RESOURCE_RELEASE_BEFORE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_AFTER_LOCKS = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32* null, align 8
@CurTransactionResourceOwner = common dso_local global i32* null, align 8
@InvalidFullTransactionId = common dso_local global i8* null, align 8
@InvalidSubTransactionId = common dso_local global i32 0, align 4
@XactTopFullTransactionId = common dso_local global i8* null, align 8
@nParallelCurrentXids = common dso_local global i64 0, align 8
@TRANS_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CommitTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CommitTransaction() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %1, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TBLOCK_PARALLEL_INPROGRESS, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @EnterParallelMode()
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 @ShowTransactionState(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRANS_INPROGRESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32, i32* @WARNING, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @TransStateAsString(i64 %26)
  %28 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 11
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  br label %36

36:                                               ; preds = %41, %29
  %37 = call i32 (...) @AfterTriggerFireDeferred()
  %38 = call i32 @PreCommit_Portals(i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %36

42:                                               ; preds = %40
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @XACT_EVENT_PARALLEL_PRE_COMMIT, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @XACT_EVENT_PRE_COMMIT, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @CallXactCallbacks(i32 %50)
  %52 = call i64 (...) @IsInParallelMode()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @AtEOXact_Parallel(i32 1)
  br label %56

56:                                               ; preds = %54, %49
  %57 = call i32 @AfterTriggerEndXact(i32 1)
  %58 = call i32 (...) @PreCommit_on_commit_actions()
  %59 = call i32 @AtEOXact_LargeObject(i32 1)
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = call i32 (...) @PreCommit_CheckForSerializationFailure()
  br label %64

64:                                               ; preds = %62, %56
  %65 = call i32 (...) @PreCommit_Notify()
  %66 = call i32 (...) @HOLD_INTERRUPTS()
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @AtEOXact_RelationMap(i32 1, i32 %67)
  %69 = load i64, i64* @TRANS_COMMIT, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %64
  %77 = call i32 (...) @RecordTransactionCommit()
  store i32 %77, i32* %2, align 4
  br label %82

78:                                               ; preds = %64
  %79 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* @XactLastRecEnd, align 4
  %81 = call i32 @ParallelWorkerReportLastRecEnd(i32 %80)
  br label %82

82:                                               ; preds = %78, %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @TRACE_POSTGRESQL_TRANSACTION_COMMIT(i32 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @ProcArrayEndTransaction(%struct.TYPE_6__* %87, i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @XACT_EVENT_PARALLEL_COMMIT, align 4
  br label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @XACT_EVENT_COMMIT, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @CallXactCallbacks(i32 %97)
  %99 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %100 = load i32, i32* @RESOURCE_RELEASE_BEFORE_LOCKS, align 4
  %101 = call i32 @ResourceOwnerRelease(i32* %99, i32 %100, i32 1, i32 1)
  %102 = call i32 @AtEOXact_Buffers(i32 1)
  %103 = call i32 @AtEOXact_RelationCache(i32 1)
  %104 = call i32 @AtEOXact_Inval(i32 1)
  %105 = call i32 (...) @AtEOXact_MultiXact()
  %106 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %107 = load i32, i32* @RESOURCE_RELEASE_LOCKS, align 4
  %108 = call i32 @ResourceOwnerRelease(i32* %106, i32 %107, i32 1, i32 1)
  %109 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %110 = load i32, i32* @RESOURCE_RELEASE_AFTER_LOCKS, align 4
  %111 = call i32 @ResourceOwnerRelease(i32* %109, i32 %110, i32 1, i32 1)
  %112 = call i32 @smgrDoPendingDeletes(i32 1)
  %113 = call i32 (...) @AtCommit_Notify()
  %114 = call i32 @AtEOXact_GUC(i32 1, i32 1)
  %115 = call i32 @AtEOXact_SPI(i32 1)
  %116 = call i32 (...) @AtEOXact_Enum()
  %117 = call i32 @AtEOXact_on_commit_actions(i32 1)
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @AtEOXact_Namespace(i32 1, i32 %118)
  %120 = call i32 (...) @AtEOXact_SMgr()
  %121 = call i32 @AtEOXact_Files(i32 1)
  %122 = call i32 (...) @AtEOXact_ComboCid()
  %123 = call i32 @AtEOXact_HashTables(i32 1)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @AtEOXact_PgStat(i32 1, i32 %124)
  %126 = call i32 @AtEOXact_Snapshot(i32 1, i32 0)
  %127 = call i32 @AtEOXact_ApplyLauncher(i32 1)
  %128 = call i32 @pgstat_report_xact_timestamp(i32 0)
  store i32* null, i32** @CurrentResourceOwner, align 8
  %129 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %130 = call i32 @ResourceOwnerDelete(i32* %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 9
  store i32* null, i32** %132, align 8
  store i32* null, i32** @CurTransactionResourceOwner, align 8
  store i32* null, i32** @TopTransactionResourceOwner, align 8
  %133 = call i32 (...) @AtCommit_Memory()
  %134 = load i8*, i8** @InvalidFullTransactionId, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @InvalidSubTransactionId, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 6
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 5
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 4
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load i8*, i8** @InvalidFullTransactionId, align 8
  store i8* %150, i8** @XactTopFullTransactionId, align 8
  store i64 0, i64* @nParallelCurrentXids, align 8
  %151 = load i64, i64* @TRANS_DEFAULT, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = call i32 (...) @RESUME_INTERRUPTS()
  ret void
}

declare dso_local i32 @EnterParallelMode(...) #1

declare dso_local i32 @ShowTransactionState(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TransStateAsString(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AfterTriggerFireDeferred(...) #1

declare dso_local i32 @PreCommit_Portals(i32) #1

declare dso_local i32 @CallXactCallbacks(i32) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @AtEOXact_Parallel(i32) #1

declare dso_local i32 @AfterTriggerEndXact(i32) #1

declare dso_local i32 @PreCommit_on_commit_actions(...) #1

declare dso_local i32 @AtEOXact_LargeObject(i32) #1

declare dso_local i32 @PreCommit_CheckForSerializationFailure(...) #1

declare dso_local i32 @PreCommit_Notify(...) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @AtEOXact_RelationMap(i32, i32) #1

declare dso_local i32 @RecordTransactionCommit(...) #1

declare dso_local i32 @ParallelWorkerReportLastRecEnd(i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_TRANSACTION_COMMIT(i32) #1

declare dso_local i32 @ProcArrayEndTransaction(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ResourceOwnerRelease(i32*, i32, i32, i32) #1

declare dso_local i32 @AtEOXact_Buffers(i32) #1

declare dso_local i32 @AtEOXact_RelationCache(i32) #1

declare dso_local i32 @AtEOXact_Inval(i32) #1

declare dso_local i32 @AtEOXact_MultiXact(...) #1

declare dso_local i32 @smgrDoPendingDeletes(i32) #1

declare dso_local i32 @AtCommit_Notify(...) #1

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

declare dso_local i32 @AtEOXact_Snapshot(i32, i32) #1

declare dso_local i32 @AtEOXact_ApplyLauncher(i32) #1

declare dso_local i32 @pgstat_report_xact_timestamp(i32) #1

declare dso_local i32 @ResourceOwnerDelete(i32*) #1

declare dso_local i32 @AtCommit_Memory(...) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
