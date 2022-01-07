; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_fb_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_fb_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.wined3d_device* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32)* }

@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Reading back offscreen render target %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"glReadBuffer\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage2D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @surface_load_fb_texture(%struct.wined3d_surface* %0, i32 %1, %struct.wined3d_context* %2) #0 {
  %4 = alloca %struct.wined3d_surface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_texture*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca %struct.wined3d_context*, align 8
  %12 = alloca %struct.wined3d_surface*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %6, align 8
  %15 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %16 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %17, i32 0, i32 0
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %18, align 8
  store %struct.wined3d_texture* %19, %struct.wined3d_texture** %8, align 8
  %20 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %21 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %22, align 8
  store %struct.wined3d_device* %23, %struct.wined3d_device** %9, align 8
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_context* %24, %struct.wined3d_context** %11, align 8
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %12, align 8
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %26 = call %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context* %25)
  store %struct.wined3d_surface* %26, %struct.wined3d_surface** %12, align 8
  %27 = load %struct.wined3d_surface*, %struct.wined3d_surface** %12, align 8
  %28 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %29 = icmp ne %struct.wined3d_surface* %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %32 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %31, %struct.wined3d_texture* %32, i32 %33)
  store %struct.wined3d_context* %34, %struct.wined3d_context** %11, align 8
  br label %36

35:                                               ; preds = %3
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %12, align 8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %38 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %37, i32 0, i32 0
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %38, align 8
  store %struct.wined3d_gl_info* %39, %struct.wined3d_gl_info** %10, align 8
  %40 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %41 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %42 = call i32 @device_invalidate_state(%struct.wined3d_device* %40, i32 %41)
  %43 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture* %43, %struct.wined3d_context* %44, i32 %45)
  %47 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %47, %struct.wined3d_context* %48, i32 %49)
  %51 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.wined3d_surface* %51)
  %53 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %54 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %53, i32 0, i32 1
  %55 = call i64 @wined3d_resource_is_offscreen(%struct.TYPE_6__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %36
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %59 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %64 = call i32 @context_get_offscreen_gl_buffer(%struct.wined3d_context* %63)
  %65 = call i32 %62(i32 %64)
  br label %75

66:                                               ; preds = %36
  %67 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %68 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32 (i32)*, i32 (i32)** %70, align 8
  %72 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %73 = call i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture* %72)
  %74 = call i32 %71(i32 %73)
  br label %75

75:                                               ; preds = %66, %57
  %76 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %79 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = urem i32 %77, %80
  store i32 %81, i32* %13, align 4
  %82 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @wined3d_texture_get_sub_resource_target(%struct.wined3d_texture* %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %86 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32)** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %92, i32 %93)
  %95 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %95, i32 %96)
  %98 = call i32 %89(i32 %90, i32 %91, i32 0, i32 0, i32 0, i32 0, i32 %94, i32 %97)
  %99 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.wined3d_surface*, %struct.wined3d_surface** %12, align 8
  %101 = icmp ne %struct.wined3d_surface* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %75
  %103 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %104 = load %struct.wined3d_surface*, %struct.wined3d_surface** %12, align 8
  %105 = call i32 @context_restore(%struct.wined3d_context* %103, %struct.wined3d_surface* %104)
  br label %106

106:                                              ; preds = %102, %75
  ret void
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, %struct.wined3d_texture*, i32) #1

declare dso_local i32 @device_invalidate_state(%struct.wined3d_device*, i32) #1

declare dso_local i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_surface*) #1

declare dso_local i64 @wined3d_resource_is_offscreen(%struct.TYPE_6__*) #1

declare dso_local i32 @context_get_offscreen_gl_buffer(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @wined3d_texture_get_sub_resource_target(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @context_restore(%struct.wined3d_context*, %struct.wined3d_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
