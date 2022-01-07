; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_nrm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_nrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.glsl_src_param = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"tmp0.x = dot(%s, %s);\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"tmp0.x == 0.0 ? vec%u(0.0) : (%s * inversesqrt(tmp0.x)));\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"tmp0.x == 0.0 ? 0.0 : (%s * inversesqrt(tmp0.x)));\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_nrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_nrm(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  store %struct.wined3d_string_buffer* %12, %struct.wined3d_string_buffer** %3, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %17 = call i32 @shader_glsl_get_write_mask(i32 %15, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @shader_glsl_get_write_mask_size(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %20, i32* %24, i32 %25, %struct.glsl_src_param* %4)
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %35 = call i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer* %33, %struct.wined3d_shader_instruction* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %39, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  br label %49

44:                                               ; preds = %1
  %45 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %46 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @shader_glsl_get_write_mask(i32, i8*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, ...) #1

declare dso_local i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
