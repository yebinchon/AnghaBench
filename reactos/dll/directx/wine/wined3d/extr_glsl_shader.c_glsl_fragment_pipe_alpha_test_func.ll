; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_fragment_pipe_alpha_test_func.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_fragment_pipe_alpha_test_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i64, float)* }
%struct.wined3d_state = type { float* }

@WINED3D_RS_ALPHAFUNC = common dso_local global i64 0, align 8
@WINED3D_RS_ALPHAREF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"glAlphaFunc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @glsl_fragment_pipe_alpha_test_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_fragment_pipe_alpha_test_func(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 0
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %7, align 8
  %13 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %13, i32 0, i32 0
  %15 = load float*, float** %14, align 8
  %16 = load i64, i64* @WINED3D_RS_ALPHAFUNC, align 8
  %17 = getelementptr inbounds float, float* %15, i64 %16
  %18 = load float, float* %17, align 4
  %19 = call i64 @wined3d_gl_compare_func(float %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %20, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  %23 = load i64, i64* @WINED3D_RS_ALPHAREF, align 8
  %24 = getelementptr inbounds float, float* %22, i64 %23
  %25 = load float, float* %24, align 4
  %26 = fdiv float %25, 2.550000e+02
  store float %26, float* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %31 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i64, float)*, i32 (i64, float)** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load float, float* %9, align 4
  %37 = call i32 %34(i64 %35, float %36)
  %38 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %29, %3
  ret void
}

declare dso_local i64 @wined3d_gl_compare_func(float) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
