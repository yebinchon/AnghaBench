; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_vTaskStartScheduler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_vTaskStartScheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@prvIdleTask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@configMINIMAL_STACK_SIZE = common dso_local global i32 0, align 4
@tskIDLE_PRIORITY = common dso_local global i32 0, align 4
@portPRIVILEGE_BIT = common dso_local global i32 0, align 4
@xIdleTaskHandle = common dso_local global i32* null, align 8
@pdPASS = common dso_local global i64 0, align 8
@portMAX_DELAY = common dso_local global i32 0, align 4
@xNextTaskUnblockTime = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i32 0, align 4
@xSchedulerRunning = common dso_local global i32 0, align 4
@xTickCount = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i64 0, align 8
@errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY = common dso_local global i64 0, align 8
@_impure_ptr = common dso_local global i32* null, align 8
@pdFAIL = common dso_local global i64 0, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vTaskStartScheduler() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @prvIdleTask, align 4
  %3 = load i32, i32* @configMINIMAL_STACK_SIZE, align 4
  %4 = load i32, i32* @tskIDLE_PRIORITY, align 4
  %5 = load i32, i32* @portPRIVILEGE_BIT, align 4
  %6 = or i32 %4, %5
  %7 = call i64 @xTaskCreate(i32 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %3, i8* null, i32 %6, i32** @xIdleTaskHandle)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @pdPASS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %0
  %12 = call i32 (...) @portDISABLE_INTERRUPTS()
  %13 = load i32, i32* @portMAX_DELAY, align 4
  store i32 %13, i32* @xNextTaskUnblockTime, align 4
  %14 = load i32, i32* @pdTRUE, align 4
  store i32 %14, i32* @xSchedulerRunning, align 4
  store i64 0, i64* @xTickCount, align 8
  %15 = call i32 (...) @portCONFIGURE_TIMER_FOR_RUN_TIME_STATS()
  %16 = call i64 (...) @xPortStartScheduler()
  %17 = load i64, i64* @pdFALSE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %19
  br label %28

22:                                               ; preds = %0
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @configASSERT(i32 %26)
  br label %28

28:                                               ; preds = %22, %21
  %29 = load i32*, i32** @xIdleTaskHandle, align 8
  ret void
}

declare dso_local i64 @xTaskCreate(i32, i8*, i32, i8*, i32, i32**) #1

declare dso_local i32 @portDISABLE_INTERRUPTS(...) #1

declare dso_local i32 @portCONFIGURE_TIMER_FOR_RUN_TIME_STATS(...) #1

declare dso_local i64 @xPortStartScheduler(...) #1

declare dso_local i32 @configASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
