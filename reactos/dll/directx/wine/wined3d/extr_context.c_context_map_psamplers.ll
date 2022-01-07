; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_psamplers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_psamplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32*, %struct.wined3d_d3d_info* }
%struct.wined3d_d3d_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.wined3d_shader_resource_info* }
%struct.wined3d_shader_resource_info = type { i64 }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@MAX_FRAGMENT_SAMPLERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*)* @context_map_psamplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_map_psamplers(%struct.wined3d_context* %0, %struct.wined3d_state* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca %struct.wined3d_d3d_info*, align 8
  %6 = alloca %struct.wined3d_shader_resource_info*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %4, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 1
  %10 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %9, align 8
  store %struct.wined3d_d3d_info* %10, %struct.wined3d_d3d_info** %5, align 8
  %11 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %18, align 8
  store %struct.wined3d_shader_resource_info* %19, %struct.wined3d_shader_resource_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %63, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %25, i64 %27
  %29 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %24
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %34 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %32
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @context_map_stage(%struct.wined3d_context* %43, i32 %44, i32 %45)
  %47 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @STATE_SAMPLER(i32 %48)
  %50 = call i32 @context_invalidate_state(%struct.wined3d_context* %47, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %5, align 8
  %53 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @context_invalidate_texture_stage(%struct.wined3d_context* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %42
  br label %62

62:                                               ; preds = %61, %32, %24
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %20

66:                                               ; preds = %20
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
