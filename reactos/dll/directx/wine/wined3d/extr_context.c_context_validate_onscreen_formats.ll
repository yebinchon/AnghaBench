; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_validate_onscreen_formats.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_validate_onscreen_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wined3d_swapchain* }
%struct.wined3d_swapchain = type { i32, i32 }
%struct.wined3d_rendertarget_view = type { i32 }

@.str = private unnamed_addr constant [82 x i8] c"Depth stencil format is not supported by WGL, rendering the backbuffer in an FBO\0A\00", align 1
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to load location.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_rendertarget_view*)* @context_validate_onscreen_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_validate_onscreen_formats(%struct.wined3d_context* %0, %struct.wined3d_rendertarget_view* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_rendertarget_view*, align 8
  %5 = alloca %struct.wined3d_swapchain*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_rendertarget_view* %1, %struct.wined3d_rendertarget_view** %4, align 8
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %10, align 8
  store %struct.wined3d_swapchain* %11, %struct.wined3d_swapchain** %5, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %18 = icmp ne %struct.wined3d_rendertarget_view* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %55

20:                                               ; preds = %16
  %21 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @match_depth_stencil_format(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %55

30:                                               ; preds = %20
  %31 = call i32 @WARN(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %37 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %41 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %42 = call i32 @wined3d_texture_load_location(%struct.TYPE_4__* %35, i32 %39, %struct.wined3d_context* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %30
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %5, align 8
  %49 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %5, align 8
  %51 = call i32 @swapchain_update_draw_bindings(%struct.wined3d_swapchain* %50)
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @context_set_render_offscreen(%struct.wined3d_context* %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %29, %19
  ret void
}

declare dso_local i64 @match_depth_stencil_format(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.TYPE_4__*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @swapchain_update_draw_bindings(%struct.wined3d_swapchain*) #1

declare dso_local i32 @context_set_render_offscreen(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
