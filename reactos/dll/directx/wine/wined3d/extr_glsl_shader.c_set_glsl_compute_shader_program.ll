; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_set_glsl_compute_shader_program.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_set_glsl_compute_shader_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_shader** }
%struct.wined3d_shader = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.glsl_context_data = type { %struct.glsl_shader_prog_link* }
%struct.glsl_shader_prog_link = type { i32 }
%struct.glsl_program_key = type { i32 }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Compute shader is NULL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to find GLSL program for compute shader %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, %struct.shader_glsl_priv*, %struct.glsl_context_data*)* @set_glsl_compute_shader_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_glsl_compute_shader_program(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.shader_glsl_priv* %2, %struct.glsl_context_data* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.glsl_context_data*, align 8
  %9 = alloca %struct.glsl_shader_prog_link*, align 8
  %10 = alloca %struct.wined3d_shader*, align 8
  %11 = alloca %struct.glsl_program_key, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store %struct.shader_glsl_priv* %2, %struct.shader_glsl_priv** %7, align 8
  store %struct.glsl_context_data* %3, %struct.glsl_context_data** %8, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %22, i32 0, i32 0
  %24 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %23, align 8
  %25 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %24, i64 %26
  %28 = load %struct.wined3d_shader*, %struct.wined3d_shader** %27, align 8
  store %struct.wined3d_shader* %28, %struct.wined3d_shader** %10, align 8
  %29 = icmp ne %struct.wined3d_shader* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.glsl_context_data*, %struct.glsl_context_data** %8, align 8
  %33 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %32, i32 0, i32 0
  store %struct.glsl_shader_prog_link* null, %struct.glsl_shader_prog_link** %33, align 8
  br label %52

34:                                               ; preds = %21
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %36 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %37 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %38 = call i32 @find_glsl_compute_shader(%struct.wined3d_context* %35, %struct.shader_glsl_priv* %36, %struct.wined3d_shader* %37)
  store i32 %38, i32* %12, align 4
  %39 = call i32 @memset(%struct.glsl_program_key* %11, i32 0, i32 4)
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds %struct.glsl_program_key, %struct.glsl_program_key* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %43 = call %struct.glsl_shader_prog_link* @get_glsl_program_entry(%struct.shader_glsl_priv* %42, %struct.glsl_program_key* %11)
  store %struct.glsl_shader_prog_link* %43, %struct.glsl_shader_prog_link** %9, align 8
  %44 = icmp ne %struct.glsl_shader_prog_link* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %47 = call i32 @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_shader* %46)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %9, align 8
  %50 = load %struct.glsl_context_data*, %struct.glsl_context_data** %8, align 8
  %51 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %50, i32 0, i32 0
  store %struct.glsl_shader_prog_link* %49, %struct.glsl_shader_prog_link** %51, align 8
  br label %52

52:                                               ; preds = %48, %30, %20
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @find_glsl_compute_shader(%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*) #1

declare dso_local i32 @memset(%struct.glsl_program_key*, i32, i32) #1

declare dso_local %struct.glsl_shader_prog_link* @get_glsl_program_entry(%struct.shader_glsl_priv*, %struct.glsl_program_key*) #1

declare dso_local i32 @ERR(i8*, %struct.wined3d_shader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
