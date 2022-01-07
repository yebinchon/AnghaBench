; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_fixed_function_samplers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_fixed_function_samplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i64, i32*, %struct.wined3d_d3d_info* }
%struct.wined3d_d3d_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.wined3d_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*)* @context_map_fixed_function_samplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_map_fixed_function_samplers(%struct.wined3d_context* %0, %struct.wined3d_state* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca %struct.wined3d_d3d_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %4, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 3
  %11 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %10, align 8
  store %struct.wined3d_d3d_info* %11, %struct.wined3d_d3d_info** %5, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %26 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %27, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %24, %2
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %65

42:                                               ; preds = %37
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %44 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @context_map_stage(%struct.wined3d_context* %53, i32 %54, i32 %55)
  %57 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @STATE_SAMPLER(i32 %58)
  %60 = call i32 @context_invalidate_state(%struct.wined3d_context* %57, i32 %59)
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @context_invalidate_texture_stage(%struct.wined3d_context* %61, i32 %62)
  br label %64

64:                                               ; preds = %52, %42
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %34

70:                                               ; preds = %34
  br label %110

71:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %105, %71
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %105

80:                                               ; preds = %75
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %82 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %80
  %91 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @context_map_stage(%struct.wined3d_context* %91, i32 %92, i32 %93)
  %95 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @STATE_SAMPLER(i32 %96)
  %98 = call i32 @context_invalidate_state(%struct.wined3d_context* %95, i32 %97)
  %99 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @context_invalidate_texture_stage(%struct.wined3d_context* %99, i32 %100)
  br label %102

102:                                              ; preds = %90, %80
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %79
  %106 = load i32, i32* %8, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %72

110:                                              ; preds = %70, %72
  ret void
}

declare dso_local i32 @context_map_stage(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_SAMPLER(i32) #1

declare dso_local i32 @context_invalidate_texture_stage(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
