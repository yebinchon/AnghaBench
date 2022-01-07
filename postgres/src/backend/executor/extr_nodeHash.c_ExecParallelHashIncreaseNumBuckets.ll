; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashIncreaseNumBuckets.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashIncreaseNumBuckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_19__*, i32, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i64 }

@PHJ_BUILD_HASHING_INNER = common dso_local global i64 0, align 8
@WAIT_EVENT_HASH_GROW_BUCKETS_ELECTING = common dso_local global i32 0, align 4
@InvalidDsaPointer = common dso_local global i32 0, align 4
@PHJ_GROWTH_OK = common dso_local global i32 0, align 4
@WAIT_EVENT_HASH_GROW_BUCKETS_ALLOCATING = common dso_local global i32 0, align 4
@HASH_CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@HJTUPLE_OVERHEAD = common dso_local global i64 0, align 8
@WAIT_EVENT_HASH_GROW_BUCKETS_REINSERTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @ExecParallelHashIncreaseNumBuckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecParallelHashIncreaseNumBuckets(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %3, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  %19 = call i64 @BarrierPhase(i32* %18)
  %20 = load i64, i64* @PHJ_BUILD_HASHING_INNER, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = call i64 @BarrierPhase(i32* %25)
  %27 = call i32 @PHJ_GROW_BUCKETS_PHASE(i64 %26)
  switch i32 %27, label %191 [
    i32 129, label %28
    i32 130, label %123
    i32 128, label %128
  ]

28:                                               ; preds = %1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load i32, i32* @WAIT_EVENT_HASH_GROW_BUCKETS_ELECTING, align 4
  %32 = call i32 @BarrierArriveAndWait(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %122

34:                                               ; preds = %28
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = udiv i64 %44, 2
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %45
  store i64 %54, i64* %52, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dsa_free(i32 %57, i32 %65)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @dsa_allocate(i32 %69, i64 %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  store i32 %71, i32* %78, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @dsa_get_address(i32 %81, i32 %89)
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %105, %34
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* @InvalidDsaPointer, align 4
  %104 = call i32 @dsa_pointer_atomic_init(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @PHJ_GROWTH_OK, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %108, %28
  br label %123

123:                                              ; preds = %1, %122
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = load i32, i32* @WAIT_EVENT_HASH_GROW_BUCKETS_ALLOCATING, align 4
  %127 = call i32 @BarrierArriveAndWait(i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %1, %123
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %130 = call i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_24__* %129)
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %132 = call i32 @ExecParallelHashTableSetCurrentBatch(%struct.TYPE_24__* %131, i32 0)
  br label %133

133:                                              ; preds = %184, %128
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %135 = call %struct.TYPE_22__* @ExecParallelHashPopChunkQueue(%struct.TYPE_24__* %134, i64* %6)
  store %struct.TYPE_22__* %135, %struct.TYPE_22__** %5, align 8
  %136 = icmp ne %struct.TYPE_22__* %135, null
  br i1 %136, label %137, label %186

137:                                              ; preds = %133
  store i64 0, i64* %9, align 8
  br label %138

138:                                              ; preds = %144, %137
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %139, %142
  br i1 %143, label %144, label %184

144:                                              ; preds = %138
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %146 = call i32 @HASH_CHUNK_DATA(%struct.TYPE_22__* %145)
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %147, %148
  %150 = inttoptr i64 %149 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %150, %struct.TYPE_23__** %10, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* @HASH_CHUNK_HEADER_SIZE, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i64, i64* %9, align 8
  %155 = add i64 %153, %154
  store i64 %155, i64* %11, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ExecHashGetBucketAndBatch(%struct.TYPE_24__* %156, i32 %159, i32* %12, i32* %13)
  %161 = load i32, i32* %13, align 4
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @Assert(i32 %163)
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %173 = load i64, i64* %11, align 8
  %174 = call i32 @ExecParallelHashPushTuple(i32* %171, %struct.TYPE_23__* %172, i64 %173)
  %175 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %177 = call %struct.TYPE_25__* @HJTUPLE_MINTUPLE(%struct.TYPE_23__* %176)
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %175, %179
  %181 = call i64 @MAXALIGN(i64 %180)
  %182 = load i64, i64* %9, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %9, align 8
  br label %138

184:                                              ; preds = %138
  %185 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %133

186:                                              ; preds = %133
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i32, i32* @WAIT_EVENT_HASH_GROW_BUCKETS_REINSERTING, align 4
  %190 = call i32 @BarrierArriveAndWait(i32* %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %1
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BarrierPhase(i32*) #1

declare dso_local i32 @PHJ_GROW_BUCKETS_PHASE(i64) #1

declare dso_local i32 @BarrierArriveAndWait(i32*, i32) #1

declare dso_local i32 @dsa_free(i32, i32) #1

declare dso_local i32 @dsa_allocate(i32, i64) #1

declare dso_local i64 @dsa_get_address(i32, i32) #1

declare dso_local i32 @dsa_pointer_atomic_init(i32*, i32) #1

declare dso_local i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_24__*) #1

declare dso_local i32 @ExecParallelHashTableSetCurrentBatch(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_22__* @ExecParallelHashPopChunkQueue(%struct.TYPE_24__*, i64*) #1

declare dso_local i32 @HASH_CHUNK_DATA(%struct.TYPE_22__*) #1

declare dso_local i32 @ExecHashGetBucketAndBatch(%struct.TYPE_24__*, i32, i32*, i32*) #1

declare dso_local i32 @ExecParallelHashPushTuple(i32*, %struct.TYPE_23__*, i64) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local %struct.TYPE_25__* @HJTUPLE_MINTUPLE(%struct.TYPE_23__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
