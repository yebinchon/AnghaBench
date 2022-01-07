; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_prvAddCurrentTaskToDelayedList.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_prvAddCurrentTaskToDelayedList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@xTickCount = common dso_local global i64 0, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_2__* null, align 8
@uxTopReadyPriority = common dso_local global i32 0, align 4
@pxOverflowDelayedTaskList = common dso_local global i32 0, align 4
@pxDelayedTaskList = common dso_local global i32 0, align 4
@xNextTaskUnblockTime = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i64 0, align 8
@portMAX_DELAY = common dso_local global i64 0, align 8
@xSuspendedTaskList = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @prvAddCurrentTaskToDelayedList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvAddCurrentTaskToDelayedList(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @xTickCount, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxCurrentTCB, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i64 @uxListRemove(i32* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxCurrentTCB, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @uxTopReadyPriority, align 4
  %17 = call i32 @portRESET_READY_PRIORITY(i32 %15, i32 %16)
  br label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxCurrentTCB, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @listSET_LIST_ITEM_VALUE(i32* %25, i64 %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load i32, i32* @pxOverflowDelayedTaskList, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxCurrentTCB, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @vListInsert(i32 %32, i32* %34)
  br label %49

36:                                               ; preds = %20
  %37 = load i32, i32* @pxDelayedTaskList, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxCurrentTCB, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @vListInsert(i32 %37, i32* %39)
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @xNextTaskUnblockTime, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* @xNextTaskUnblockTime, align 8
  br label %48

46:                                               ; preds = %36
  %47 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i64, i64* %4, align 8
  ret void
}

declare dso_local i64 @uxListRemove(i32*) #1

declare dso_local i32 @portRESET_READY_PRIORITY(i32, i32) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @listSET_LIST_ITEM_VALUE(i32*, i64) #1

declare dso_local i32 @vListInsert(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
