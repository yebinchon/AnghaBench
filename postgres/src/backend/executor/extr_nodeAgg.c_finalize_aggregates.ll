; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_finalize_aggregates.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_finalize_aggregates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i32, i32, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i32 }

@AGG_HASHED = common dso_local global i64 0, align 8
@AGG_MIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*, i32*)* @finalize_aggregates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize_aggregates(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %7, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %81, %3
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %28
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i64 %39
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %12, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %13, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %34
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AGG_HASHED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AGG_MIXED, align 8
  %60 = icmp ne i64 %58, %59
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi i1 [ false, %49 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @process_ordered_aggregate_single(%struct.TYPE_22__* %70, %struct.TYPE_20__* %71, i32* %72)
  br label %79

74:                                               ; preds = %61
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @process_ordered_aggregate_multi(%struct.TYPE_22__* %75, %struct.TYPE_20__* %76, i32* %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %34
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %28

84:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %135, %84
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %138

91:                                               ; preds = %85
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i64 %94
  store %struct.TYPE_21__* %95, %struct.TYPE_21__** %14, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %15, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32* %102, i32** %16, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @DO_AGGSPLIT_SKIPFINAL(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %91
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @finalize_partialaggregate(%struct.TYPE_22__* %109, %struct.TYPE_21__* %110, i32* %111, i32* %115, i32* %119)
  br label %134

121:                                              ; preds = %91
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = call i32 @finalize_aggregate(%struct.TYPE_22__* %122, %struct.TYPE_21__* %123, i32* %124, i32* %128, i32* %132)
  br label %134

134:                                              ; preds = %121, %108
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %85

138:                                              ; preds = %85
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @process_ordered_aggregate_single(%struct.TYPE_22__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @process_ordered_aggregate_multi(%struct.TYPE_22__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @DO_AGGSPLIT_SKIPFINAL(i32) #1

declare dso_local i32 @finalize_partialaggregate(%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32*, i32*) #1

declare dso_local i32 @finalize_aggregate(%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
