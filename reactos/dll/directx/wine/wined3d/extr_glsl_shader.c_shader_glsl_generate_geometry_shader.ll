; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_geometry_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_geometry_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32* }
%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer, %struct.wined3d_string_buffer_list }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_string_buffer_list = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_6__, %struct.TYPE_4__*, %struct.wined3d_shader_reg_maps }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32 }
%struct.gs_compile_args = type { i32, i32 }
%struct.shader_glsl_ctx_priv = type { %struct.wined3d_string_buffer_list* }

@.str = private unnamed_addr constant [10 x i8] c"layout(%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c", invocations = %u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c") in;\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"layout(%s, max_vertices = %u) out;\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"in shader_in_out { vec4 reg[%u]; } shader_in[];\0A\00", align 1
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"uniform vec4 pos_fixup;\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"void main()\0A{\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@GL_GEOMETRY_SHADER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Compiling shader object %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.gs_compile_args*)* @shader_glsl_generate_geometry_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_geometry_shader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2, %struct.gs_compile_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.gs_compile_args*, align 8
  %10 = alloca %struct.wined3d_string_buffer_list*, align 8
  %11 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %12 = alloca %struct.wined3d_string_buffer*, align 8
  %13 = alloca %struct.wined3d_gl_info*, align 8
  %14 = alloca %struct.shader_glsl_ctx_priv, align 8
  %15 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %7, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %8, align 8
  store %struct.gs_compile_args* %3, %struct.gs_compile_args** %9, align 8
  %16 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %17 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %16, i32 0, i32 1
  store %struct.wined3d_string_buffer_list* %17, %struct.wined3d_string_buffer_list** %10, align 8
  %18 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %18, i32 0, i32 2
  store %struct.wined3d_shader_reg_maps* %19, %struct.wined3d_shader_reg_maps** %11, align 8
  %20 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %21 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %20, i32 0, i32 0
  store %struct.wined3d_string_buffer* %21, %struct.wined3d_string_buffer** %12, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 0
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  store %struct.wined3d_gl_info* %24, %struct.wined3d_gl_info** %13, align 8
  %25 = call i32 @memset(%struct.shader_glsl_ctx_priv* %14, i32 0, i32 8)
  %26 = load %struct.wined3d_string_buffer_list*, %struct.wined3d_string_buffer_list** %10, align 8
  %27 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %14, i32 0, i32 0
  store %struct.wined3d_string_buffer_list* %26, %struct.wined3d_string_buffer_list** %27, align 8
  %28 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %29 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %30 = call i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer* %28, %struct.wined3d_gl_info* %29)
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %32 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %33 = call i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer* %31, %struct.wined3d_gl_info* %32)
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %35 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %36 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %37 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %38 = call i32 @shader_generate_glsl_declarations(%struct.wined3d_context* %34, %struct.wined3d_string_buffer* %35, %struct.wined3d_shader* %36, %struct.wined3d_shader_reg_maps* %37, %struct.shader_glsl_ctx_priv* %14)
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %40 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @glsl_primitive_type_from_d3d(i32 %44)
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %61

53:                                               ; preds = %4
  %54 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %55 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %53, %4
  %62 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %63 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %65 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @glsl_primitive_type_from_d3d(i32 %69)
  %71 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %75)
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %78 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %85 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %61
  %92 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %93 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %61
  %95 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %96 = call i64 @is_rasterization_disabled(%struct.wined3d_shader* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %100 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %101 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %102 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = call i32 @shader_glsl_generate_stream_output_setup(%struct.shader_glsl_priv* %99, %struct.wined3d_shader* %100, i32* %104)
  br label %118

106:                                              ; preds = %94
  %107 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %108 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %109 = load %struct.gs_compile_args*, %struct.gs_compile_args** %9, align 8
  %110 = getelementptr inbounds %struct.gs_compile_args, %struct.gs_compile_args* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = load %struct.gs_compile_args*, %struct.gs_compile_args** %9, align 8
  %115 = getelementptr inbounds %struct.gs_compile_args, %struct.gs_compile_args* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @shader_glsl_generate_sm4_output_setup(%struct.shader_glsl_priv* %107, %struct.wined3d_shader* %108, i32 %111, %struct.wined3d_gl_info* %112, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %106, %98
  %119 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %120 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %121 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %122 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %123 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %124 = call i32 @shader_generate_code(%struct.wined3d_shader* %121, %struct.wined3d_string_buffer* %122, %struct.wined3d_shader_reg_maps* %123, %struct.shader_glsl_ctx_priv* %14, i32* null, i32* null)
  %125 = call i64 @FAILED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %143

128:                                              ; preds = %118
  %129 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %130 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i32, i32* @GL_GEOMETRY_SHADER, align 4
  %132 = call i32 @glCreateShader(i32 %131)
  %133 = call i32 @GL_EXTCALL(i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %139 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @shader_glsl_compile(%struct.wined3d_gl_info* %136, i32 %137, i32 %140)
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %128, %127
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @memset(%struct.shader_glsl_ctx_priv*, i32, i32) #1

declare dso_local i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_generate_glsl_declarations(%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @glsl_primitive_type_from_d3d(i32) #1

declare dso_local i64 @is_rasterization_disabled(%struct.wined3d_shader*) #1

declare dso_local i32 @shader_glsl_generate_stream_output_setup(%struct.shader_glsl_priv*, %struct.wined3d_shader*, i32*) #1

declare dso_local i32 @shader_glsl_generate_sm4_output_setup(%struct.shader_glsl_priv*, %struct.wined3d_shader*, i32, %struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

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
