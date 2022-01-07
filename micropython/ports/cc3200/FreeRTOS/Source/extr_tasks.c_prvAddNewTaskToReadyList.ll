; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_prvAddNewTaskToReadyList.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_prvAddNewTaskToReadyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@uxCurrentNumberOfTasks = common dso_local global i64 0, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_7__* null, align 8
@xSchedulerRunning = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i64 0, align 8
@uxTaskNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @prvAddNewTaskToReadyList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvAddNewTaskToReadyList(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = call i32 (...) @taskENTER_CRITICAL()
  %4 = load i64, i64* @uxCurrentNumberOfTasks, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @uxCurrentNumberOfTasks, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pxCurrentTCB, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** @pxCurrentTCB, align 8
  %10 = load i64, i64* @uxCurrentNumberOfTasks, align 8
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @prvInitialiseTaskLists()
  br label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %16

16:                                               ; preds = %14, %12
  br label %37

17:                                               ; preds = %1
  %18 = load i64, i64* @xSchedulerRunning, align 8
  %19 = load i64, i64* @pdFALSE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pxCurrentTCB, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** @pxCurrentTCB, align 8
  br label %33

31:                                               ; preds = %21
  %32 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %33

33:                                               ; preds = %31, %29
  br label %36

34:                                               ; preds = %17
  %35 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %36

36:                                               ; preds = %34, %33
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i64, i64* @uxTaskNumber, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @uxTaskNumber, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = call i32 @traceTASK_CREATE(%struct.TYPE_7__* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = call i32 @prvAddTaskToReadyList(%struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = call i32 @portSETUP_TCB(%struct.TYPE_7__* %44)
  %46 = call i32 (...) @taskEXIT_CRITICAL()
  %47 = load i64, i64* @xSchedulerRunning, align 8
  %48 = load i64, i64* @pdFALSE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %37
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pxCurrentTCB, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 (...) @taskYIELD_IF_USING_PREEMPTION()
  br label %62

60:                                               ; preds = %50
  %61 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %62

62:                                               ; preds = %60, %58
  br label %65

63:                                               ; preds = %37
  %64 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %65

65:                                               ; preds = %63, %62
  ret void
}

declare dso_local i32 @taskENTER_CRITICAL(...) #1

declare dso_local i32 @prvInitialiseTaskLists(...) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @traceTASK_CREATE(%struct.TYPE_7__*) #1

declare dso_local i32 @prvAddTaskToReadyList(%struct.TYPE_7__*) #1

declare dso_local i32 @portSETUP_TCB(%struct.TYPE_7__*) #1

declare dso_local i32 @taskEXIT_CRITICAL(...) #1

declare dso_local i32 @taskYIELD_IF_USING_PREEMPTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
