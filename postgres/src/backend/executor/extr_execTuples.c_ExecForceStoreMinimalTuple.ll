; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_ExecForceStoreMinimalTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_ExecForceStoreMinimalTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i64 }

@MINIMAL_TUPLE_OFFSET = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecForceStoreMinimalTuple(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %9 = call i64 @TTS_IS_MINIMALTUPLE(%struct.TYPE_14__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @tts_minimal_store_tuple(%struct.TYPE_14__* %12, %struct.TYPE_15__* %13, i32 %14)
  br label %53

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = call i32 @ExecClearTuple(%struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** @MINIMAL_TUPLE_OFFSET, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = bitcast %struct.TYPE_15__* %26 to i8*
  %28 = load i8*, i8** @MINIMAL_TUPLE_OFFSET, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @heap_deform_tuple(%struct.TYPE_16__* %7, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_14__* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %16
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = call i32 @ExecMaterializeSlot(%struct.TYPE_14__* %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = call i32 @pfree(%struct.TYPE_15__* %50)
  br label %52

52:                                               ; preds = %47, %16
  br label %53

53:                                               ; preds = %52, %11
  ret void
}

declare dso_local i64 @TTS_IS_MINIMALTUPLE(%struct.TYPE_14__*) #1

declare dso_local i32 @tts_minimal_store_tuple(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_14__*) #1

declare dso_local i32 @heap_deform_tuple(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_14__*) #1

declare dso_local i32 @ExecMaterializeSlot(%struct.TYPE_14__*) #1

declare dso_local i32 @pfree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
