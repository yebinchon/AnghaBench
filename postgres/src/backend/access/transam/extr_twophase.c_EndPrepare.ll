; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_EndPrepare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_EndPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@TWOPHASE_RM_END_ID = common dso_local global i32 0, align 4
@records = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TWOPHASE_MAGIC = common dso_local global i64 0, align 8
@replorigin_session_origin = common dso_local global i64 0, align 8
@InvalidRepOriginId = common dso_local global i64 0, align 8
@DoNotReplicateId = common dso_local global i64 0, align 8
@replorigin_session_origin_lsn = common dso_local global i64 0, align 8
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@replorigin_session_origin_timestamp = common dso_local global i64 0, align 8
@MaxAllocSize = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"two-phase state file maximum length exceeded\00", align 1
@MyPgXact = common dso_local global %struct.TYPE_13__* null, align 8
@XLOG_INCLUDE_ORIGIN = common dso_local global i32 0, align 4
@RM_XACT_ID = common dso_local global i32 0, align 4
@XLOG_XACT_PREPARE = common dso_local global i32 0, align 4
@ProcLastRecPtr = common dso_local global i32 0, align 4
@MyLockedGxact = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EndPrepare(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load i32, i32* @TWOPHASE_RM_END_ID, align 4
  %7 = call i32 @RegisterTwoPhaseRecord(i32 %6, i32 0, i32* null, i32 0)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @records, i32 0, i32 2), align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TWOPHASE_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @records, i32 0, i32 0), align 8
  %20 = add i64 %19, 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* @replorigin_session_origin, align 8
  %24 = load i64, i64* @InvalidRepOriginId, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i64, i64* @replorigin_session_origin, align 8
  %28 = load i64, i64* @DoNotReplicateId, align 8
  %29 = icmp ne i64 %27, %28
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i1 [ false, %1 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i64, i64* @replorigin_session_origin_lsn, align 8
  %37 = load i64, i64* @InvalidXLogRecPtr, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i64, i64* @replorigin_session_origin_lsn, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @replorigin_session_origin_timestamp, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %53

47:                                               ; preds = %30
  %48 = load i64, i64* @InvalidXLogRecPtr, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %35
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MaxAllocSize, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 @ereport(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @records, i32 0, i32 1), align 8
  %67 = call i32 @XLogEnsureRecordSpace(i32 0, i64 %66)
  %68 = call i32 (...) @START_CRIT_SECTION()
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyPgXact, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = call i32 (...) @XLogBeginInsert()
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @records, i32 0, i32 2), align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %4, align 8
  br label %73

73:                                               ; preds = %84, %65
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = icmp ne %struct.TYPE_10__* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @XLogRegisterData(i64 %79, i32 %82)
  br label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %4, align 8
  br label %73

88:                                               ; preds = %73
  %89 = load i32, i32* @XLOG_INCLUDE_ORIGIN, align 4
  %90 = call i32 @XLogSetRecordFlags(i32 %89)
  %91 = load i32, i32* @RM_XACT_ID, align 4
  %92 = load i32, i32* @XLOG_XACT_PREPARE, align 4
  %93 = call i32 @XLogInsert(i32 %91, i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load i64, i64* @replorigin_session_origin_lsn, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @replorigin_session_advance(i64 %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %88
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @XLogFlush(i32 %107)
  %109 = load i32, i32* @ProcLastRecPtr, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = call i32 @MarkAsPrepared(%struct.TYPE_11__* %112, i32 0)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyPgXact, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** @MyLockedGxact, align 8
  %117 = call i32 (...) @END_CRIT_SECTION()
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @SyncRepWaitForLSN(i32 %120, i32 0)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @records, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @records, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @records, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @RegisterTwoPhaseRecord(i32, i32, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @XLogEnsureRecordSpace(i32, i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i64, i32) #1

declare dso_local i32 @XLogSetRecordFlags(i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @replorigin_session_advance(i64, i32) #1

declare dso_local i32 @XLogFlush(i32) #1

declare dso_local i32 @MarkAsPrepared(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @SyncRepWaitForLSN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
