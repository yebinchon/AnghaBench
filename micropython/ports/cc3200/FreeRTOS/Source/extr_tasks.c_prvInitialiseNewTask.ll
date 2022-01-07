; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_prvInitialiseNewTask.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_tasks.c_prvInitialiseNewTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i64, i8*, i8*, i32, i32, i64, i32**, i32*, i32, i32*, i32, i32, i64, i32* }

@portBYTE_ALIGNMENT_MASK = common dso_local global i64 0, align 8
@configMAX_TASK_NAME_LEN = common dso_local global i32 0, align 4
@configMAX_PRIORITIES = common dso_local global i64 0, align 8
@configNUM_THREAD_LOCAL_STORAGE_POINTERS = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i8* null, align 8
@pdTRUE = common dso_local global i8* null, align 8
@portPRIVILEGE_BIT = common dso_local global i32 0, align 4
@taskNOT_WAITING_NOTIFICATION = common dso_local global i32 0, align 4
@tskSTACK_FILL_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*, i32, i64*, %struct.TYPE_4__*, i32*)* @prvInitialiseNewTask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvInitialiseNewTask(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i64* %5, %struct.TYPE_4__* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %17, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 11
  %24 = load i32*, i32** %23, align 8
  %25 = ptrtoint i32* %24 to i64
  %26 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %27 = and i64 %25, %26
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @configASSERT(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 11
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 17
  store i32* %37, i32** %39, align 8
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %67, %8
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @configMAX_TASK_NAME_LEN, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %18, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %18, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %49, i8* %55, align 1
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %18, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %70

64:                                               ; preds = %44
  %65 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %18, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %40

70:                                               ; preds = %63, %40
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @configMAX_TASK_NAME_LEN, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i32, i32* %13, align 4
  %79 = load i64, i64* @configMAX_PRIORITIES, align 8
  %80 = trunc i64 %79 to i32
  %81 = icmp uge i32 %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load i64, i64* @configMAX_PRIORITIES, align 8
  %84 = trunc i64 %83 to i32
  %85 = sub i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %88

86:                                               ; preds = %70
  %87 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 15
  %94 = call i32 @vListInitialiseItem(i32* %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 14
  %97 = call i32 @vListInitialiseItem(i32* %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 15
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %101 = call i32 @listSET_LIST_ITEM_OWNER(i32* %99, %struct.TYPE_4__* %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 14
  %104 = load i64, i64* @configMAX_PRIORITIES, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = sub nsw i64 %104, %106
  %108 = call i32 @listSET_LIST_ITEM_VALUE(i32* %103, i64 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 14
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %112 = call i32 @listSET_LIST_ITEM_OWNER(i32* %110, %struct.TYPE_4__* %111)
  %113 = load i32*, i32** %16, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = call i8* (i32*, i32, i8*, ...) @pxPortInitialiseStack(i32* %114, i32 %115, i8* %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i64*, i64** %14, align 8
  %121 = bitcast i64* %120 to i8*
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %88
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %125 = ptrtoint %struct.TYPE_4__* %124 to i64
  %126 = load i64*, i64** %14, align 8
  store i64 %125, i64* %126, align 8
  br label %129

127:                                              ; preds = %88
  %128 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %129

129:                                              ; preds = %127, %123
  ret void
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @vListInitialiseItem(i32*) #1

declare dso_local i32 @listSET_LIST_ITEM_OWNER(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @listSET_LIST_ITEM_VALUE(i32*, i64) #1

declare dso_local i8* @pxPortInitialiseStack(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
