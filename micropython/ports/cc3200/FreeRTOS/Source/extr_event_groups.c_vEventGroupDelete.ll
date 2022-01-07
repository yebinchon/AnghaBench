; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_event_groups.c_vEventGroupDelete.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_event_groups.c_vEventGroupDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@eventUNBLOCKED_DUE_TO_BIT_SET = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vEventGroupDelete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = call i32 (...) @vTaskSuspendAll()
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @traceEVENT_GROUP_DELETE(i64 %10)
  br label %12

12:                                               ; preds = %16, %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i64 @listCURRENT_LIST_LENGTH(%struct.TYPE_7__* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_6__* %22 to i32*
  %24 = icmp ne i32* %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @configASSERT(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @eventUNBLOCKED_DUE_TO_BIT_SET, align 4
  %32 = call i32 @xTaskRemoveFromUnorderedEventList(i32* %30, i32 %31)
  br label %12

33:                                               ; preds = %12
  %34 = call i32 (...) @xTaskResumeAll()
  ret void
}

declare dso_local i32 @vTaskSuspendAll(...) #1

declare dso_local i32 @traceEVENT_GROUP_DELETE(i64) #1

declare dso_local i64 @listCURRENT_LIST_LENGTH(%struct.TYPE_7__*) #1

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @xTaskRemoveFromUnorderedEventList(i32*, i32) #1

declare dso_local i32 @xTaskResumeAll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
