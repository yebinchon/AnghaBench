; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_vs_local_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_vs_local_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_vs_compiled_shader = type { i64, i64*, i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@GL_VERTEX_PROGRAM_ARB = common dso_local global i32 0, align 4
@WINED3D_MAX_CONSTS_I = common dso_local global i8 0, align 1
@WINED3D_CONST_NUM_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Load vs int consts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arb_vs_compiled_shader*, %struct.wined3d_context*, %struct.wined3d_state*)* @shader_arb_vs_local_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_vs_local_constants(%struct.arb_vs_compiled_shader* %0, %struct.wined3d_context* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca %struct.arb_vs_compiled_shader*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca i8, align 1
  %10 = alloca [4 x float], align 16
  store %struct.arb_vs_compiled_shader* %0, %struct.arb_vs_compiled_shader** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 0
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %7, align 8
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %15 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %16 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %17 = call i32 @shader_get_position_fixup(%struct.wined3d_context* %14, %struct.wined3d_state* %15, float* %16)
  %18 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %19 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %4, align 8
  %20 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %23 = call i32 @glProgramLocalParameter4fvARB(i32 %18, i64 %21, float* %22)
  %24 = call i32 @GL_EXTCALL(i32 %23)
  %25 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %4, align 8
  %26 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %96

30:                                               ; preds = %3
  store i8 0, i8* %9, align 1
  br label %31

31:                                               ; preds = %91, %30
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @WINED3D_MAX_CONSTS_I, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %31
  %38 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %4, align 8
  %39 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WINED3D_CONST_NUM_UNUSED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %37
  %48 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %49 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to float
  %57 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 0
  store float %56, float* %57, align 16
  %58 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to float
  %67 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 1
  store float %66, float* %67, align 4
  %68 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %69 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i8, i8* %9, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to float
  %77 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 2
  store float %76, float* %77, align 8
  %78 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 3
  store float -1.000000e+00, float* %78, align 4
  %79 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %80 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %4, align 8
  %81 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i8, i8* %9, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 0
  %88 = call i32 @glProgramLocalParameter4fvARB(i32 %79, i64 %86, float* %87)
  %89 = call i32 @GL_EXTCALL(i32 %88)
  br label %90

90:                                               ; preds = %47, %37
  br label %91

91:                                               ; preds = %90
  %92 = load i8, i8* %9, align 1
  %93 = add i8 %92, 1
  store i8 %93, i8* %9, align 1
  br label %31

94:                                               ; preds = %31
  %95 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %29
  ret void
}

declare dso_local i32 @shader_get_position_fixup(%struct.wined3d_context*, %struct.wined3d_state*, float*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glProgramLocalParameter4fvARB(i32, i64, float*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
