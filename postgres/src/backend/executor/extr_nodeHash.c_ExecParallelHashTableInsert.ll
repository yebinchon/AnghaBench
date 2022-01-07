; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashTableInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashTableInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32 }

@PHJ_BUILD_HASHING_INNER = common dso_local global i64 0, align 8
@HJTUPLE_OVERHEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecParallelHashTableInsert(%struct.TYPE_23__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_21__* @ExecFetchSlotMinimalTuple(i32* %14, i32* %7)
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %8, align 8
  br label %16

16:                                               ; preds = %90, %41, %3
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ExecHashGetBucketAndBatch(%struct.TYPE_23__* %17, i32 %18, i32* %10, i32* %11)
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %16
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = call i64 @BarrierPhase(i32* %26)
  %28 = load i64, i64* @PHJ_BUILD_HASHING_INNER, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call %struct.TYPE_22__* @ExecParallelHashTupleAlloc(%struct.TYPE_23__* %32, i64 %37, i32* %9)
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %12, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %40 = icmp eq %struct.TYPE_22__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %16

42:                                               ; preds = %22
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %47 = call i32 @HJTUPLE_MINTUPLE(%struct.TYPE_22__* %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i32 %47, %struct.TYPE_21__* %48, i64 %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ExecParallelHashPushTuple(i32* %59, %struct.TYPE_22__* %60, i32 %61)
  br label %125

63:                                               ; preds = %16
  %64 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i64 @MAXALIGN(i64 %68)
  store i64 %69, i64* %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %63
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @ExecParallelHashTuplePrealloc(%struct.TYPE_23__* %85, i32 %86, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %16

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = icmp uge i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @Assert(i32 %103)
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %113, %105
  store i64 %114, i64* %112, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = call i32 @sts_puttuple(i32 %122, i32* %6, %struct.TYPE_21__* %123)
  br label %125

125:                                              ; preds = %92, %42
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %125
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %139 = call i32 @heap_free_minimal_tuple(%struct.TYPE_21__* %138)
  br label %140

140:                                              ; preds = %137, %125
  ret void
}

declare dso_local %struct.TYPE_21__* @ExecFetchSlotMinimalTuple(i32*, i32*) #1

declare dso_local i32 @ExecHashGetBucketAndBatch(%struct.TYPE_23__*, i32, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BarrierPhase(i32*) #1

declare dso_local %struct.TYPE_22__* @ExecParallelHashTupleAlloc(%struct.TYPE_23__*, i64, i32*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @HJTUPLE_MINTUPLE(%struct.TYPE_22__*) #1

declare dso_local i32 @ExecParallelHashPushTuple(i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @ExecParallelHashTuplePrealloc(%struct.TYPE_23__*, i32, i64) #1

declare dso_local i32 @sts_puttuple(i32, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @heap_free_minimal_tuple(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
