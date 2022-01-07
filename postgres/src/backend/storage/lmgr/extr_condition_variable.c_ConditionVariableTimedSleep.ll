; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariableTimedSleep.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_condition_variable.c_ConditionVariableTimedSleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@cv_sleep_target = common dso_local global %struct.TYPE_6__* null, align 8
@INT_MAX = common dso_local global i64 0, align 8
@cv_wait_event_set = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_7__* null, align 8
@cvWaitLink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConditionVariableTimedSleep(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 -1, i64* %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cv_sleep_target, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = icmp ne %struct.TYPE_6__* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = call i32 @ConditionVariablePrepareToSleep(%struct.TYPE_6__* %17)
  store i32 0, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @INSTR_TIME_SET_CURRENT(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = icmp sle i64 %28, %29
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %31, %19
  br label %37

37:                                               ; preds = %36, %88
  store i32 0, i32* %12, align 4
  %38 = load i32, i32* @cv_wait_event_set, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @WaitEventSetWait(i32 %38, i64 %39, i32* %11, i32 1, i32 %40)
  %42 = load i32, i32* @MyLatch, align 4
  %43 = call i32 @ResetLatch(i32 %42)
  %44 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @SpinLockAcquire(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @cvWaitLink, align 4
  %54 = call i32 @proclist_contains(i32* %49, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @cvWaitLink, align 4
  %63 = call i32 @proclist_push_tail(i32* %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %37
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @SpinLockRelease(i32* %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %89

71:                                               ; preds = %64
  %72 = load i64, i64* %6, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @INSTR_TIME_SET_CURRENT(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @INSTR_TIME_SUBTRACT(i32 %77, i32 %78)
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %81)
  %83 = sub nsw i64 %80, %82
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %89

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %71
  br label %37

89:                                               ; preds = %86, %70, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @ConditionVariablePrepareToSleep(%struct.TYPE_6__*) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @WaitEventSetWait(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @proclist_contains(i32*, i32, i32) #1

declare dso_local i32 @proclist_push_tail(i32*, i32, i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i64 @INSTR_TIME_GET_MILLISEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
