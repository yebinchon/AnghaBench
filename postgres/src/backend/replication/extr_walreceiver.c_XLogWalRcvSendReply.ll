; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvSendReply.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvSendReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@XLogWalRcvSendReply.writePtr = internal global i32 0, align 4
@XLogWalRcvSendReply.flushPtr = internal global i32 0, align 4
@XLogWalRcvSendReply.sendTime = internal global i32 0, align 4
@wal_receiver_status_interval = common dso_local global i32 0, align 4
@LogstreamResult = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@reply_message = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"sending write %X/%X flush %X/%X apply %X/%X%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" (reply requested)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@wrconn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @XLogWalRcvSendReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogWalRcvSendReply(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @wal_receiver_status_interval, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %72

13:                                               ; preds = %9, %2
  %14 = call i32 (...) @GetCurrentTimestamp()
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @XLogWalRcvSendReply.writePtr, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogstreamResult, i32 0, i32 0), align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* @XLogWalRcvSendReply.flushPtr, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogstreamResult, i32 0, i32 1), align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, i32* @XLogWalRcvSendReply.sendTime, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @wal_receiver_status_interval, align 4
  %29 = mul nsw i32 %28, 1000
  %30 = call i32 @TimestampDifferenceExceeds(i32 %26, i32 %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %72

33:                                               ; preds = %25, %21, %17, %13
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* @XLogWalRcvSendReply.sendTime, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogstreamResult, i32 0, i32 0), align 4
  store i32 %35, i32* @XLogWalRcvSendReply.writePtr, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogstreamResult, i32 0, i32 1), align 4
  store i32 %36, i32* @XLogWalRcvSendReply.flushPtr, align 4
  %37 = call i32 @GetXLogReplayRecPtr(i32* null)
  store i32 %37, i32* %5, align 4
  %38 = call i32 @resetStringInfo(%struct.TYPE_6__* @reply_message)
  %39 = call i32 @pq_sendbyte(%struct.TYPE_6__* @reply_message, i32 114)
  %40 = load i32, i32* @XLogWalRcvSendReply.writePtr, align 4
  %41 = call i32 @pq_sendint64(%struct.TYPE_6__* @reply_message, i32 %40)
  %42 = load i32, i32* @XLogWalRcvSendReply.flushPtr, align 4
  %43 = call i32 @pq_sendint64(%struct.TYPE_6__* @reply_message, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @pq_sendint64(%struct.TYPE_6__* @reply_message, i32 %44)
  %46 = call i32 (...) @GetCurrentTimestamp()
  %47 = call i32 @pq_sendint64(%struct.TYPE_6__* @reply_message, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = call i32 @pq_sendbyte(%struct.TYPE_6__* @reply_message, i32 %51)
  %53 = load i32, i32* @DEBUG2, align 4
  %54 = load i32, i32* @XLogWalRcvSendReply.writePtr, align 4
  %55 = ashr i32 %54, 32
  %56 = load i32, i32* @XLogWalRcvSendReply.writePtr, align 4
  %57 = load i32, i32* @XLogWalRcvSendReply.flushPtr, align 4
  %58 = ashr i32 %57, 32
  %59 = load i32, i32* @XLogWalRcvSendReply.flushPtr, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 32
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %67 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %58, i32 %59, i32 %61, i32 %62, i8* %66)
  %68 = load i32, i32* @wrconn, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @reply_message, i32 0, i32 1), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @reply_message, i32 0, i32 0), align 4
  %71 = call i32 @walrcv_send(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %33, %32, %12
  ret void
}

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @TimestampDifferenceExceeds(i32, i32, i32) #1

declare dso_local i32 @GetXLogReplayRecPtr(i32*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @pq_sendbyte(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pq_sendint64(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @walrcv_send(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
