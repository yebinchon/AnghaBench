; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_state = type { i32 }

@WINED3D_SHADER_CONST_FFP_MODELVIEW = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_LIGHTS = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_VERTEXBLEND = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_VS_CLIP_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @glsl_vertex_pipe_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_view(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 1
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %7, align 8
  %12 = load i32, i32* @WINED3D_SHADER_CONST_FFP_MODELVIEW, align 4
  %13 = load i32, i32* @WINED3D_SHADER_CONST_FFP_LIGHTS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WINED3D_SHADER_CONST_FFP_VERTEXBLEND, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %22 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %26, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @STATE_CLIPPLANE(i32 %34)
  %36 = call i32 @isStateDirty(%struct.wined3d_context* %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %40 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @STATE_CLIPPLANE(i32 %41)
  %43 = call i32 @clipplane(%struct.wined3d_context* %39, %struct.wined3d_state* %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %25

48:                                               ; preds = %25
  br label %55

49:                                               ; preds = %3
  %50 = load i32, i32* @WINED3D_SHADER_CONST_VS_CLIP_PLANES, align 4
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %52 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %48
  ret void
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_CLIPPLANE(i32) #1

declare dso_local i32 @clipplane(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
