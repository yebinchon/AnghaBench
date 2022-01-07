; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_queue.c_prvUnlockQueue.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_queue.c_prvUnlockQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32* }

@queueLOCKED_UNMODIFIED = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i64 0, align 8
@queueUNLOCKED = common dso_local global i8* null, align 8
@queueSEND_TO_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @prvUnlockQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvUnlockQueue(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = call i32 (...) @taskENTER_CRITICAL()
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @queueLOCKED_UNMODIFIED, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = call i64 @listLIST_IS_EMPTY(i32* %15)
  %17 = load i64, i64* @pdFALSE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i64 @xTaskRemoveFromEventList(i32* %21)
  %23 = load i64, i64* @pdFALSE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @vTaskMissedYield()
  br label %29

27:                                               ; preds = %19
  %28 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %29

29:                                               ; preds = %27, %25
  br label %31

30:                                               ; preds = %13
  br label %34

31:                                               ; preds = %29
  %32 = load i64, i64* %3, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %3, align 8
  br label %9

34:                                               ; preds = %30, %9
  %35 = load i8*, i8** @queueUNLOCKED, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = call i32 (...) @taskEXIT_CRITICAL()
  %40 = call i32 (...) @taskENTER_CRITICAL()
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %68, %34
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @queueLOCKED_UNMODIFIED, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = call i64 @listLIST_IS_EMPTY(i32* %50)
  %52 = load i64, i64* @pdFALSE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = call i64 @xTaskRemoveFromEventList(i32* %56)
  %58 = load i64, i64* @pdFALSE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (...) @vTaskMissedYield()
  br label %64

62:                                               ; preds = %54
  %63 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %4, align 8
  br label %68

67:                                               ; preds = %48
  br label %69

68:                                               ; preds = %64
  br label %44

69:                                               ; preds = %67, %44
  %70 = load i8*, i8** @queueUNLOCKED, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = call i32 (...) @taskEXIT_CRITICAL()
  ret void
}

declare dso_local i32 @taskENTER_CRITICAL(...) #1

declare dso_local i64 @listLIST_IS_EMPTY(i32*) #1

declare dso_local i64 @xTaskRemoveFromEventList(i32*) #1

declare dso_local i32 @vTaskMissedYield(...) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @taskEXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
