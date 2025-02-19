; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/MemMang/extr_heap_4.c_pvPortMalloc.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/MemMang/extr_heap_4.c_pvPortMalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@pxEnd = common dso_local global %struct.TYPE_5__* null, align 8
@xBlockAllocatedBit = common dso_local global i64 0, align 8
@xHeapStructSize = common dso_local global i32 0, align 4
@portBYTE_ALIGNMENT_MASK = common dso_local global i64 0, align 8
@portBYTE_ALIGNMENT = common dso_local global i64 0, align 8
@xFreeBytesRemaining = common dso_local global i64 0, align 8
@xStart = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@heapMINIMUM_BLOCK_SIZE = common dso_local global i64 0, align 8
@xMinimumEverFreeBytesRemaining = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pvPortMalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %6, align 8
  %7 = call i32 (...) @vTaskSuspendAll()
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pxEnd, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @prvHeapInit()
  br label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @xBlockAllocatedBit, align 8
  %17 = and i64 %15, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %157

19:                                               ; preds = %14
  %20 = load i64, i64* %2, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32, i32* @xHeapStructSize, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = load i64, i64* @portBYTE_ALIGNMENT, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %35 = and i64 %33, %34
  %36 = sub i64 %32, %35
  %37 = load i64, i64* %2, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %41 = and i64 %39, %40
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @configASSERT(i32 %43)
  br label %47

45:                                               ; preds = %22
  %46 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %47

47:                                               ; preds = %45, %31
  br label %50

48:                                               ; preds = %19
  %49 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i64, i64* %2, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %154

53:                                               ; preds = %50
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @xFreeBytesRemaining, align 8
  %56 = icmp ule i64 %54, %55
  br i1 %56, label %57, label %154

57:                                               ; preds = %53
  store %struct.TYPE_5__* @xStart, %struct.TYPE_5__** %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xStart, i32 0, i32 1), align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %3, align 8
  br label %59

59:                                               ; preds = %72, %57
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %2, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br label %70

70:                                               ; preds = %65, %59
  %71 = phi i1 [ false, %59 ], [ %69, %65 ]
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %4, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %3, align 8
  br label %59

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pxEnd, align 8
  %80 = icmp ne %struct.TYPE_5__* %78, %79
  br i1 %80, label %81, label %151

81:                                               ; preds = %77
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = bitcast %struct.TYPE_5__* %84 to i32*
  %86 = load i32, i32* @xHeapStructSize, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = bitcast i32* %88 to i8*
  store i8* %89, i8** %6, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %2, align 8
  %99 = sub i64 %97, %98
  %100 = load i64, i64* @heapMINIMUM_BLOCK_SIZE, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %81
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = bitcast %struct.TYPE_5__* %103 to i32*
  %105 = load i64, i64* %2, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = bitcast i32* %106 to i8*
  %108 = bitcast i8* %107 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %5, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = ptrtoint %struct.TYPE_5__* %109 to i64
  %111 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %112 = and i64 %110, %111
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @configASSERT(i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %2, align 8
  %120 = sub i64 %118, %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %2, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = call i32 @prvInsertBlockIntoFreeList(%struct.TYPE_5__* %126)
  br label %130

128:                                              ; preds = %81
  %129 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %130

130:                                              ; preds = %128, %102
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @xFreeBytesRemaining, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* @xFreeBytesRemaining, align 8
  %136 = load i64, i64* @xFreeBytesRemaining, align 8
  %137 = load i64, i64* @xMinimumEverFreeBytesRemaining, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i64, i64* @xFreeBytesRemaining, align 8
  store i64 %140, i64* @xMinimumEverFreeBytesRemaining, align 8
  br label %143

141:                                              ; preds = %130
  %142 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %143

143:                                              ; preds = %141, %139
  %144 = load i64, i64* @xBlockAllocatedBit, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %150, align 8
  br label %153

151:                                              ; preds = %77
  %152 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %153

153:                                              ; preds = %151, %143
  br label %156

154:                                              ; preds = %53, %50
  %155 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %156

156:                                              ; preds = %154, %153
  br label %159

157:                                              ; preds = %14
  %158 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %159

159:                                              ; preds = %157, %156
  %160 = load i8*, i8** %6, align 8
  %161 = load i64, i64* %2, align 8
  %162 = call i32 @traceMALLOC(i8* %160, i64 %161)
  %163 = call i32 (...) @xTaskResumeAll()
  %164 = load i8*, i8** %6, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %167 = and i64 %165, %166
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @configASSERT(i32 %169)
  %171 = load i8*, i8** %6, align 8
  ret i8* %171
}

declare dso_local i32 @vTaskSuspendAll(...) #1

declare dso_local i32 @prvHeapInit(...) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @prvInsertBlockIntoFreeList(%struct.TYPE_5__*) #1

declare dso_local i32 @traceMALLOC(i8*, i64) #1

declare dso_local i32 @xTaskResumeAll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
