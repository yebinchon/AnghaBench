; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_add_foreign_grouping_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_add_foreign_grouping_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { double, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_25__ = type { i64, i32 }

@PARTITIONWISE_AGGREGATE_NONE = common dso_local global i64 0, align 8
@PARTITIONWISE_AGGREGATE_FULL = common dso_local global i64 0, align 8
@JOIN_INNER = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_25__*)* @add_foreign_grouping_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_foreign_grouping_paths(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %8, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %9, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %10, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %11, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %138

46:                                               ; preds = %40, %35, %30, %4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PARTITIONWISE_AGGREGATE_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PARTITIONWISE_AGGREGATE_FULL, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ true, %46 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @Assert(i32 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 10
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %64, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %82 = call i32 @merge_fdw_options(%struct.TYPE_24__* %80, %struct.TYPE_24__* %81, i32* null)
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @foreign_grouping_ok(%struct.TYPE_23__* %83, %struct.TYPE_21__* %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %58
  br label %138

91:                                               ; preds = %58
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @JOIN_INNER, align 4
  %97 = call i32 @clauselist_selectivity(%struct.TYPE_23__* %92, i32 %95, i32 0, i32 %96, i32* null)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = call i32 @cost_qual_eval(i32* %101, i32 %104, %struct.TYPE_23__* %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %109 = load i32, i32* @NIL, align 4
  %110 = load i32, i32* @NIL, align 4
  %111 = call i32 @estimate_path_cost_size(%struct.TYPE_23__* %107, %struct.TYPE_21__* %108, i32 %109, i32 %110, i32* null, double* %13, i32* %14, i8** %15, i8** %16)
  %112 = load double, double* %13, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  store double %112, double* %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load double, double* %13, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = load i32, i32* @NIL, align 4
  %133 = load i32, i32* @NIL, align 4
  %134 = call i32* @create_foreign_upper_path(%struct.TYPE_23__* %124, %struct.TYPE_21__* %125, i32 %128, double %129, i8* %130, i8* %131, i32 %132, i32* null, i32 %133)
  store i32* %134, i32** %12, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @add_path(%struct.TYPE_21__* %135, i32* %136)
  br label %138

138:                                              ; preds = %91, %90, %45
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @merge_fdw_options(%struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @foreign_grouping_ok(%struct.TYPE_23__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @clauselist_selectivity(%struct.TYPE_23__*, i32, i32, i32, i32*) #1

declare dso_local i32 @cost_qual_eval(i32*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @estimate_path_cost_size(%struct.TYPE_23__*, %struct.TYPE_21__*, i32, i32, i32*, double*, i32*, i8**, i8**) #1

declare dso_local i32* @create_foreign_upper_path(%struct.TYPE_23__*, %struct.TYPE_21__*, i32, double, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @add_path(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
