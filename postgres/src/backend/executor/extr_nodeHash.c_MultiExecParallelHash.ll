; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_MultiExecParallelHash.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_MultiExecParallelHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, i32*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }

@WAIT_EVENT_HASH_BUILD_ALLOCATING = common dso_local global i32 0, align 4
@PHJ_GROW_BATCHES_ELECTING = common dso_local global i32 0, align 4
@PHJ_GROW_BUCKETS_ELECTING = common dso_local global i32 0, align 4
@WAIT_EVENT_HASH_BUILD_HASHING_INNER = common dso_local global i32 0, align 4
@PHJ_GROWTH_DISABLED = common dso_local global i32 0, align 4
@PHJ_BUILD_HASHING_OUTER = common dso_local global i32 0, align 4
@PHJ_BUILD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @MultiExecParallelHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MultiExecParallelHash(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = call i32* @outerPlanState(%struct.TYPE_20__* %12)
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %6, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %8, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %3, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 5
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @BarrierPhase(i32* %29)
  %31 = icmp sge i32 %30, 129
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @BarrierPhase(i32* %34)
  switch i32 %35, label %132 [
    i32 129, label %36
    i32 128, label %40
  ]

36:                                               ; preds = %1
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @WAIT_EVENT_HASH_BUILD_ALLOCATING, align 4
  %39 = call i32 @BarrierArriveAndWait(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %1, %36
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 3
  %43 = call i32 @BarrierAttach(i32* %42)
  %44 = call i32 @PHJ_GROW_BATCHES_PHASE(i32 %43)
  %45 = load i32, i32* @PHJ_GROW_BATCHES_ELECTING, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = call i32 @ExecParallelHashIncreaseNumBatches(%struct.TYPE_21__* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 4
  %53 = call i32 @BarrierAttach(i32* %52)
  %54 = call i32 @PHJ_GROW_BUCKETS_PHASE(i32 %53)
  %55 = load i32, i32* @PHJ_GROW_BUCKETS_ELECTING, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = call i32 @ExecParallelHashIncreaseNumBuckets(%struct.TYPE_21__* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = call i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_21__* %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = call i32 @ExecParallelHashTableSetCurrentBatch(%struct.TYPE_21__* %63, i32 0)
  br label %65

65:                                               ; preds = %89, %60
  %66 = load i32*, i32** %4, align 8
  %67 = call i32* @ExecProcNode(i32* %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @TupIsNull(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %94

72:                                               ; preds = %65
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ExecHashGetHashValue(%struct.TYPE_21__* %76, %struct.TYPE_22__* %77, i32* %78, i32 0, i32 %81, i32* %9)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @ExecParallelHashTableInsert(%struct.TYPE_21__* %85, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %72
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %65

94:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %111, %94
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @sts_end_write(i32 %109)
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %95

114:                                              ; preds = %95
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = call i32 @ExecParallelHashMergeCounters(%struct.TYPE_21__* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 4
  %119 = call i32 @BarrierDetach(i32* %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 3
  %122 = call i32 @BarrierDetach(i32* %121)
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* @WAIT_EVENT_HASH_BUILD_HASHING_INNER, align 4
  %125 = call i32 @BarrierArriveAndWait(i32* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %114
  %128 = load i32, i32* @PHJ_GROWTH_DISABLED, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %114
  br label %132

132:                                              ; preds = %131, %1
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @my_log2(i32 %142)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = call i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_21__* %151)
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @BarrierPhase(i32* %153)
  %155 = load i32, i32* @PHJ_BUILD_HASHING_OUTER, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %162, label %157

157:                                              ; preds = %132
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @BarrierPhase(i32* %158)
  %160 = load i32, i32* @PHJ_BUILD_DONE, align 4
  %161 = icmp eq i32 %159, %160
  br label %162

162:                                              ; preds = %157, %132
  %163 = phi i1 [ true, %132 ], [ %161, %157 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @Assert(i32 %164)
  ret void
}

declare dso_local i32* @outerPlanState(%struct.TYPE_20__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BarrierPhase(i32*) #1

declare dso_local i32 @BarrierArriveAndWait(i32*, i32) #1

declare dso_local i32 @PHJ_GROW_BATCHES_PHASE(i32) #1

declare dso_local i32 @BarrierAttach(i32*) #1

declare dso_local i32 @ExecParallelHashIncreaseNumBatches(%struct.TYPE_21__*) #1

declare dso_local i32 @PHJ_GROW_BUCKETS_PHASE(i32) #1

declare dso_local i32 @ExecParallelHashIncreaseNumBuckets(%struct.TYPE_21__*) #1

declare dso_local i32 @ExecParallelHashEnsureBatchAccessors(%struct.TYPE_21__*) #1

declare dso_local i32 @ExecParallelHashTableSetCurrentBatch(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @ExecProcNode(i32*) #1

declare dso_local i32 @TupIsNull(i32*) #1

declare dso_local i32 @ExecHashGetHashValue(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ExecParallelHashTableInsert(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @sts_end_write(i32) #1

declare dso_local i32 @ExecParallelHashMergeCounters(%struct.TYPE_21__*) #1

declare dso_local i32 @BarrierDetach(i32*) #1

declare dso_local i32 @my_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
