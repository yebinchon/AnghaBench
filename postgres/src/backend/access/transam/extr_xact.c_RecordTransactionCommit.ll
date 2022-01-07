; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RecordTransactionCommit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RecordTransactionCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@XactLastRecEnd = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"cannot commit a transaction that deleted files but has no xid\00", align 1
@replorigin_session_origin = common dso_local global i64 0, align 8
@InvalidRepOriginId = common dso_local global i64 0, align 8
@DoNotReplicateId = common dso_local global i64 0, align 8
@MyPgXact = common dso_local global %struct.TYPE_2__* null, align 8
@xactStopTimestamp = common dso_local global i64 0, align 8
@forceSyncCommit = common dso_local global i64 0, align 8
@MyXactFlags = common dso_local global i32 0, align 4
@replorigin_session_origin_lsn = common dso_local global i32 0, align 4
@replorigin_session_origin_timestamp = common dso_local global i64 0, align 8
@synchronous_commit = common dso_local global i64 0, align 8
@SYNCHRONOUS_COMMIT_OFF = common dso_local global i64 0, align 8
@XactLastCommitEnd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @RecordTransactionCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RecordTransactionCommit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = call i32 (...) @GetTopTransactionIdIfAny()
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @TransactionIdIsValid(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = call i32 @smgrGetPendingDeletes(i32 1, i32** %5)
  store i32 %17, i32* %4, align 4
  %18 = call i32 @xactGetCommittedChildren(i32** %7)
  store i32 %18, i32* %6, align 4
  %19 = call i64 (...) @XLogStandbyInfoActive()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @xactGetCommittedInvalidationMessages(i32** %9, i32* %10)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %0
  %24 = load i64, i64* @XactLastRecEnd, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @LogStandbyInvalidations(i32 %43, i32* %44, i32 %45)
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %162

51:                                               ; preds = %47
  br label %101

52:                                               ; preds = %23
  %53 = load i64, i64* @replorigin_session_origin, align 8
  %54 = load i64, i64* @InvalidRepOriginId, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @replorigin_session_origin, align 8
  %58 = load i64, i64* @DoNotReplicateId, align 8
  %59 = icmp ne i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = call i32 (...) @BufmgrCommit()
  %64 = call i32 (...) @START_CRIT_SECTION()
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyPgXact, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = call i32 (...) @SetCurrentTransactionStopTimestamp()
  %68 = load i64, i64* @xactStopTimestamp, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i64, i64* @forceSyncCommit, align 8
  %77 = load i32, i32* @MyXactFlags, align 4
  %78 = load i32, i32* @InvalidTransactionId, align 4
  %79 = call i32 @XactLogCommitRecord(i64 %68, i32 %69, i32* %70, i32 %71, i32* %72, i32 %73, i32* %74, i32 %75, i64 %76, i32 %77, i32 %78, i32* null)
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %60
  %83 = load i32, i32* @replorigin_session_origin_lsn, align 4
  %84 = load i64, i64* @XactLastRecEnd, align 8
  %85 = call i32 @replorigin_session_advance(i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %60
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* @replorigin_session_origin_timestamp, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %86
  %93 = load i64, i64* @xactStopTimestamp, align 8
  store i64 %93, i64* @replorigin_session_origin_timestamp, align 8
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* @replorigin_session_origin_timestamp, align 8
  %99 = load i64, i64* @replorigin_session_origin, align 8
  %100 = call i32 @TransactionTreeSetCommitTsData(i32 %95, i32 %96, i32* %97, i64 %98, i64 %99, i32 0)
  br label %101

101:                                              ; preds = %94, %51
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %2, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i64, i64* @synchronous_commit, align 8
  %109 = load i64, i64* @SYNCHRONOUS_COMMIT_OFF, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %107, %104, %101
  %112 = load i64, i64* @forceSyncCommit, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114, %111, %107
  %118 = load i64, i64* @XactLastRecEnd, align 8
  %119 = call i32 @XLogFlush(i64 %118)
  %120 = load i32, i32* %2, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @TransactionIdCommitTree(i32 %123, i32 %124, i32* %125)
  br label %127

127:                                              ; preds = %122, %117
  br label %140

128:                                              ; preds = %114
  %129 = load i64, i64* @XactLastRecEnd, align 8
  %130 = call i32 @XLogSetAsyncXactLSN(i64 %129)
  %131 = load i32, i32* %2, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = load i64, i64* @XactLastRecEnd, align 8
  %138 = call i32 @TransactionIdAsyncCommitTree(i32 %134, i32 %135, i32* %136, i64 %137)
  br label %139

139:                                              ; preds = %133, %128
  br label %140

140:                                              ; preds = %139, %127
  %141 = load i32, i32* %2, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyPgXact, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  %146 = call i32 (...) @END_CRIT_SECTION()
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32, i32* %1, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @TransactionIdLatest(i32 %148, i32 %149, i32* %150)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load i32, i32* %2, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64, i64* @XactLastRecEnd, align 8
  %159 = call i32 @SyncRepWaitForLSN(i64 %158, i32 1)
  br label %160

160:                                              ; preds = %157, %154, %147
  %161 = load i64, i64* @XactLastRecEnd, align 8
  store i64 %161, i64* @XactLastCommitEnd, align 8
  store i64 0, i64* @XactLastRecEnd, align 8
  br label %162

162:                                              ; preds = %160, %50
  %163 = load i32*, i32** %5, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @pfree(i32* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @smgrGetPendingDeletes(i32, i32**) #1

declare dso_local i32 @xactGetCommittedChildren(i32**) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i32 @xactGetCommittedInvalidationMessages(i32**, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LogStandbyInvalidations(i32, i32*, i32) #1

declare dso_local i32 @BufmgrCommit(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @SetCurrentTransactionStopTimestamp(...) #1

declare dso_local i32 @XactLogCommitRecord(i64, i32, i32*, i32, i32*, i32, i32*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @replorigin_session_advance(i32, i64) #1

declare dso_local i32 @TransactionTreeSetCommitTsData(i32, i32, i32*, i64, i64, i32) #1

declare dso_local i32 @XLogFlush(i64) #1

declare dso_local i32 @TransactionIdCommitTree(i32, i32, i32*) #1

declare dso_local i32 @XLogSetAsyncXactLSN(i64) #1

declare dso_local i32 @TransactionIdAsyncCommitTree(i32, i32, i32*, i64) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @TransactionIdLatest(i32, i32, i32*) #1

declare dso_local i32 @SyncRepWaitForLSN(i64, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
