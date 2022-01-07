; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashTableInsertCurrentBatch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashTableInsertCurrentBatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@HJTUPLE_OVERHEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecParallelHashTableInsertCurrentBatch(%struct.TYPE_17__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_15__* @ExecFetchSlotMinimalTuple(i32* %13, i32* %7)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ExecHashGetBucketAndBatch(%struct.TYPE_17__* %15, i32 %16, i32* %12, i32* %11)
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call %struct.TYPE_16__* @ExecParallelHashTupleAlloc(%struct.TYPE_17__* %25, i64 %30, i32* %10)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = call i32 @HJTUPLE_MINTUPLE(%struct.TYPE_16__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcpy(i32 %36, %struct.TYPE_15__* %37, i64 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = call i32 @HJTUPLE_MINTUPLE(%struct.TYPE_16__* %42)
  %44 = call i32 @HeapTupleHeaderClearMatch(i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ExecParallelHashPushTuple(i32* %51, %struct.TYPE_16__* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %3
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = call i32 @heap_free_minimal_tuple(%struct.TYPE_15__* %58)
  br label %60

60:                                               ; preds = %57, %3
  ret void
}

declare dso_local %struct.TYPE_15__* @ExecFetchSlotMinimalTuple(i32*, i32*) #1

declare dso_local i32 @ExecHashGetBucketAndBatch(%struct.TYPE_17__*, i32, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_16__* @ExecParallelHashTupleAlloc(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @HJTUPLE_MINTUPLE(%struct.TYPE_16__*) #1

declare dso_local i32 @HeapTupleHeaderClearMatch(i32) #1

declare dso_local i32 @ExecParallelHashPushTuple(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @heap_free_minimal_tuple(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
