; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/MemMang/extr_heap_4.c_prvInsertBlockIntoFreeList.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/MemMang/extr_heap_4.c_prvInsertBlockIntoFreeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@xStart = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@pxEnd = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @prvInsertBlockIntoFreeList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvInsertBlockIntoFreeList(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* @xStart, %struct.TYPE_5__** %3, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = icmp ult %struct.TYPE_5__* %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  br label %5

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = bitcast %struct.TYPE_5__* %17 to i32*
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = bitcast %struct.TYPE_5__* %25 to i32*
  %27 = icmp eq i32* %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %2, align 8
  br label %39

37:                                               ; preds = %16
  %38 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %39

39:                                               ; preds = %37, %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = bitcast %struct.TYPE_5__* %40 to i32*
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = bitcast %struct.TYPE_5__* %50 to i32*
  %52 = icmp eq i32* %47, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %39
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pxEnd, align 8
  %58 = icmp ne %struct.TYPE_5__* %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %75, align 8
  br label %80

76:                                               ; preds = %53
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pxEnd, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %79, align 8
  br label %80

80:                                               ; preds = %76, %59
  br label %87

81:                                               ; preds = %39
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %86, align 8
  br label %87

87:                                               ; preds = %81, %80
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = icmp ne %struct.TYPE_5__* %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %94, align 8
  br label %97

95:                                               ; preds = %87
  %96 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %97

97:                                               ; preds = %95, %91
  ret void
}

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
