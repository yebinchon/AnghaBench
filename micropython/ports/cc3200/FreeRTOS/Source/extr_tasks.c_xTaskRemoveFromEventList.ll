; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_xTaskRemoveFromEventList.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_xTaskRemoveFromEventList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@uxSchedulerSuspended = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i8* null, align 8
@xPendingReadyList = common dso_local global i32 0, align 4
@pxCurrentTCB = common dso_local global %struct.TYPE_6__* null, align 8
@pdTRUE = common dso_local global i8* null, align 8
@xYieldPending = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xTaskRemoveFromEventList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @listGET_OWNER_OF_HEAD_ENTRY(i32* %5)
  %7 = inttoptr i64 %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = call i32 @configASSERT(%struct.TYPE_5__* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = call i32 @uxListRemove(i32* %11)
  %13 = load i64, i64* @uxSchedulerSuspended, align 8
  %14 = load i8*, i8** @pdFALSE, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = call i32 @uxListRemove(i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @prvAddTaskToReadyList(%struct.TYPE_5__* %21)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @vListInsertEnd(i32* @xPendingReadyList, i32* %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pxCurrentTCB, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8*, i8** @pdTRUE, align 8
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** @pdTRUE, align 8
  store i8* %37, i8** @xYieldPending, align 8
  br label %40

38:                                               ; preds = %27
  %39 = load i8*, i8** @pdFALSE, align 8
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

declare dso_local i64 @listGET_OWNER_OF_HEAD_ENTRY(i32*) #1

declare dso_local i32 @configASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @uxListRemove(i32*) #1

declare dso_local i32 @prvAddTaskToReadyList(%struct.TYPE_5__*) #1

declare dso_local i32 @vListInsertEnd(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
