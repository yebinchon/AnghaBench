; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_ProcessWalSndrMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_ProcessWalSndrMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8*, i8*, i8* }

@WalRcv = common dso_local global %struct.TYPE_3__* null, align 8
@log_min_messages = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"sendtime %s receipttime %s replication apply delay (N/A) transfer latency %d ms\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"sendtime %s receipttime %s replication apply delay %d ms transfer latency %d ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @ProcessWalSndrMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessWalSndrMessage(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @WalRcv, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = call i8* (...) @GetCurrentTimestamp()
  store i8* %11, i8** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i32 @SpinLockAcquire(i32* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @SpinLockRelease(i32* %35)
  %37 = load i64, i64* @log_min_messages, align 8
  %38 = load i64, i64* @DEBUG2, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %24
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @timestamptz_to_str(i8* %41)
  %43 = call i8* @pstrdup(i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @timestamptz_to_str(i8* %44)
  %46 = call i8* @pstrdup(i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = call i32 (...) @GetReplicationApplyDelay()
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i64, i64* @DEBUG2, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (...) @GetReplicationTransferLatency()
  %55 = call i32 (i64, i8*, i8*, i8*, i32, ...) @elog(i64 %51, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %53, i32 %54)
  br label %63

56:                                               ; preds = %40
  %57 = load i64, i64* @DEBUG2, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (...) @GetReplicationTransferLatency()
  %62 = call i32 (i64, i8*, i8*, i8*, i32, ...) @elog(i64 %57, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @pfree(i8* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @pfree(i8* %66)
  br label %68

68:                                               ; preds = %63, %24
  ret void
}

declare dso_local i8* @GetCurrentTimestamp(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @timestamptz_to_str(i8*) #1

declare dso_local i32 @GetReplicationApplyDelay(...) #1

declare dso_local i32 @elog(i64, i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @GetReplicationTransferLatency(...) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
