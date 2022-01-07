; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_ResolveRecoveryConflictWithBufferPin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_ResolveRecoveryConflictWithBufferPin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@InHotStandby = common dso_local global i32 0, align 4
@STANDBY_DEADLOCK_TIMEOUT = common dso_local global i32 0, align 4
@DeadlockTimeout = common dso_local global i32 0, align 4
@PROCSIG_RECOVERY_CONFLICT_BUFFERPIN = common dso_local global i32 0, align 4
@STANDBY_TIMEOUT = common dso_local global i32 0, align 4
@TMPARAM_AT = common dso_local global i32 0, align 4
@TMPARAM_AFTER = common dso_local global i32 0, align 4
@PG_WAIT_BUFFER_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResolveRecoveryConflictWithBufferPin() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [2 x %struct.TYPE_3__], align 16
  %3 = load i32, i32* @InHotStandby, align 4
  %4 = call i32 @Assert(i32 %3)
  %5 = call i64 (...) @GetStandbyLimitTime()
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @STANDBY_DEADLOCK_TIMEOUT, align 4
  %10 = load i32, i32* @DeadlockTimeout, align 4
  %11 = call i32 @enable_timeout_after(i32 %9, i32 %10)
  br label %41

12:                                               ; preds = %0
  %13 = call i64 (...) @GetCurrentTimestamp()
  %14 = load i64, i64* %1, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @PROCSIG_RECOVERY_CONFLICT_BUFFERPIN, align 4
  %18 = call i32 @SendRecoveryConflictWithBufferPin(i32 %17)
  br label %40

19:                                               ; preds = %12
  %20 = load i32, i32* @STANDBY_TIMEOUT, align 4
  %21 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @TMPARAM_AT, align 4
  %24 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %1, align 8
  %27 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 16
  %29 = load i32, i32* @STANDBY_DEADLOCK_TIMEOUT, align 4
  %30 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %2, i64 0, i64 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @TMPARAM_AFTER, align 4
  %33 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %2, i64 0, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DeadlockTimeout, align 4
  %36 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %2, i64 0, i64 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %39 = call i32 @enable_timeouts(%struct.TYPE_3__* %38, i32 2)
  br label %40

40:                                               ; preds = %19, %16
  br label %41

41:                                               ; preds = %40, %8
  %42 = load i32, i32* @PG_WAIT_BUFFER_PIN, align 4
  %43 = call i32 @ProcWaitForSignal(i32 %42)
  %44 = call i32 @disable_all_timeouts(i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GetStandbyLimitTime(...) #1

declare dso_local i32 @enable_timeout_after(i32, i32) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i32 @SendRecoveryConflictWithBufferPin(i32) #1

declare dso_local i32 @enable_timeouts(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ProcWaitForSignal(i32) #1

declare dso_local i32 @disable_all_timeouts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
