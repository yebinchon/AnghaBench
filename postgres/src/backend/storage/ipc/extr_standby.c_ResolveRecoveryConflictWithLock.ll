; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_ResolveRecoveryConflictWithLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_ResolveRecoveryConflictWithLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@InHotStandby = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@PROCSIG_RECOVERY_CONFLICT_LOCK = common dso_local global i32 0, align 4
@STANDBY_LOCK_TIMEOUT = common dso_local global i32 0, align 4
@TMPARAM_AT = common dso_local global i32 0, align 4
@PG_WAIT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResolveRecoveryConflictWithLock(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1 x %struct.TYPE_7__], align 16
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = load i32, i32* @InHotStandby, align 4
  %8 = call i32 @Assert(i32 %7)
  %9 = call i64 (...) @GetStandbyLimitTime()
  store i64 %9, i64* %3, align 8
  %10 = call i64 (...) @GetCurrentTimestamp()
  %11 = load i64, i64* %3, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @AccessExclusiveLock, align 4
  %15 = call i32* @GetLockConflicts(%struct.TYPE_6__* %2, i32 %14, i32* null)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @PROCSIG_RECOVERY_CONFLICT_LOCK, align 4
  %18 = call i32 @ResolveRecoveryConflictWithVirtualXIDs(i32* %16, i32 %17)
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @STANDBY_LOCK_TIMEOUT, align 4
  %21 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @TMPARAM_AT, align 4
  %24 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 16
  %29 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %30 = call i32 @enable_timeouts(%struct.TYPE_7__* %29, i32 1)
  br label %31

31:                                               ; preds = %19, %13
  %32 = load i32, i32* @PG_WAIT_LOCK, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %32, %34
  %36 = call i32 @ProcWaitForSignal(i32 %35)
  %37 = call i32 @disable_all_timeouts(i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GetStandbyLimitTime(...) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i32* @GetLockConflicts(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @ResolveRecoveryConflictWithVirtualXIDs(i32*, i32) #1

declare dso_local i32 @enable_timeouts(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ProcWaitForSignal(i32) #1

declare dso_local i32 @disable_all_timeouts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
