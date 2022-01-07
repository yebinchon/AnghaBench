; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_mergejoin_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_mergejoin_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_22__*, i32)* @try_mergejoin_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_mergejoin_path(i32* %0, i32* %1, %struct.TYPE_21__* %2, %struct.TYPE_21__* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32 %8, %struct.TYPE_22__* %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_23__, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %21, align 8
  store i32 %10, i32* %22, align 4
  %25 = load i32, i32* %22, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %11
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = load i32, i32* %20, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %38 = call i32 @try_partial_mergejoin_path(i32* %28, i32* %29, %struct.TYPE_21__* %30, %struct.TYPE_21__* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32 %36, %struct.TYPE_22__* %37)
  br label %120

39:                                               ; preds = %11
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %42 = call i64 @calc_non_nestloop_required_outer(%struct.TYPE_21__* %40, %struct.TYPE_21__* %41)
  store i64 %42, i64* %23, align 8
  %43 = load i64, i64* %23, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i64, i64* %23, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bms_overlap(i64 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %23, align 8
  %54 = call i32 @bms_free(i64 %53)
  br label %120

55:                                               ; preds = %45, %39
  %56 = load i32*, i32** %18, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32*, i32** %18, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @pathkeys_contained_in(i32* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32*, i32** @NIL, align 8
  store i32* %66, i32** %18, align 8
  br label %67

67:                                               ; preds = %65, %58, %55
  %68 = load i32*, i32** %19, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32*, i32** %19, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @pathkeys_contained_in(i32* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32*, i32** @NIL, align 8
  store i32* %78, i32** %19, align 8
  br label %79

79:                                               ; preds = %77, %70, %67
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %20, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %88 = call i32 @initial_cost_mergejoin(i32* %80, %struct.TYPE_23__* %24, i32 %81, i32* %82, %struct.TYPE_21__* %83, %struct.TYPE_21__* %84, i32* %85, i32* %86, %struct.TYPE_22__* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = load i64, i64* %23, align 8
  %96 = call i64 @add_path_precheck(i32* %89, i32 %91, i32 %93, i32* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %79
  %99 = load i32*, i32** %13, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %16, align 8
  %110 = load i64, i64* %23, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = load i32*, i32** %19, align 8
  %114 = call i64 @create_mergejoin_path(i32* %100, i32* %101, i32 %102, %struct.TYPE_23__* %24, %struct.TYPE_22__* %103, %struct.TYPE_21__* %104, %struct.TYPE_21__* %105, i32 %108, i32* %109, i64 %110, i32* %111, i32* %112, i32* %113)
  %115 = inttoptr i64 %114 to %struct.TYPE_21__*
  %116 = call i32 @add_path(i32* %99, %struct.TYPE_21__* %115)
  br label %120

117:                                              ; preds = %79
  %118 = load i64, i64* %23, align 8
  %119 = call i32 @bms_free(i64 %118)
  br label %120

120:                                              ; preds = %27, %52, %117, %98
  ret void
}

declare dso_local i32 @try_partial_mergejoin_path(i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @calc_non_nestloop_required_outer(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @bms_overlap(i64, i32) #1

declare dso_local i32 @bms_free(i64) #1

declare dso_local i64 @pathkeys_contained_in(i32*, i32) #1

declare dso_local i32 @initial_cost_mergejoin(i32*, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*, %struct.TYPE_22__*) #1

declare dso_local i64 @add_path_precheck(i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @add_path(i32*, %struct.TYPE_21__*) #1

declare dso_local i64 @create_mergejoin_path(i32*, i32*, i32, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
