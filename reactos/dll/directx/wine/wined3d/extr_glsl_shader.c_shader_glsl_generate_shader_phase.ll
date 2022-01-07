; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_shader_phase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_shader_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32 }
%struct.shader_glsl_ctx_priv = type { i32 }
%struct.wined3d_shader_phase = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"void hs_%s_phase%u(%s)\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"int phase_instance_id\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"vec4 R%u;\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, %struct.wined3d_shader_phase*, i8*, i32)* @shader_glsl_generate_shader_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_shader_phase(%struct.wined3d_shader* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_shader_reg_maps* %2, %struct.shader_glsl_ctx_priv* %3, %struct.wined3d_shader_phase* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %11 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %12 = alloca %struct.wined3d_shader_phase*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %8, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %9, align 8
  store %struct.wined3d_shader_reg_maps* %2, %struct.wined3d_shader_reg_maps** %10, align 8
  store %struct.shader_glsl_ctx_priv* %3, %struct.shader_glsl_ctx_priv** %11, align 8
  store %struct.wined3d_shader_phase* %4, %struct.wined3d_shader_phase** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = load i32, i32* %14, align 4
  %20 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %12, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19, i8* %25)
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %37, %7
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %12, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %15, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %43 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %44 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %11, align 8
  %45 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %12, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %12, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @shader_generate_code(%struct.wined3d_shader* %41, %struct.wined3d_string_buffer* %42, %struct.wined3d_shader_reg_maps* %43, %struct.shader_glsl_ctx_priv* %44, i32 %47, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %53 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* %16, align 4
  ret i32 %54
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
