; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_tts_buffer_heap_copyslot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_tts_buffer_heap_copyslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@TTS_FLAG_EMPTY = common dso_local global i32 0, align 4
@TTS_FLAG_SHOULDFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*)* @tts_buffer_heap_copyslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tts_buffer_heap_copyslot(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = bitcast %struct.TYPE_11__* %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = bitcast %struct.TYPE_11__* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i64 @TTS_SHOULDFREE(%struct.TYPE_11__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %23, %19, %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i32 @ExecClearTuple(%struct.TYPE_11__* %30)
  %32 = load i32, i32* @TTS_FLAG_EMPTY, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MemoryContextSwitchTo(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = call i32* @ExecCopySlotHeapTuple(%struct.TYPE_11__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32* %43, i32** %46, align 8
  %47 = load i32, i32* @TTS_FLAG_SHOULDFREE, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @MemoryContextSwitchTo(i32 %52)
  br label %83

54:                                               ; preds = %23
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @BufferIsValid(i32 %57)
  %59 = call i32 @Assert(i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @tts_buffer_heap_store_tuple(%struct.TYPE_11__* %60, i32* %64, i32 %67, i32 0)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @memcpy(i32* %71, i32* %75, i32 4)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i32* %79, i32** %82, align 8
  br label %83

83:                                               ; preds = %54, %29
  ret void
}

declare dso_local i64 @TTS_SHOULDFREE(%struct.TYPE_11__*) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_11__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @ExecCopySlotHeapTuple(%struct.TYPE_11__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @tts_buffer_heap_store_tuple(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
