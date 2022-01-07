; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_ps_epilogue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_ps_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader = type { %struct.wined3d_shader_reg_maps }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ps_compile_args = type { i64, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"gl_FragData[0]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ps_out0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s = R0;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.ps_compile_args*)* @shader_glsl_generate_ps_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_ps_epilogue(%struct.wined3d_gl_info* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_shader* %2, %struct.ps_compile_args* %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.ps_compile_args*, align 8
  %9 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %10 = alloca i8*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  store %struct.ps_compile_args* %3, %struct.ps_compile_args** %8, align 8
  %11 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %11, i32 0, i32 0
  store %struct.wined3d_shader_reg_maps* %12, %struct.wined3d_shader_reg_maps** %9, align 8
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %14 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @shader_addline(%struct.wined3d_string_buffer* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load %struct.ps_compile_args*, %struct.ps_compile_args** %8, align 8
  %29 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %35 = call i32 @shader_glsl_generate_srgb_write_correction(%struct.wined3d_string_buffer* %33, %struct.wined3d_gl_info* %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %45 = load %struct.ps_compile_args*, %struct.ps_compile_args** %8, align 8
  %46 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @shader_glsl_generate_fog_code(%struct.wined3d_string_buffer* %43, %struct.wined3d_gl_info* %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %51 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %52 = load %struct.ps_compile_args*, %struct.ps_compile_args** %8, align 8
  %53 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @shader_glsl_generate_alpha_test(%struct.wined3d_string_buffer* %50, %struct.wined3d_gl_info* %51, i64 %55)
  ret void
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*) #1

declare dso_local i32 @shader_glsl_generate_srgb_write_correction(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_generate_fog_code(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @shader_glsl_generate_alpha_test(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
