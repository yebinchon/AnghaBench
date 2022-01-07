; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepUpdateSyncStandbysDefined.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepUpdateSyncStandbysDefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@WalSndCtl = common dso_local global %struct.TYPE_2__* null, align 8
@SyncRepLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@NUM_SYNC_REP_WAIT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncRepUpdateSyncStandbysDefined() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @SyncStandbysDefined()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WalSndCtl, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %4, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %0
  %10 = load i32, i32* @SyncRepLock, align 4
  %11 = load i32, i32* @LW_EXCLUSIVE, align 4
  %12 = call i32 @LWLockAcquire(i32 %10, i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %23, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @NUM_SYNC_REP_WAIT_MODE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @SyncRepWakeQueue(i32 1, i32 %21)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %16

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %1, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WalSndCtl, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @SyncRepLock, align 4
  %32 = call i32 @LWLockRelease(i32 %31)
  br label %33

33:                                               ; preds = %27, %0
  ret void
}

declare dso_local i32 @SyncStandbysDefined(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SyncRepWakeQueue(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
