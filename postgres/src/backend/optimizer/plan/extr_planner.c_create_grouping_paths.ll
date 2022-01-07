; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_create_grouping_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_create_grouping_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }

@NIL = common dso_local global i64 0, align 8
@GROUPING_CAN_USE_SORT = common dso_local global i32 0, align 4
@GROUPING_CAN_USE_HASH = common dso_local global i32 0, align 4
@GROUPING_CAN_PARTIAL_AGG = common dso_local global i32 0, align 4
@enable_partitionwise_aggregate = common dso_local global i64 0, align 8
@PARTITIONWISE_AGGREGATE_FULL = common dso_local global i32 0, align 4
@PARTITIONWISE_AGGREGATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*, i32*, i32*, i32, %struct.TYPE_22__*, %struct.TYPE_18__*)* @create_grouping_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_grouping_paths(%struct.TYPE_20__* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_22__* %4, %struct.TYPE_18__* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %12, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %13, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @make_grouping_rel(%struct.TYPE_20__* %21, i32* %22, i32* %23, i32 %24, i32 %27)
  store i32* %28, i32** %14, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = call i64 @is_degenerate_grouping(%struct.TYPE_20__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %6
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @create_degenerate_grouping_paths(%struct.TYPE_20__* %33, i32* %34, i32* %35)
  br label %128

37:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %39 = icmp ne %struct.TYPE_18__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NIL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @grouping_is_sortable(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @GROUPING_CAN_USE_SORT, align 4
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NIL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %69 = icmp ne %struct.TYPE_18__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %85

75:                                               ; preds = %67
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @grouping_is_hashable(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75, %70
  %82 = load i32, i32* @GROUPING_CAN_USE_HASH, align 4
  %83 = load i32, i32* %16, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %81, %75, %70, %62, %56
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %88 = call i64 @can_partial_agg(%struct.TYPE_20__* %86, %struct.TYPE_22__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @GROUPING_CAN_PARTIAL_AGG, align 4
  %92 = load i32, i32* %16, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %16, align 4
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 5
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load i64, i64* @enable_partitionwise_aggregate, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %94
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @PARTITIONWISE_AGGREGATE_FULL, align 4
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  br label %121

118:                                              ; preds = %110, %94
  %119 = load i32, i32* @PARTITIONWISE_AGGREGATE_NONE, align 4
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %127 = call i32 @create_ordinary_grouping_paths(%struct.TYPE_20__* %122, i32* %123, i32* %124, %struct.TYPE_22__* %125, %struct.TYPE_18__* %126, %struct.TYPE_21__* %17, i32** %15)
  br label %128

128:                                              ; preds = %121, %32
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @set_cheapest(i32* %129)
  %131 = load i32*, i32** %14, align 8
  ret i32* %131
}

declare dso_local i32* @make_grouping_rel(%struct.TYPE_20__*, i32*, i32*, i32, i32) #1

declare dso_local i64 @is_degenerate_grouping(%struct.TYPE_20__*) #1

declare dso_local i32 @create_degenerate_grouping_paths(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i64 @grouping_is_sortable(i64) #1

declare dso_local i64 @grouping_is_hashable(i64) #1

declare dso_local i64 @can_partial_agg(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @create_ordinary_grouping_paths(%struct.TYPE_20__*, i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_21__*, i32**) #1

declare dso_local i32 @set_cheapest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
