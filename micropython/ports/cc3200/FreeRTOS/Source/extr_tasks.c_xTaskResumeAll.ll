; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_xTaskResumeAll.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_xTaskResumeAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@pdFALSE = common dso_local global i64 0, align 8
@uxSchedulerSuspended = common dso_local global i64 0, align 8
@uxCurrentNumberOfTasks = common dso_local global i64 0, align 8
@xPendingReadyList = common dso_local global i32 0, align 4
@pxCurrentTCB = common dso_local global %struct.TYPE_5__* null, align 8
@pdTRUE = common dso_local global i8* null, align 8
@xYieldPending = common dso_local global i64 0, align 8
@uxPendedTicks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xTaskResumeAll() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  %4 = load i64, i64* @pdFALSE, align 8
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %2, align 8
  %6 = load i64, i64* @uxSchedulerSuspended, align 8
  %7 = call i32 @configASSERT(i64 %6)
  %8 = call i32 (...) @taskENTER_CRITICAL()
  %9 = load i64, i64* @uxSchedulerSuspended, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* @uxSchedulerSuspended, align 8
  %11 = load i64, i64* @uxSchedulerSuspended, align 8
  %12 = load i64, i64* @pdFALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %84

14:                                               ; preds = %0
  %15 = load i64, i64* @uxCurrentNumberOfTasks, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %45, %17
  %19 = call i64 @listLIST_IS_EMPTY(i32* @xPendingReadyList)
  %20 = load i64, i64* @pdFALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = call i64 @listGET_OWNER_OF_HEAD_ENTRY(i32* @xPendingReadyList)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %1, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @uxListRemove(i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @uxListRemove(i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = call i32 @prvAddTaskToReadyList(%struct.TYPE_4__* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pxCurrentTCB, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i8*, i8** @pdTRUE, align 8
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* @xYieldPending, align 8
  br label %45

43:                                               ; preds = %22
  %44 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %45

45:                                               ; preds = %43, %40
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @prvResetNextTaskUnblockTime()
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i64, i64* @uxPendedTicks, align 8
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %68, %55
  %57 = call i64 (...) @xTaskIncrementTick()
  %58 = load i64, i64* @pdFALSE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8*, i8** @pdTRUE, align 8
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* @xYieldPending, align 8
  br label %65

63:                                               ; preds = %56
  %64 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i64, i64* %3, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %3, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %56, label %71

71:                                               ; preds = %68
  store i64 0, i64* @uxPendedTicks, align 8
  br label %74

72:                                               ; preds = %51
  %73 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %74

74:                                               ; preds = %72, %71
  %75 = load i64, i64* @xYieldPending, align 8
  %76 = load i64, i64* @pdFALSE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (...) @taskYIELD_IF_USING_PREEMPTION()
  br label %82

80:                                               ; preds = %74
  %81 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %82

82:                                               ; preds = %80, %78
  br label %83

83:                                               ; preds = %82, %14
  br label %86

84:                                               ; preds = %0
  %85 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %86

86:                                               ; preds = %84, %83
  %87 = call i32 (...) @taskEXIT_CRITICAL()
  %88 = load i8*, i8** %2, align 8
  ret i8* %88
}

declare dso_local i32 @configASSERT(i64) #1

declare dso_local i32 @taskENTER_CRITICAL(...) #1

declare dso_local i64 @listLIST_IS_EMPTY(i32*) #1

declare dso_local i64 @listGET_OWNER_OF_HEAD_ENTRY(i32*) #1

declare dso_local i32 @uxListRemove(i32*) #1

declare dso_local i32 @prvAddTaskToReadyList(%struct.TYPE_4__*) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @prvResetNextTaskUnblockTime(...) #1

declare dso_local i64 @xTaskIncrementTick(...) #1

declare dso_local i32 @taskYIELD_IF_USING_PREEMPTION(...) #1

declare dso_local i32 @taskEXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
