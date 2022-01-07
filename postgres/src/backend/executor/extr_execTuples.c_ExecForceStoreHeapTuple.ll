; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_ExecForceStoreHeapTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_ExecForceStoreHeapTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@TTS_FLAG_EMPTY = common dso_local global i32 0, align 4
@TTS_FLAG_SHOULDFREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecForceStoreHeapTuple(i32 %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = call i64 @TTS_IS_HEAPTUPLE(%struct.TYPE_12__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ExecStoreHeapTuple(i32 %13, %struct.TYPE_12__* %14, i32 %15)
  br label %79

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i64 @TTS_IS_BUFFERTUPLE(%struct.TYPE_12__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = bitcast %struct.TYPE_12__* %22 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %8, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call i32 @ExecClearTuple(%struct.TYPE_12__* %24)
  %26 = load i32, i32* @TTS_FLAG_EMPTY, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MemoryContextSwitchTo(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @heap_copytuple(i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @TTS_FLAG_SHOULDFREE, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %21
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @pfree(i32 %51)
  br label %53

53:                                               ; preds = %50, %21
  br label %78

54:                                               ; preds = %17
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = call i32 @ExecClearTuple(%struct.TYPE_12__* %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @heap_deform_tuple(i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_12__* %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = call i32 @ExecMaterializeSlot(%struct.TYPE_12__* %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @pfree(i32 %75)
  br label %77

77:                                               ; preds = %72, %54
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %12
  ret void
}

declare dso_local i64 @TTS_IS_HEAPTUPLE(%struct.TYPE_12__*) #1

declare dso_local i32 @ExecStoreHeapTuple(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @TTS_IS_BUFFERTUPLE(%struct.TYPE_12__*) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_12__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @heap_copytuple(i32) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @heap_deform_tuple(i32, i32, i32, i32) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_12__*) #1

declare dso_local i32 @ExecMaterializeSlot(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
