; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_StartTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_StartTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, i32, i32, i8*, i32, i64, i64, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@TopTransactionStateData = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CurrentTransactionState = common dso_local global %struct.TYPE_8__* null, align 8
@XactTopFullTransactionId = common dso_local global i32 0, align 4
@TRANS_DEFAULT = common dso_local global i64 0, align 8
@TRANS_START = common dso_local global i64 0, align 8
@InvalidFullTransactionId = common dso_local global i32 0, align 4
@log_xact_sample_rate = common dso_local global i32 0, align 4
@MAX_RANDOM_VALUE = common dso_local global i32 0, align 4
@xact_is_sampled = common dso_local global i32 0, align 4
@XactReadOnly = common dso_local global i32 0, align 4
@DefaultXactReadOnly = common dso_local global i32 0, align 4
@DefaultXactDeferrable = common dso_local global i32 0, align 4
@XactDeferrable = common dso_local global i32 0, align 4
@DefaultXactIsoLevel = common dso_local global i32 0, align 4
@XactIsoLevel = common dso_local global i32 0, align 4
@forceSyncCommit = common dso_local global i32 0, align 4
@MyXactFlags = common dso_local global i64 0, align 8
@TopSubTransactionId = common dso_local global i8* null, align 8
@currentSubTransactionId = common dso_local global i8* null, align 8
@FirstCommandId = common dso_local global i32 0, align 4
@currentCommandId = common dso_local global i32 0, align 4
@currentCommandIdUsed = common dso_local global i32 0, align 4
@nUnreportedXids = common dso_local global i64 0, align 8
@MyBackendId = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_9__* null, align 8
@stmtStartTimestamp = common dso_local global i64 0, align 8
@xactStartTimestamp = common dso_local global i64 0, align 8
@xactStopTimestamp = common dso_local global i64 0, align 8
@TRANS_INPROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"StartTransaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @StartTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartTransaction() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* @TopTransactionStateData, %struct.TYPE_8__** %1, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** @CurrentTransactionState, align 8
  %4 = load i32, i32* @XactTopFullTransactionId, align 4
  %5 = call i32 @FullTransactionIdIsValid(i32 %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRANS_DEFAULT, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i64, i64* @TRANS_START, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @InvalidFullTransactionId, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @log_xact_sample_rate, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %0
  %26 = load i32, i32* @log_xact_sample_rate, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @random()
  %30 = load i32, i32* @log_xact_sample_rate, align 4
  %31 = load i32, i32* @MAX_RANDOM_VALUE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = icmp sle i32 %29, %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ true, %25 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %0
  %37 = phi i1 [ false, %0 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* @xact_is_sampled, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 10
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 9
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 7
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = call i32 @GetUserIdAndSecContext(i32* %50, i64* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = call i64 (...) @RecoveryInProgress()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %36
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  store i32 1, i32* %64, align 8
  store i32 1, i32* @XactReadOnly, align 4
  br label %69

65:                                               ; preds = %36
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @DefaultXactReadOnly, align 4
  store i32 %68, i32* @XactReadOnly, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* @DefaultXactDeferrable, align 4
  store i32 %70, i32* @XactDeferrable, align 4
  %71 = load i32, i32* @DefaultXactIsoLevel, align 4
  store i32 %71, i32* @XactIsoLevel, align 4
  store i32 0, i32* @forceSyncCommit, align 4
  store i64 0, i64* @MyXactFlags, align 8
  %72 = load i8*, i8** @TopSubTransactionId, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @TopSubTransactionId, align 8
  store i8* %75, i8** @currentSubTransactionId, align 8
  %76 = load i32, i32* @FirstCommandId, align 4
  store i32 %76, i32* @currentCommandId, align 4
  store i32 0, i32* @currentCommandIdUsed, align 4
  store i64 0, i64* @nUnreportedXids, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  store i32 0, i32* %78, align 4
  %79 = call i32 (...) @AtStart_Memory()
  %80 = call i32 (...) @AtStart_ResourceOwner()
  %81 = load i64, i64* @MyBackendId, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = call i32 (...) @GetNextLocalTransactionId()
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = bitcast %struct.TYPE_7__* %2 to { i64, i32 }*
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @VirtualXactLockTableInsert(i64 %87, i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MyProc, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @Assert(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MyProc, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @TRACE_POSTGRESQL_TRANSACTION_START(i32 %104)
  %106 = call i32 (...) @IsParallelWorker()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %69
  %109 = call i32 (...) @SPI_inside_nonatomic_context()
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @stmtStartTimestamp, align 8
  store i64 %112, i64* @xactStartTimestamp, align 8
  br label %115

113:                                              ; preds = %108
  %114 = call i64 (...) @GetCurrentTimestamp()
  store i64 %114, i64* @xactStartTimestamp, align 8
  br label %115

115:                                              ; preds = %113, %111
  br label %121

116:                                              ; preds = %69
  %117 = load i64, i64* @xactStartTimestamp, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @Assert(i32 %119)
  br label %121

121:                                              ; preds = %116, %115
  %122 = load i64, i64* @xactStartTimestamp, align 8
  %123 = call i32 @pgstat_report_xact_timestamp(i64 %122)
  store i64 0, i64* @xactStopTimestamp, align 8
  %124 = call i32 (...) @AtStart_GUC()
  %125 = call i32 (...) @AtStart_Cache()
  %126 = call i32 (...) @AfterTriggerBeginXact()
  %127 = load i64, i64* @TRANS_INPROGRESS, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = call i32 @ShowTransactionState(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FullTransactionIdIsValid(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @GetUserIdAndSecContext(i32*, i64*) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @AtStart_Memory(...) #1

declare dso_local i32 @AtStart_ResourceOwner(...) #1

declare dso_local i32 @GetNextLocalTransactionId(...) #1

declare dso_local i32 @VirtualXactLockTableInsert(i64, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_TRANSACTION_START(i32) #1

declare dso_local i32 @IsParallelWorker(...) #1

declare dso_local i32 @SPI_inside_nonatomic_context(...) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i32 @pgstat_report_xact_timestamp(i64) #1

declare dso_local i32 @AtStart_GUC(...) #1

declare dso_local i32 @AtStart_Cache(...) #1

declare dso_local i32 @AfterTriggerBeginXact(...) #1

declare dso_local i32 @ShowTransactionState(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
