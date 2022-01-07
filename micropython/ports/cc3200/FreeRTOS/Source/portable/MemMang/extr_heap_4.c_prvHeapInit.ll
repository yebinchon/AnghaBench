; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/MemMang/extr_heap_4.c_prvHeapInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/MemMang/extr_heap_4.c_prvHeapInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__* }

@configTOTAL_HEAP_SIZE = common dso_local global i64 0, align 8
@ucHeap = common dso_local global i64 0, align 8
@portBYTE_ALIGNMENT_MASK = common dso_local global i64 0, align 8
@portBYTE_ALIGNMENT = common dso_local global i32 0, align 4
@xStart = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@xHeapStructSize = common dso_local global i64 0, align 8
@pxEnd = common dso_local global %struct.TYPE_6__* null, align 8
@xMinimumEverFreeBytesRemaining = common dso_local global i64 0, align 8
@xFreeBytesRemaining = common dso_local global i64 0, align 8
@heapBITS_PER_BYTE = common dso_local global i32 0, align 4
@xBlockAllocatedBit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prvHeapInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvHeapInit() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @configTOTAL_HEAP_SIZE, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* @ucHeap, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %0
  %12 = load i32, i32* @portBYTE_ALIGNMENT, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ucHeap, align 8
  %23 = sub i64 %21, %22
  %24 = load i64, i64* %4, align 8
  %25 = sub i64 %24, %23
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %11, %0
  %27 = load i64, i64* %3, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xStart, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xStart, i32 0, i32 0), align 8
  %31 = load i32*, i32** %2, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* @xHeapStructSize, align 8
  %36 = load i64, i64* %3, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %3, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** @pxEnd, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pxEnd, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pxEnd, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = bitcast i8* %50 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %1, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %54 = ptrtoint %struct.TYPE_4__* %53 to i64
  %55 = sub i64 %52, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pxEnd, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* @xMinimumEverFreeBytesRemaining, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* @xFreeBytesRemaining, align 8
  %67 = load i32, i32* @heapBITS_PER_BYTE, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 8, %68
  %70 = sub i64 %69, 1
  %71 = shl i64 1, %70
  store i64 %71, i64* @xBlockAllocatedBit, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
