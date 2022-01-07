; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndErrorCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndErrorCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sendSeg = common dso_local global %struct.TYPE_2__* null, align 8
@MyReplicationSlot = common dso_local global i32* null, align 8
@replication_active = common dso_local global i32 0, align 4
@got_STOPPING = common dso_local global i64 0, align 8
@got_SIGUSR2 = common dso_local global i64 0, align 8
@WALSNDSTATE_STARTUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WalSndErrorCleanup() #0 {
  %1 = call i32 (...) @LWLockReleaseAll()
  %2 = call i32 (...) @ConditionVariableCancelSleep()
  %3 = call i32 (...) @pgstat_report_wait_end()
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sendSeg, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sendSeg, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @close(i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sendSeg, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  br label %15

15:                                               ; preds = %8, %0
  %16 = load i32*, i32** @MyReplicationSlot, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @ReplicationSlotRelease()
  br label %20

20:                                               ; preds = %18, %15
  %21 = call i32 (...) @ReplicationSlotCleanup()
  store i32 0, i32* @replication_active, align 4
  %22 = load i64, i64* @got_STOPPING, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @got_SIGUSR2, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %20
  %28 = call i32 @proc_exit(i32 0)
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* @WALSNDSTATE_STARTUP, align 4
  %31 = call i32 @WalSndSetState(i32 %30)
  ret void
}

declare dso_local i32 @LWLockReleaseAll(...) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ReplicationSlotRelease(...) #1

declare dso_local i32 @ReplicationSlotCleanup(...) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @WalSndSetState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
