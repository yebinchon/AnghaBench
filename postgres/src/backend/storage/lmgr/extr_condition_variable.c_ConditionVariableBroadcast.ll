; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariableBroadcast.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariableBroadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@cv_sleep_target = common dso_local global i32* null, align 8
@cvWaitLink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConditionVariableBroadcast(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** @cv_sleep_target, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @ConditionVariableCancelSleep()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = call i32 @SpinLockAcquire(i32* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @cvWaitLink, align 4
  %21 = call i32 @proclist_contains(i32* %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = call i32 @proclist_is_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %13
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* @cvWaitLink, align 4
  %34 = call %struct.TYPE_6__* @proclist_pop_head_node(i32* %32, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %4, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = call i32 @proclist_is_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @cvWaitLink, align 4
  %44 = call i32 @proclist_push_tail(i32* %41, i32 %42, i32 %43)
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %30
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @SpinLockRelease(i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = call i32 @SetLatch(i32* %54)
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %92, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %57
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = call i32 @SpinLockAcquire(i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @proclist_is_empty(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* @cvWaitLink, align 4
  %72 = call %struct.TYPE_6__* @proclist_pop_head_node(i32* %70, i32 %71)
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %4, align 8
  br label %73

73:                                               ; preds = %68, %60
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @cvWaitLink, align 4
  %78 = call i32 @proclist_contains(i32* %75, i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = call i32 @SpinLockRelease(i32* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = icmp ne %struct.TYPE_6__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %87 = icmp ne %struct.TYPE_6__* %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = call i32 @SetLatch(i32* %90)
  br label %92

92:                                               ; preds = %88, %84, %73
  br label %57

93:                                               ; preds = %57
  ret void
}

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @proclist_contains(i32*, i32, i32) #1

declare dso_local i32 @proclist_is_empty(i32*) #1

declare dso_local %struct.TYPE_6__* @proclist_pop_head_node(i32*, i32) #1

declare dso_local i32 @proclist_push_tail(i32*, i32, i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @SetLatch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
