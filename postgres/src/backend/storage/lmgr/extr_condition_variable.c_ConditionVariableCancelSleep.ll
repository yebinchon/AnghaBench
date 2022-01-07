; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariableCancelSleep.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariableCancelSleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@cv_sleep_target = common dso_local global %struct.TYPE_5__* null, align 8
@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@cvWaitLink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConditionVariableCancelSleep() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cv_sleep_target, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  store i32 0, i32* %2, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = icmp eq %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %38

7:                                                ; preds = %0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = call i32 @SpinLockAcquire(i32* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @cvWaitLink, align 4
  %17 = call i64 @proclist_contains(i32* %12, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @cvWaitLink, align 4
  %26 = call i32 @proclist_delete(i32* %21, i32 %24, i32 %25)
  br label %28

27:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @SpinLockRelease(i32* %30)
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = call i32 @ConditionVariableSignal(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %34, %28
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @cv_sleep_target, align 8
  br label %38

38:                                               ; preds = %37, %6
  ret void
}

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i64 @proclist_contains(i32*, i32, i32) #1

declare dso_local i32 @proclist_delete(i32*, i32, i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @ConditionVariableSignal(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
