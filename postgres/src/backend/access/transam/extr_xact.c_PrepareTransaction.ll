; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PrepareTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PrepareTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32*, i64, i64, i32, i8*, i32*, i32* }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"PrepareTransaction\00", align 1
@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"PrepareTransaction while in %s state\00", align 1
@XACT_EVENT_PRE_PREPARE = common dso_local global i32 0, align 4
@MyXactFlags = common dso_local global i32 0, align 4
@XACT_FLAGS_ACCESSEDTEMPNAMESPACE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"cannot PREPARE a transaction that has operated on temporary objects\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"cannot PREPARE a transaction that has exported snapshots\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"cannot PREPARE a transaction that has manipulated logical replication workers\00", align 1
@TRANS_PREPARE = common dso_local global i64 0, align 8
@prepareGID = common dso_local global i32* null, align 8
@MyDatabaseId = common dso_local global i32 0, align 4
@XactLastRecEnd = common dso_local global i64 0, align 8
@MyProc = common dso_local global i32 0, align 4
@XACT_EVENT_PREPARE = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PrepareTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrepareTransaction() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %1, align 8
  %6 = call i32 (...) @GetCurrentTransactionId()
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @IsInParallelMode()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = call i32 @ShowTransactionState(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRANS_INPROGRESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %0
  %19 = load i32, i32* @WARNING, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @TransStateAsString(i64 %22)
  %24 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 9
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  br label %32

32:                                               ; preds = %37, %25
  %33 = call i32 (...) @AfterTriggerFireDeferred()
  %34 = call i32 @PreCommit_Portals(i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %32

38:                                               ; preds = %36
  %39 = load i32, i32* @XACT_EVENT_PRE_PREPARE, align 4
  %40 = call i32 @CallXactCallbacks(i32 %39)
  %41 = call i32 @AfterTriggerEndXact(i32 1)
  %42 = call i32 (...) @PreCommit_on_commit_actions()
  %43 = call i32 @AtEOXact_LargeObject(i32 1)
  %44 = call i32 (...) @PreCommit_CheckForSerializationFailure()
  %45 = load i32, i32* @MyXactFlags, align 4
  %46 = load i32, i32* @XACT_FLAGS_ACCESSEDTEMPNAMESPACE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @ereport(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %38
  %56 = call i64 (...) @XactHasExportedSnapshots()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = call i64 (...) @XactManipulatesLogicalReplicationWorkers()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %64
  %74 = call i32 (...) @HOLD_INTERRUPTS()
  %75 = load i64, i64* @TRANS_PREPARE, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = call i32 (...) @GetCurrentTimestamp()
  store i32 %78, i32* %4, align 4
  %79 = call i32 (...) @BufmgrCommit()
  %80 = load i32, i32* %2, align 4
  %81 = load i32*, i32** @prepareGID, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (...) @GetUserId()
  %84 = load i32, i32* @MyDatabaseId, align 4
  %85 = call i32 @MarkAsPreparing(i32 %80, i32* %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  store i32* null, i32** @prepareGID, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @StartPrepare(i32 %86)
  %88 = call i32 (...) @AtPrepare_Notify()
  %89 = call i32 (...) @AtPrepare_Locks()
  %90 = call i32 (...) @AtPrepare_PredicateLocks()
  %91 = call i32 (...) @AtPrepare_PgStat()
  %92 = call i32 (...) @AtPrepare_MultiXact()
  %93 = call i32 (...) @AtPrepare_RelationMap()
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @EndPrepare(i32 %94)
  store i64 0, i64* @XactLastRecEnd, align 8
  %96 = load i32, i32* @MyProc, align 4
  %97 = call i32 @ProcArrayClearTransaction(i32 %96)
  %98 = load i32, i32* @XACT_EVENT_PREPARE, align 4
  %99 = call i32 @CallXactCallbacks(i32 %98)
  %100 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %101 = load i32, i32* @RESOURCE_RELEASE_BEFORE_LOCKS, align 4
  %102 = call i32 @ResourceOwnerRelease(i32* %100, i32 %101, i32 1, i32 1)
  %103 = call i32 @AtEOXact_Buffers(i32 1)
  %104 = call i32 @AtEOXact_RelationCache(i32 1)
  %105 = call i32 (...) @PostPrepare_PgStat()
  %106 = call i32 (...) @PostPrepare_Inval()
  %107 = call i32 (...) @PostPrepare_smgr()
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @PostPrepare_MultiXact(i32 %108)
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @PostPrepare_Locks(i32 %110)
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @PostPrepare_PredicateLocks(i32 %112)
  %114 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %115 = load i32, i32* @RESOURCE_RELEASE_LOCKS, align 4
  %116 = call i32 @ResourceOwnerRelease(i32* %114, i32 %115, i32 1, i32 1)
  %117 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %118 = load i32, i32* @RESOURCE_RELEASE_AFTER_LOCKS, align 4
  %119 = call i32 @ResourceOwnerRelease(i32* %117, i32 %118, i32 1, i32 1)
  %120 = call i32 (...) @PostPrepare_Twophase()
  %121 = call i32 @AtEOXact_GUC(i32 1, i32 1)
  %122 = call i32 @AtEOXact_SPI(i32 1)
  %123 = call i32 (...) @AtEOXact_Enum()
  %124 = call i32 @AtEOXact_on_commit_actions(i32 1)
  %125 = call i32 @AtEOXact_Namespace(i32 1, i32 0)
  %126 = call i32 (...) @AtEOXact_SMgr()
  %127 = call i32 @AtEOXact_Files(i32 1)
  %128 = call i32 (...) @AtEOXact_ComboCid()
  %129 = call i32 @AtEOXact_HashTables(i32 1)
  %130 = call i32 @AtEOXact_Snapshot(i32 1, i32 1)
  %131 = call i32 @pgstat_report_xact_timestamp(i32 0)
  store i32* null, i32** @CurrentResourceOwner, align 8
  %132 = load i32*, i32** @TopTransactionResourceOwner, align 8
  %133 = call i32 @ResourceOwnerDelete(i32* %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 8
  store i32* null, i32** %135, align 8
  store i32* null, i32** @CurTransactionResourceOwner, align 8
  store i32* null, i32** @TopTransactionResourceOwner, align 8
  %136 = call i32 (...) @AtCommit_Memory()
  %137 = load i8*, i8** @InvalidFullTransactionId, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 7
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* @InvalidSubTransactionId, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 5
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  store i32* null, i32** %148, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load i8*, i8** @InvalidFullTransactionId, align 8
  store i8* %153, i8** @XactTopFullTransactionId, align 8
  store i64 0, i64* @nParallelCurrentXids, align 8
  %154 = load i64, i64* @TRANS_DEFAULT, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = call i32 (...) @RESUME_INTERRUPTS()
  ret void
}

declare dso_local i32 @GetCurrentTransactionId(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsInParallelMode(...) #1

declare dso_local i32 @ShowTransactionState(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TransStateAsString(i64) #1

declare dso_local i32 @AfterTriggerFireDeferred(...) #1

declare dso_local i32 @PreCommit_Portals(i32) #1

declare dso_local i32 @CallXactCallbacks(i32) #1

declare dso_local i32 @AfterTriggerEndXact(i32) #1

declare dso_local i32 @PreCommit_on_commit_actions(...) #1

declare dso_local i32 @AtEOXact_LargeObject(i32) #1

declare dso_local i32 @PreCommit_CheckForSerializationFailure(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @XactHasExportedSnapshots(...) #1

declare dso_local i64 @XactManipulatesLogicalReplicationWorkers(...) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @BufmgrCommit(...) #1

declare dso_local i32 @MarkAsPreparing(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @StartPrepare(i32) #1

declare dso_local i32 @AtPrepare_Notify(...) #1

declare dso_local i32 @AtPrepare_Locks(...) #1

declare dso_local i32 @AtPrepare_PredicateLocks(...) #1

declare dso_local i32 @AtPrepare_PgStat(...) #1

declare dso_local i32 @AtPrepare_MultiXact(...) #1

declare dso_local i32 @AtPrepare_RelationMap(...) #1

declare dso_local i32 @EndPrepare(i32) #1

declare dso_local i32 @ProcArrayClearTransaction(i32) #1

declare dso_local i32 @ResourceOwnerRelease(i32*, i32, i32, i32) #1

declare dso_local i32 @AtEOXact_Buffers(i32) #1

declare dso_local i32 @AtEOXact_RelationCache(i32) #1

declare dso_local i32 @PostPrepare_PgStat(...) #1

declare dso_local i32 @PostPrepare_Inval(...) #1

declare dso_local i32 @PostPrepare_smgr(...) #1

declare dso_local i32 @PostPrepare_MultiXact(i32) #1

declare dso_local i32 @PostPrepare_Locks(i32) #1

declare dso_local i32 @PostPrepare_PredicateLocks(i32) #1

declare dso_local i32 @PostPrepare_Twophase(...) #1

declare dso_local i32 @AtEOXact_GUC(i32, i32) #1

declare dso_local i32 @AtEOXact_SPI(i32) #1

declare dso_local i32 @AtEOXact_Enum(...) #1

declare dso_local i32 @AtEOXact_on_commit_actions(i32) #1

declare dso_local i32 @AtEOXact_Namespace(i32, i32) #1

declare dso_local i32 @AtEOXact_SMgr(...) #1

declare dso_local i32 @AtEOXact_Files(i32) #1

declare dso_local i32 @AtEOXact_ComboCid(...) #1

declare dso_local i32 @AtEOXact_HashTables(i32) #1

declare dso_local i32 @AtEOXact_Snapshot(i32, i32) #1

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
