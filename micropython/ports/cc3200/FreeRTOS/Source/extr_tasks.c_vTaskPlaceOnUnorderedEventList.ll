; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_vTaskPlaceOnUnorderedEventList.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_vTaskPlaceOnUnorderedEventList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@uxSchedulerSuspended = common dso_local global i64 0, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_2__* null, align 8
@taskEVENT_LIST_ITEM_VALUE_IN_USE = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vTaskPlaceOnUnorderedEventList(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @configASSERT(i32 %8)
  %10 = load i64, i64* @uxSchedulerSuspended, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @configASSERT(i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxCurrentTCB, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @taskEVENT_LIST_ITEM_VALUE_IN_USE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @listSET_LIST_ITEM_VALUE(i32* %15, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxCurrentTCB, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @vListInsertEnd(i32* %20, i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @pdTRUE, align 4
  %26 = call i32 @prvAddCurrentTaskToDelayedList(i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @listSET_LIST_ITEM_VALUE(i32*, i32) #1

declare dso_local i32 @vListInsertEnd(i32*, i32*) #1

declare dso_local i32 @prvAddCurrentTaskToDelayedList(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
