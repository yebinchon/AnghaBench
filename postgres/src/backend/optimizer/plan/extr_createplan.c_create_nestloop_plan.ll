; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_nestloop_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_nestloop_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_24__*, %struct.TYPE_25__*)* @create_nestloop_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @create_nestloop_plan(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = call i32* @build_path_tlist(%struct.TYPE_24__* %15, %struct.TYPE_20__* %17)
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = call i32* @create_plan_recurse(%struct.TYPE_24__* %25, %struct.TYPE_19__* %28, i32 0)
  store i32* %29, i32** %6, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bms_union(i32 %32, i32 %39)
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = call i32* @create_plan_recurse(%struct.TYPE_24__* %43, %struct.TYPE_19__* %46, i32 0)
  store i32* %47, i32** %7, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bms_free(i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @order_qual_clauses(%struct.TYPE_24__* %55, i32* %56)
  store i32* %57, i32** %9, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_OUTER_JOIN(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %2
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @extract_actual_join_clauses(i32* %64, i32 %70, i32** %10, i32** %11)
  br label %76

72:                                               ; preds = %2
  %73 = load i32*, i32** %9, align 8
  %74 = call i32* @extract_actual_clauses(i32* %73, i32 0)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** @NIL, align 8
  store i32* %75, i32** %11, align 8
  br label %76

76:                                               ; preds = %72, %63
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i64 @replace_nestloop_params(%struct.TYPE_24__* %83, i32* %84)
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %10, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i64 @replace_nestloop_params(%struct.TYPE_24__* %87, i32* %88)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %11, align 8
  br label %91

91:                                               ; preds = %82, %76
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32* @identify_current_nestloop_params(%struct.TYPE_24__* %99, i32 %100)
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.TYPE_26__* @make_nestloop(i32* %102, i32* %103, i32* %104, i32* %105, i32* %106, i32* %107, i32 %110, i32 %113)
  store %struct.TYPE_26__* %114, %struct.TYPE_26__** %5, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = call i32 @copy_generic_path_info(i32* %117, %struct.TYPE_20__* %119)
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  ret %struct.TYPE_26__* %121
}

declare dso_local i32* @build_path_tlist(%struct.TYPE_24__*, %struct.TYPE_20__*) #1

declare dso_local i32* @create_plan_recurse(%struct.TYPE_24__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @bms_union(i32, i32) #1

declare dso_local i32 @bms_free(i32) #1

declare dso_local i32* @order_qual_clauses(%struct.TYPE_24__*, i32*) #1

declare dso_local i64 @IS_OUTER_JOIN(i32) #1

declare dso_local i32 @extract_actual_join_clauses(i32*, i32, i32**, i32**) #1

declare dso_local i32* @extract_actual_clauses(i32*, i32) #1

declare dso_local i64 @replace_nestloop_params(%struct.TYPE_24__*, i32*) #1

declare dso_local i32* @identify_current_nestloop_params(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_26__* @make_nestloop(i32*, i32*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @copy_generic_path_info(i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
