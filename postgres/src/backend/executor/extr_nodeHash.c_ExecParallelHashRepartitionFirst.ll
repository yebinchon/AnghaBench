; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashRepartitionFirst.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashRepartitionFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_23__*, %struct.TYPE_22__, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i64, i32, i32, i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i64 }

@HJTUPLE_OVERHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @ExecParallelHashRepartitionFirst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecParallelHashRepartitionFirst(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %15, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  br label %24

24:                                               ; preds = %143, %1
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %26 = call %struct.TYPE_25__* @ExecParallelHashPopChunkQueue(%struct.TYPE_27__* %25, i32* %3)
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %4, align 8
  %27 = icmp ne %struct.TYPE_25__* %26, null
  br i1 %27, label %28, label %150

28:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %117, %28
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %143

35:                                               ; preds = %29
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = call i64 @HASH_CHUNK_DATA(%struct.TYPE_25__* %36)
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %37, %38
  %40 = inttoptr i64 %39 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %6, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = call %struct.TYPE_24__* @HJTUPLE_MINTUPLE(%struct.TYPE_26__* %41)
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %7, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ExecHashGetBucketAndBatch(%struct.TYPE_27__* %43, i32 %46, i32* %10, i32* %11)
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %35
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %60 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call %struct.TYPE_26__* @ExecParallelHashTupleAlloc(%struct.TYPE_27__* %59, i64 %64, i32* %9)
  store %struct.TYPE_26__* %65, %struct.TYPE_26__** %8, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %72 = call %struct.TYPE_24__* @HJTUPLE_MINTUPLE(%struct.TYPE_26__* %71)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memcpy(%struct.TYPE_24__* %72, %struct.TYPE_24__* %73, i64 %76)
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ExecParallelHashPushTuple(i32* %84, %struct.TYPE_26__* %85, i32 %86)
  br label %117

88:                                               ; preds = %35
  %89 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = call i64 @MAXALIGN(i64 %93)
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %95
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %116 = call i32 @sts_puttuple(i32 %112, i32* %114, %struct.TYPE_24__* %115)
  br label %117

117:                                              ; preds = %88, %58
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = call %struct.TYPE_24__* @HJTUPLE_MINTUPLE(%struct.TYPE_26__* %135)
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %134, %138
  %140 = call i64 @MAXALIGN(i64 %139)
  %141 = load i64, i64* %5, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %5, align 8
  br label %29

143:                                              ; preds = %29
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @dsa_free(i32 %146, i32 %147)
  %149 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %24

150:                                              ; preds = %24
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_25__* @ExecParallelHashPopChunkQueue(%struct.TYPE_27__*, i32*) #1

declare dso_local i64 @HASH_CHUNK_DATA(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @HJTUPLE_MINTUPLE(%struct.TYPE_26__*) #1

declare dso_local i32 @ExecHashGetBucketAndBatch(%struct.TYPE_27__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @ExecParallelHashTupleAlloc(%struct.TYPE_27__*, i64, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_24__*, %struct.TYPE_24__*, i64) #1

declare dso_local i32 @ExecParallelHashPushTuple(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @sts_puttuple(i32, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dsa_free(i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
