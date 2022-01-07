; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariablePrepareToSleep.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariablePrepareToSleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@cv_wait_event_set = common dso_local global i32* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32* null, align 8
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@cv_sleep_target = common dso_local global %struct.TYPE_5__* null, align 8
@cvWaitLink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConditionVariablePrepareToSleep(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** @cv_wait_event_set, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32, i32* @TopMemoryContext, align 4
  %12 = call i32* @CreateWaitEventSet(i32 %11, i32 2)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @WL_LATCH_SET, align 4
  %15 = load i32, i32* @PGINVALID_SOCKET, align 4
  %16 = load i32*, i32** @MyLatch, align 8
  %17 = call i32 @AddWaitEventToSet(i32* %13, i32 %14, i32 %15, i32* %16, i32* null)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %20 = load i32, i32* @PGINVALID_SOCKET, align 4
  %21 = call i32 @AddWaitEventToSet(i32* %18, i32 %19, i32 %20, i32* null, i32* null)
  %22 = load i32*, i32** %4, align 8
  store i32* %22, i32** @cv_wait_event_set, align 8
  br label %23

23:                                               ; preds = %10, %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cv_sleep_target, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @ConditionVariableCancelSleep()
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @cv_sleep_target, align 8
  %30 = load i32*, i32** @MyLatch, align 8
  %31 = call i32 @ResetLatch(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @SpinLockAcquire(i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @cvWaitLink, align 4
  %39 = call i32 @proclist_push_tail(i32* %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @SpinLockRelease(i32* %41)
  ret void
}

declare dso_local i32* @CreateWaitEventSet(i32, i32) #1

declare dso_local i32 @AddWaitEventToSet(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @ResetLatch(i32*) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @proclist_push_tail(i32*, i32, i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
