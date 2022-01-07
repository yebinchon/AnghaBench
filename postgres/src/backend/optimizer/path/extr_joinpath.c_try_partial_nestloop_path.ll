; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_partial_nestloop_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_partial_nestloop_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32, %struct.TYPE_30__*)* @try_partial_nestloop_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_partial_nestloop_path(i32* %0, %struct.TYPE_28__* %1, %struct.TYPE_29__* %2, %struct.TYPE_29__* %3, i32* %4, i32 %5, %struct.TYPE_30__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_31__, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_30__* %6, %struct.TYPE_30__** %14, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bms_is_empty(i32 %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %27 = icmp ne %struct.TYPE_27__* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %7
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %17, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %18, align 8
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i32 @bms_is_subset(i64 %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %103

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %7
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %62 = call i32 @initial_cost_nestloop(i32* %57, %struct.TYPE_31__* %15, i32 %58, %struct.TYPE_29__* %59, %struct.TYPE_29__* %60, %struct.TYPE_30__* %61)
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @add_partial_path_precheck(%struct.TYPE_28__* %63, i32 %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %103

70:                                               ; preds = %56
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %73, align 8
  %75 = call i64 @PATH_PARAM_BY_PARENT(%struct.TYPE_29__* %71, %struct.TYPE_28__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %81, align 8
  %83 = call %struct.TYPE_29__* @reparameterize_path_by_child(i32* %78, %struct.TYPE_29__* %79, %struct.TYPE_28__* %82)
  store %struct.TYPE_29__* %83, %struct.TYPE_29__** %11, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %85 = icmp ne %struct.TYPE_29__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  br label %103

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = call i64 @create_nestloop_path(i32* %90, %struct.TYPE_28__* %91, i32 %92, %struct.TYPE_31__* %15, %struct.TYPE_30__* %93, %struct.TYPE_29__* %94, %struct.TYPE_29__* %95, i32 %98, i32* %99, i32* null)
  %101 = inttoptr i64 %100 to %struct.TYPE_29__*
  %102 = call i32 @add_partial_path(%struct.TYPE_28__* %89, %struct.TYPE_29__* %101)
  br label %103

103:                                              ; preds = %88, %86, %69, %54
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_is_empty(i32) #1

declare dso_local i32 @bms_is_subset(i64, i64) #1

declare dso_local i32 @initial_cost_nestloop(i32*, %struct.TYPE_31__*, i32, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @add_partial_path_precheck(%struct.TYPE_28__*, i32, i32*) #1

declare dso_local i64 @PATH_PARAM_BY_PARENT(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @reparameterize_path_by_child(i32*, %struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @add_partial_path(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i64 @create_nestloop_path(i32*, %struct.TYPE_28__*, i32, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
