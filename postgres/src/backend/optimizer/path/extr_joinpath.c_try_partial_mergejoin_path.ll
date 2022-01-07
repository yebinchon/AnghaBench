; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_partial_mergejoin_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_partial_mergejoin_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_25__*)* @try_partial_mergejoin_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_partial_mergejoin_path(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2, %struct.TYPE_24__* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32 %8, %struct.TYPE_25__* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca %struct.TYPE_26__, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store %struct.TYPE_25__* %9, %struct.TYPE_25__** %20, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bms_is_empty(i32 %25)
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %10
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %22, align 4
  %39 = call i32 @bms_is_empty(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %102

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32*, i32** %17, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32*, i32** %17, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @pathkeys_contained_in(i32* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** @NIL, align 8
  store i32* %54, i32** %17, align 8
  br label %55

55:                                               ; preds = %53, %46, %43
  %56 = load i32*, i32** %18, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32*, i32** %18, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @pathkeys_contained_in(i32* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32*, i32** @NIL, align 8
  store i32* %66, i32** %18, align 8
  br label %67

67:                                               ; preds = %65, %58, %55
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %76 = call i32 @initial_cost_mergejoin(i32* %68, %struct.TYPE_26__* %21, i32 %69, i32* %70, %struct.TYPE_24__* %71, %struct.TYPE_24__* %72, i32* %73, i32* %74, %struct.TYPE_25__* %75)
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @add_partial_path_precheck(%struct.TYPE_23__* %77, i32 %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %67
  br label %102

84:                                               ; preds = %67
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %88 = load i32, i32* %19, align 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i64 @create_mergejoin_path(i32* %86, %struct.TYPE_23__* %87, i32 %88, %struct.TYPE_26__* %21, %struct.TYPE_25__* %89, %struct.TYPE_24__* %90, %struct.TYPE_24__* %91, i32 %94, i32* %95, i32* null, i32* %96, i32* %97, i32* %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_24__*
  %101 = call i32 @add_partial_path(%struct.TYPE_23__* %85, %struct.TYPE_24__* %100)
  br label %102

102:                                              ; preds = %84, %83, %41
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_is_empty(i32) #1

declare dso_local i64 @pathkeys_contained_in(i32*, i32) #1

declare dso_local i32 @initial_cost_mergejoin(i32*, %struct.TYPE_26__*, i32, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @add_partial_path_precheck(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @add_partial_path(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i64 @create_mergejoin_path(i32*, %struct.TYPE_23__*, i32, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
