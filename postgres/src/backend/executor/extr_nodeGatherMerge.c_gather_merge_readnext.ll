; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeGatherMerge.c_gather_merge_readnext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeGatherMerge.c_gather_merge_readnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32**, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64, i64, i64, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @gather_merge_readnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_merge_readnext(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = call i32* @outerPlanState(%struct.TYPE_12__* %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %12, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32* [ %36, %31 ], [ null, %37 ]
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32* @ExecProcNode(i32* %42)
  store i32* %43, i32** %11, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @TupIsNull(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = load i32*, i32** %11, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  store i32* %50, i32** %54, align 8
  store i32 1, i32* %4, align 4
  br label %119

55:                                               ; preds = %38
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %15
  store i32 0, i32* %4, align 4
  br label %119

59:                                               ; preds = %3
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %65
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %8, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %59
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds i32, i32* %77, i64 %80
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  br label %106

84:                                               ; preds = %59
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %119

90:                                               ; preds = %84
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = call i32 @gm_readnext_tuple(%struct.TYPE_12__* %91, i32 %92, i32 %93, i64* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @HeapTupleIsValid(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %119

101:                                              ; preds = %90
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @load_tuple_array(%struct.TYPE_12__* %102, i32 %103)
  br label %105

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @HeapTupleIsValid(i32 %107)
  %109 = call i32 @Assert(i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @ExecStoreHeapTuple(i32 %110, i32* %117, i32 1)
  store i32 1, i32* %4, align 4
  br label %119

119:                                              ; preds = %106, %100, %89, %58, %49
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32* @outerPlanState(%struct.TYPE_12__*) #1

declare dso_local i32* @ExecProcNode(i32*) #1

declare dso_local i32 @TupIsNull(i32*) #1

declare dso_local i32 @gm_readnext_tuple(%struct.TYPE_12__*, i32, i32, i64*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @load_tuple_array(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecStoreHeapTuple(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
