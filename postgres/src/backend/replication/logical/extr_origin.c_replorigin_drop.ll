; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_drop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ReplicationOriginRelationId = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@ReplicationOriginLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i32 0, align 4
@replication_states = common dso_local global %struct.TYPE_9__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"could not drop replication origin with OID %d, in use by PID %d\00", align 1
@WAIT_EVENT_REPLICATION_ORIGIN_DROP = common dso_local global i32 0, align 4
@RM_REPLORIGIN_ID = common dso_local global i32 0, align 4
@XLOG_REPLORIGIN_DROP = common dso_local global i32 0, align 4
@InvalidRepOriginId = common dso_local global i64 0, align 8
@InvalidXLogRecPtr = common dso_local global i8* null, align 8
@REPLORIGIDENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"cache lookup failed for replication origin with oid %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replorigin_drop(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 (...) @IsTransactionState()
  %12 = call i32 @Assert(i32 %11)
  %13 = load i32, i32* @ReplicationOriginRelationId, align 4
  %14 = load i32, i32* @ExclusiveLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %54, %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %17 = load i32, i32* @ReplicationOriginLock, align 4
  %18 = load i32, i32* @LW_EXCLUSIVE, align 4
  %19 = call i32 @LWLockAcquire(i32 %17, i32 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %81, %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @max_replication_slots, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @replication_states, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %27
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %24
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %51)
  %53 = call i32 @ereport(i32 %43, i32 %52)
  br label %54

54:                                               ; preds = %42, %39
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  store i32* %56, i32** %9, align 8
  %57 = load i32, i32* @ReplicationOriginLock, align 4
  %58 = call i32 @LWLockRelease(i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* @WAIT_EVENT_REPLICATION_ORIGIN_DROP, align 4
  %61 = call i32 @ConditionVariableSleep(i32* %59, i32 %60)
  br label %16

62:                                               ; preds = %34
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = call i32 (...) @XLogBeginInsert()
  %66 = bitcast %struct.TYPE_8__* %10 to i8*
  %67 = call i32 @XLogRegisterData(i8* %66, i32 8)
  %68 = load i32, i32* @RM_REPLORIGIN_ID, align 4
  %69 = load i32, i32* @XLOG_REPLORIGIN_DROP, align 4
  %70 = call i32 @XLogInsert(i32 %68, i32 %69)
  %71 = load i64, i64* @InvalidRepOriginId, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %84

80:                                               ; preds = %24
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %20

84:                                               ; preds = %62, %20
  %85 = load i32, i32* @ReplicationOriginLock, align 4
  %86 = call i32 @LWLockRelease(i32 %85)
  %87 = call i32 (...) @ConditionVariableCancelSleep()
  %88 = load i32, i32* @REPLORIGIDENT, align 4
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @ObjectIdGetDatum(i64 %89)
  %91 = call %struct.TYPE_10__* @SearchSysCache1(i32 %88, i32 %90)
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %5, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i64, i64* %3, align 8
  %98 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %95, %84
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = call i32 @CatalogTupleDelete(i32 %100, i32* %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = call i32 @ReleaseSysCache(%struct.TYPE_10__* %104)
  %106 = call i32 (...) @CommandCounterIncrement()
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ExclusiveLock, align 4
  %109 = call i32 @table_close(i32 %107, i32 %108)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsTransactionState(...) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ConditionVariableSleep(i32*, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local %struct.TYPE_10__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_10__*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
