; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_projection_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_projection_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@CP_LABEL_TLIST = common dso_local global i32 0, align 4
@CP_IGNORE_TLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_12__*, i32)* @create_projection_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @create_projection_plan(i32* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @use_physical_tlist(i32* %11, %struct.TYPE_14__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_13__* @create_plan_recurse(i32* %18, i32 %21, i32 0)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %8, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CP_LABEL_TLIST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = call i32 @apply_pathtarget_labeling_to_tlist(i32* %31, %struct.TYPE_11__* %35)
  br label %37

37:                                               ; preds = %30, %17
  br label %74

38:                                               ; preds = %3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @is_projection_capable_path(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CP_IGNORE_TLIST, align 4
  %50 = call %struct.TYPE_13__* @create_plan_recurse(i32* %45, i32 %48, i32 %49)
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %8, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = call i32* @build_path_tlist(i32* %51, %struct.TYPE_14__* %53)
  store i32* %54, i32** %9, align 8
  br label %73

55:                                               ; preds = %38
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_13__* @create_plan_recurse(i32* %56, i32 %59, i32 0)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %8, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = call i32* @build_path_tlist(i32* %61, %struct.TYPE_14__* %63)
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @tlist_same_exprs(i32* %65, i32* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %55, %44
  br label %74

74:                                               ; preds = %73, %37
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %114, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %7, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %123

114:                                              ; preds = %74
  %115 = load i32*, i32** %9, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = call i64 @make_result(i32* %115, i32* null, %struct.TYPE_13__* %116)
  %118 = inttoptr i64 %117 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %7, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = bitcast %struct.TYPE_12__* %120 to i32*
  %122 = call i32 @copy_generic_path_info(%struct.TYPE_13__* %119, i32* %121)
  br label %123

123:                                              ; preds = %114, %77
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %124
}

declare dso_local i64 @use_physical_tlist(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @create_plan_recurse(i32*, i32, i32) #1

declare dso_local i32 @apply_pathtarget_labeling_to_tlist(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @is_projection_capable_path(i32) #1

declare dso_local i32* @build_path_tlist(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @tlist_same_exprs(i32*, i32*) #1

declare dso_local i64 @make_result(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @copy_generic_path_info(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
