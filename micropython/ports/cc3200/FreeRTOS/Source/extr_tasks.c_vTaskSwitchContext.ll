; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_vTaskSwitchContext.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_vTaskSwitchContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@uxSchedulerSuspended = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i64 0, align 8
@xYieldPending = common dso_local global i64 0, align 8
@_impure_ptr = common dso_local global i32* null, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_2__* null, align 8
@ulTaskSwitchedInTime = common dso_local global i64 0, align 8
@ulTotalRunTime = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vTaskSwitchContext() #0 {
  %1 = load i64, i64* @uxSchedulerSuspended, align 8
  %2 = load i64, i64* @pdFALSE, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @pdTRUE, align 8
  store i64 %5, i64* @xYieldPending, align 8
  br label %12

6:                                                ; preds = %0
  %7 = load i64, i64* @pdFALSE, align 8
  store i64 %7, i64* @xYieldPending, align 8
  %8 = call i32 (...) @traceTASK_SWITCHED_OUT()
  %9 = call i32 (...) @taskCHECK_FOR_STACK_OVERFLOW()
  %10 = call i32 (...) @taskSELECT_HIGHEST_PRIORITY_TASK()
  %11 = call i32 (...) @traceTASK_SWITCHED_IN()
  br label %12

12:                                               ; preds = %6, %4
  ret void
}

declare dso_local i32 @traceTASK_SWITCHED_OUT(...) #1

declare dso_local i32 @taskCHECK_FOR_STACK_OVERFLOW(...) #1

declare dso_local i32 @taskSELECT_HIGHEST_PRIORITY_TASK(...) #1

declare dso_local i32 @traceTASK_SWITCHED_IN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
