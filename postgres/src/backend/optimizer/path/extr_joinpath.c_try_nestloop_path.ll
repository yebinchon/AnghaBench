; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_nestloop_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_nestloop_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32*, i32, %struct.TYPE_29__*)* @try_nestloop_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_nestloop_path(i32* %0, %struct.TYPE_27__* %1, %struct.TYPE_28__* %2, %struct.TYPE_28__* %3, i32* %4, i32 %5, %struct.TYPE_29__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_30__, align 4
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_29__* %6, %struct.TYPE_29__** %14, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %17, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %18, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %30 = call i64 @PATH_REQ_OUTER(%struct.TYPE_28__* %29)
  store i64 %30, i64* %21, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %32 = call i64 @PATH_REQ_OUTER(%struct.TYPE_28__* %31)
  store i64 %32, i64* %22, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %7
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %19, align 8
  br label %45

41:                                               ; preds = %7
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %19, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %20, align 8
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %20, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %22, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %21, align 8
  %63 = call i64 @calc_nestloop_required_outer(i64 %59, i64 %60, i64 %61, i64 %62)
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %58
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bms_overlap(i64 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load i32*, i32** %8, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %21, align 8
  %77 = call i32 @allow_star_schema_join(i32* %74, i64 %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73, %66
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* %21, align 8
  %83 = call i64 @have_dangerous_phv(i32* %80, i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %73
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @bms_free(i64 %86)
  br label %143

88:                                               ; preds = %79, %58
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %94 = call i32 @initial_cost_nestloop(i32* %89, %struct.TYPE_30__* %16, i32 %90, %struct.TYPE_28__* %91, %struct.TYPE_28__* %92, %struct.TYPE_29__* %93)
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i64 @add_path_precheck(%struct.TYPE_27__* %95, i32 %97, i32 %99, i32* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %88
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  %109 = call i64 @PATH_PARAM_BY_PARENT(%struct.TYPE_28__* %105, %struct.TYPE_27__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %115, align 8
  %117 = call %struct.TYPE_28__* @reparameterize_path_by_child(i32* %112, %struct.TYPE_28__* %113, %struct.TYPE_27__* %116)
  store %struct.TYPE_28__* %117, %struct.TYPE_28__** %11, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %119 = icmp ne %struct.TYPE_28__* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %111
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @bms_free(i64 %121)
  br label %143

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = load i64, i64* %15, align 8
  %137 = call i64 @create_nestloop_path(i32* %126, %struct.TYPE_27__* %127, i32 %128, %struct.TYPE_30__* %16, %struct.TYPE_29__* %129, %struct.TYPE_28__* %130, %struct.TYPE_28__* %131, i32 %134, i32* %135, i64 %136)
  %138 = inttoptr i64 %137 to %struct.TYPE_28__*
  %139 = call i32 @add_path(%struct.TYPE_27__* %125, %struct.TYPE_28__* %138)
  br label %143

140:                                              ; preds = %88
  %141 = load i64, i64* %15, align 8
  %142 = call i32 @bms_free(i64 %141)
  br label %143

143:                                              ; preds = %85, %120, %140, %124
  ret void
}

declare dso_local i64 @PATH_REQ_OUTER(%struct.TYPE_28__*) #1

declare dso_local i64 @calc_nestloop_required_outer(i64, i64, i64, i64) #1

declare dso_local i32 @bms_overlap(i64, i32) #1

declare dso_local i32 @allow_star_schema_join(i32*, i64, i64) #1

declare dso_local i64 @have_dangerous_phv(i32*, i64, i64) #1

declare dso_local i32 @bms_free(i64) #1

declare dso_local i32 @initial_cost_nestloop(i32*, %struct.TYPE_30__*, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i64 @add_path_precheck(%struct.TYPE_27__*, i32, i32, i32*, i64) #1

declare dso_local i64 @PATH_PARAM_BY_PARENT(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @reparameterize_path_by_child(i32*, %struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @add_path(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i64 @create_nestloop_path(i32*, %struct.TYPE_27__*, i32, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
