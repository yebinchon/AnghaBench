; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_compute_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_compute_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_string_buffer_list = type { i32 }
%struct.wined3d_shader = type { %struct.wined3d_shader_reg_maps, %struct.TYPE_5__ }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wined3d_shader_thread_group_size }
%struct.wined3d_shader_thread_group_size = type { i32, i32, i32 }
%struct.shader_glsl_ctx_priv = type { %struct.wined3d_string_buffer_list* }

@.str = private unnamed_addr constant [43 x i8] c"#extension GL_ARB_compute_shader : enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"shared uint cs_g%u[%u];\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"layout(local_size_x = %u, local_size_y = %u, local_size_z = %u) in;\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"void main()\0A{\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@GL_COMPUTE_SHADER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Compiling shader object %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer_list*, %struct.wined3d_shader*)* @shader_glsl_generate_compute_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_compute_shader(%struct.wined3d_context* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer_list* %2, %struct.wined3d_shader* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  %7 = alloca %struct.wined3d_string_buffer_list*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.wined3d_shader_thread_group_size*, align 8
  %10 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca %struct.shader_glsl_ctx_priv, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %6, align 8
  store %struct.wined3d_string_buffer_list* %2, %struct.wined3d_string_buffer_list** %7, align 8
  store %struct.wined3d_shader* %3, %struct.wined3d_shader** %8, align 8
  %15 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.wined3d_shader_thread_group_size* %18, %struct.wined3d_shader_thread_group_size** %9, align 8
  %19 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %19, i32 0, i32 0
  store %struct.wined3d_shader_reg_maps* %20, %struct.wined3d_shader_reg_maps** %10, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %22, align 8
  store %struct.wined3d_gl_info* %23, %struct.wined3d_gl_info** %11, align 8
  %24 = call i32 @memset(%struct.shader_glsl_ctx_priv* %12, i32 0, i32 8)
  %25 = load %struct.wined3d_string_buffer_list*, %struct.wined3d_string_buffer_list** %7, align 8
  %26 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %12, i32 0, i32 0
  store %struct.wined3d_string_buffer_list* %25, %struct.wined3d_string_buffer_list** %26, align 8
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %29 = call i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer* %27, %struct.wined3d_gl_info* %28)
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %32 = call i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer* %30, %struct.wined3d_gl_info* %31)
  %33 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %34 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %37 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %38 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %39 = call i32 @shader_generate_glsl_declarations(%struct.wined3d_context* %35, %struct.wined3d_string_buffer* %36, %struct.wined3d_shader* %37, %struct.wined3d_shader_reg_maps* %38, %struct.shader_glsl_ctx_priv* %12)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %69, %4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %46
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %66)
  br label %68

68:                                               ; preds = %56, %46
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %14, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %40

72:                                               ; preds = %40
  %73 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %74 = load %struct.wined3d_shader_thread_group_size*, %struct.wined3d_shader_thread_group_size** %9, align 8
  %75 = getelementptr inbounds %struct.wined3d_shader_thread_group_size, %struct.wined3d_shader_thread_group_size* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wined3d_shader_thread_group_size*, %struct.wined3d_shader_thread_group_size** %9, align 8
  %78 = getelementptr inbounds %struct.wined3d_shader_thread_group_size, %struct.wined3d_shader_thread_group_size* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wined3d_shader_thread_group_size*, %struct.wined3d_shader_thread_group_size** %9, align 8
  %81 = getelementptr inbounds %struct.wined3d_shader_thread_group_size, %struct.wined3d_shader_thread_group_size* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %73, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %82)
  %84 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %87 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %88 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %89 = call i32 @shader_generate_code(%struct.wined3d_shader* %86, %struct.wined3d_string_buffer* %87, %struct.wined3d_shader_reg_maps* %88, %struct.shader_glsl_ctx_priv* %12, i32* null, i32* null)
  %90 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %91 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @GL_COMPUTE_SHADER, align 4
  %93 = call i32 @glCreateShader(i32 %92)
  %94 = call i32 @GL_EXTCALL(i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @shader_glsl_compile(%struct.wined3d_gl_info* %97, i32 %98, i32 %101)
  %103 = load i32, i32* %13, align 4
  ret i32 %103
}

declare dso_local i32 @memset(%struct.shader_glsl_ctx_priv*, i32, i32) #1

declare dso_local i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_generate_glsl_declarations(%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, i32*, i32*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @shader_glsl_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
