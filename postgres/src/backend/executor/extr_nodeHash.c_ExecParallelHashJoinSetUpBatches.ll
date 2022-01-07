; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashJoinSetUpBatches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecParallelHashJoinSetUpBatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i8*, i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@PHJ_BATCH_PROBING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"i%dof%d\00", align 1
@ParallelWorkerNumber = common dso_local global i64 0, align 8
@SHARED_TUPLESTORE_SINGLE_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"o%dof%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32)* @ExecParallelHashJoinSetUpBatches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecParallelHashJoinSetUpBatches(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32 @EstimateParallelHashJoinBatch(%struct.TYPE_15__* %25)
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @dsa_allocate0(i32 %24, i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_14__* @dsa_get_address(i32 %37, i32 %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %6, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 24, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @palloc0(i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_13__*
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %58, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %148, %2
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %151

65:                                               ; preds = %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %70
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %9, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.TYPE_14__* @NthParallelHashJoinBatch(%struct.TYPE_14__* %72, i32 %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %10, align 8
  %75 = load i32, i32* @MAXPGPATH, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %11, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %12, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = call i32 @BarrierInit(i32* %80, i32 0)
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %65
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = call i32 @BarrierAttach(i32* %86)
  br label %88

88:                                               ; preds = %94, %84
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = call i64 @BarrierPhase(i32* %90)
  %92 = load i64, i64* @PHJ_BATCH_PROBING, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = call i32 @BarrierArriveAndWait(i32* %96, i32 0)
  br label %88

98:                                               ; preds = %88
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = call i32 @BarrierDetach(i32* %100)
  br label %102

102:                                              ; preds = %98, %65
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %105, align 8
  %106 = trunc i64 %76 to i32
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @snprintf(i8* %78, i32 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = call i32 @ParallelHashJoinBatchInner(%struct.TYPE_14__* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @ParallelWorkerNumber, align 8
  %118 = add nsw i64 %117, 1
  %119 = load i32, i32* @SHARED_TUPLESTORE_SINGLE_PASS, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = call i8* @sts_initialize(i32 %113, i32 %116, i64 %118, i32 4, i32 %119, i32* %121, i8* %78)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = trunc i64 %76 to i32
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @snprintf(i8* %78, i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ParallelHashJoinBatchOuter(%struct.TYPE_14__* %131, i32 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* @ParallelWorkerNumber, align 8
  %140 = add nsw i64 %139, 1
  %141 = load i32, i32* @SHARED_TUPLESTORE_SINGLE_PASS, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = call i8* @sts_initialize(i32 %135, i32 %138, i64 %140, i32 4, i32 %141, i32* %143, i8* %78)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %147)
  br label %148

148:                                              ; preds = %102
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %59

151:                                              ; preds = %59
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @MemoryContextSwitchTo(i32 %152)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @dsa_allocate0(i32, i32) #1

declare dso_local i32 @EstimateParallelHashJoinBatch(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @dsa_get_address(i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local %struct.TYPE_14__* @NthParallelHashJoinBatch(%struct.TYPE_14__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BarrierInit(i32*, i32) #1

declare dso_local i32 @BarrierAttach(i32*) #1

declare dso_local i64 @BarrierPhase(i32*) #1

declare dso_local i32 @BarrierArriveAndWait(i32*, i32) #1

declare dso_local i32 @BarrierDetach(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @sts_initialize(i32, i32, i64, i32, i32, i32*, i8*) #1

declare dso_local i32 @ParallelHashJoinBatchInner(%struct.TYPE_14__*) #1

declare dso_local i32 @ParallelHashJoinBatchOuter(%struct.TYPE_14__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
