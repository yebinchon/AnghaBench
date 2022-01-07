; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvFlush.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@LogstreamResult = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@WalRcv = common dso_local global %struct.TYPE_4__* null, align 8
@recvFile = common dso_local global i32 0, align 4
@recvSegNo = common dso_local global i32 0, align 4
@ThisTimeLineID = common dso_local global i32 0, align 4
@update_process_title = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"streaming %X/%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @XLogWalRcvFlush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogWalRcvFlush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [50 x i8], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 0), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 1), align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @WalRcv, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load i32, i32* @recvFile, align 4
  %11 = load i32, i32* @recvSegNo, align 4
  %12 = call i32 @issue_xlog_fsync(i32 %10, i32 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 1), align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 0), align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = call i32 @SpinLockAcquire(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 0), align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 0), align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @ThisTimeLineID, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %22, %8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i32 @SpinLockRelease(i32* %36)
  %38 = call i32 (...) @WakeupRecovery()
  %39 = call i64 (...) @AllowCascadeReplication()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (...) @WalSndWakeup()
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i64, i64* @update_process_title, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 1), align 8
  %49 = ashr i64 %48, 32
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @LogstreamResult, i32 0, i32 1), align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @snprintf(i8* %47, i32 50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52)
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %55 = call i32 @set_ps_display(i8* %54, i32 0)
  br label %56

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i32 @XLogWalRcvSendReply(i32 0, i32 0)
  %61 = call i32 @XLogWalRcvSendHSFeedback(i32 0)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %1
  ret void
}

declare dso_local i32 @issue_xlog_fsync(i32, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @WakeupRecovery(...) #1

declare dso_local i64 @AllowCascadeReplication(...) #1

declare dso_local i32 @WalSndWakeup(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @set_ps_display(i8*, i32) #1

declare dso_local i32 @XLogWalRcvSendReply(i32, i32) #1

declare dso_local i32 @XLogWalRcvSendHSFeedback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
