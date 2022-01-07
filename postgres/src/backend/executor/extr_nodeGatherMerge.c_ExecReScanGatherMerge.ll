; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeGatherMerge.c_ExecReScanGatherMerge.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeGatherMerge.c_ExecReScanGatherMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecReScanGatherMerge(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call %struct.TYPE_12__* @outerPlanState(%struct.TYPE_13__* %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = call i32 @ExecShutdownGatherMergeWorkers(%struct.TYPE_13__* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = call i32 @gather_merge_clear_tuples(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32* @bms_add_member(i32* %27, i64 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @ExecReScan(%struct.TYPE_12__* %40)
  br label %42

42:                                               ; preds = %39, %34
  ret void
}

declare dso_local %struct.TYPE_12__* @outerPlanState(%struct.TYPE_13__*) #1

declare dso_local i32 @ExecShutdownGatherMergeWorkers(%struct.TYPE_13__*) #1

declare dso_local i32 @gather_merge_clear_tuples(%struct.TYPE_13__*) #1

declare dso_local i32* @bms_add_member(i32*, i64) #1

declare dso_local i32 @ExecReScan(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
