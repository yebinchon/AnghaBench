; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_viewport.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { i64* }

@WINED3D_TS_PROJECTION = common dso_local global i32 0, align 4
@WINED3D_RS_POINTSCALEENABLE = common dso_local global i64 0, align 8
@WINED3D_SHADER_CONST_VS_POINTSIZE = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_POS_FIXUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @glsl_vertex_pipe_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_viewport(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %8 = load i32, i32* @WINED3D_TS_PROJECTION, align 4
  %9 = call i32 @STATE_TRANSFORM(i32 %8)
  %10 = call i32 @isStateDirty(%struct.wined3d_context* %7, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %15 = load i32, i32* @WINED3D_TS_PROJECTION, align 4
  %16 = call i32 @STATE_TRANSFORM(i32 %15)
  %17 = call i32 @glsl_vertex_pipe_projection(%struct.wined3d_context* %13, %struct.wined3d_state* %14, i32 %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %20 = load i64, i64* @WINED3D_RS_POINTSCALEENABLE, align 8
  %21 = call i32 @STATE_RENDER(i64 %20)
  %22 = call i32 @isStateDirty(%struct.wined3d_context* %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %18
  %25 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %26 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @WINED3D_RS_POINTSCALEENABLE, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @WINED3D_SHADER_CONST_VS_POINTSIZE, align 4
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %24, %18
  %39 = load i32, i32* @WINED3D_SHADER_CONST_POS_FIXUP, align 4
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %41 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  ret void
}

declare dso_local i32 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_TRANSFORM(i32) #1

declare dso_local i32 @glsl_vertex_pipe_projection(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @STATE_RENDER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
