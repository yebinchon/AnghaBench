; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessStandbyReplyMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessStandbyReplyMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i8* }

@ProcessStandbyReplyMessage.fullyAppliedLastTime = internal global i32 0, align 4
@reply_message = common dso_local global i32 0, align 4
@log_min_messages = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"write %X/%X flush %X/%X apply %X/%X%s reply_time %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" (reply requested)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SYNC_REP_WAIT_WRITE = common dso_local global i32 0, align 4
@SYNC_REP_WAIT_FLUSH = common dso_local global i32 0, align 4
@SYNC_REP_WAIT_APPLY = common dso_local global i32 0, align 4
@sentPtr = common dso_local global i32 0, align 4
@MyWalSnd = common dso_local global %struct.TYPE_3__* null, align 8
@am_cascading_walsender = common dso_local global i32 0, align 4
@MyReplicationSlot = common dso_local global i64 0, align 8
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProcessStandbyReplyMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessStandbyReplyMessage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = call i8* @pq_getmsgint64(i32* @reply_message)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %1, align 4
  %15 = call i8* @pq_getmsgint64(i32* @reply_message)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %2, align 4
  %17 = call i8* @pq_getmsgint64(i32* @reply_message)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = call i8* @pq_getmsgint64(i32* @reply_message)
  store i8* %19, i8** %10, align 8
  %20 = call i32 @pq_getmsgbyte(i32* @reply_message)
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @log_min_messages, align 8
  %22 = load i64, i64* @DEBUG2, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %0
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @timestamptz_to_str(i8* %25)
  %27 = call i8* @pstrdup(i32 %26)
  store i8* %27, i8** %11, align 8
  %28 = load i64, i64* @DEBUG2, align 8
  %29 = load i32, i32* %1, align 4
  %30 = ashr i32 %29, 32
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = ashr i32 %35, 32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @elog(i64 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %33, i32 %34, i32 %36, i32 %37, i8* %41, i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @pfree(i8* %44)
  br label %46

46:                                               ; preds = %24, %0
  %47 = call i8* (...) @GetCurrentTimestamp()
  store i8* %47, i8** %9, align 8
  %48 = load i32, i32* @SYNC_REP_WAIT_WRITE, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @LagTrackerRead(i32 %48, i32 %49, i8* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @SYNC_REP_WAIT_FLUSH, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @LagTrackerRead(i32 %52, i32 %53, i8* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @SYNC_REP_WAIT_APPLY, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @LagTrackerRead(i32 %56, i32 %57, i8* %58)
  store i32 %59, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @sentPtr, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load i32, i32* @ProcessStandbyReplyMessage.fullyAppliedLastTime, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %63
  store i32 1, i32* @ProcessStandbyReplyMessage.fullyAppliedLastTime, align 4
  br label %69

68:                                               ; preds = %46
  store i32 0, i32* @ProcessStandbyReplyMessage.fullyAppliedLastTime, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @WalSndKeepalive(i32 0)
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWalSnd, align 8
  store %struct.TYPE_3__* %75, %struct.TYPE_3__** %12, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 6
  %78 = call i32 @SpinLockAcquire(i32* %77)
  %79 = load i32, i32* %1, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %2, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %93, label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90, %74
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  %123 = call i32 @SpinLockRelease(i32* %122)
  %124 = load i32, i32* @am_cascading_walsender, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %117
  %127 = call i32 (...) @SyncRepReleaseWaiters()
  br label %128

128:                                              ; preds = %126, %117
  %129 = load i64, i64* @MyReplicationSlot, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* @InvalidXLogRecPtr, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load i64, i64* @MyReplicationSlot, align 8
  %137 = call i64 @SlotIsLogical(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @LogicalConfirmReceivedLocation(i32 %140)
  br label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %2, align 4
  %144 = call i32 @PhysicalConfirmReceivedLocation(i32 %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %131, %128
  ret void
}

declare dso_local i8* @pq_getmsgint64(i32*) #1

declare dso_local i32 @pq_getmsgbyte(i32*) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @timestamptz_to_str(i8*) #1

declare dso_local i32 @elog(i64, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @GetCurrentTimestamp(...) #1

declare dso_local i32 @LagTrackerRead(i32, i32, i8*) #1

declare dso_local i32 @WalSndKeepalive(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @SyncRepReleaseWaiters(...) #1

declare dso_local i64 @SlotIsLogical(i64) #1

declare dso_local i32 @LogicalConfirmReceivedLocation(i32) #1

declare dso_local i32 @PhysicalConfirmReceivedLocation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
