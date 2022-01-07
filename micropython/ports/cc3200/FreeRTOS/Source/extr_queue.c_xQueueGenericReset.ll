; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_queue.c_xQueueGenericReset.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_queue.c_xQueueGenericReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i8*, i8*, i64, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@queueUNLOCKED = common dso_local global i8* null, align 8
@pdFALSE = common dso_local global i64 0, align 8
@pdPASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xQueueGenericReset(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = call i32 @configASSERT(%struct.TYPE_5__* %8)
  %10 = call i32 (...) @taskENTER_CRITICAL()
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %13, %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 10
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 9
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %34, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load i8*, i8** @queueUNLOCKED, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @queueUNLOCKED, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @pdFALSE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = call i64 @listLIST_IS_EMPTY(i32* %59)
  %61 = load i64, i64* @pdFALSE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = call i64 @xTaskRemoveFromEventList(i32* %65)
  %67 = load i64, i64* @pdFALSE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (...) @queueYIELD_IF_USING_PREEMPTION()
  br label %73

71:                                               ; preds = %63
  %72 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %73

73:                                               ; preds = %71, %69
  br label %76

74:                                               ; preds = %57
  %75 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %76

76:                                               ; preds = %74, %73
  br label %84

77:                                               ; preds = %2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = call i32 @vListInitialise(i32* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = call i32 @vListInitialise(i32* %82)
  br label %84

84:                                               ; preds = %77, %76
  %85 = call i32 (...) @taskEXIT_CRITICAL()
  %86 = load i64, i64* @pdPASS, align 8
  ret i64 %86
}

declare dso_local i32 @configASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @taskENTER_CRITICAL(...) #1

declare dso_local i64 @listLIST_IS_EMPTY(i32*) #1

declare dso_local i64 @xTaskRemoveFromEventList(i32*) #1

declare dso_local i32 @queueYIELD_IF_USING_PREEMPTION(...) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @vListInitialise(i32*) #1

declare dso_local i32 @taskEXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
