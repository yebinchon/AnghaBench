; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_enable_extensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_enable_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i64* }

@ARB_CULL_DISTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"#extension GL_ARB_cull_distance : enable\0A\00", align 1
@ARB_GPU_SHADER5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"#extension GL_ARB_gpu_shader5 : enable\0A\00", align 1
@ARB_SHADER_ATOMIC_COUNTERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"#extension GL_ARB_shader_atomic_counters : enable\0A\00", align 1
@ARB_SHADER_BIT_ENCODING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"#extension GL_ARB_shader_bit_encoding : enable\0A\00", align 1
@ARB_SHADER_IMAGE_LOAD_STORE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"#extension GL_ARB_shader_image_load_store : enable\0A\00", align 1
@ARB_SHADER_IMAGE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"#extension GL_ARB_shader_image_size : enable\0A\00", align 1
@ARB_SHADER_STORAGE_BUFFER_OBJECT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"#extension GL_ARB_shader_storage_buffer_object : enable\0A\00", align 1
@ARB_SHADING_LANGUAGE_420PACK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"#extension GL_ARB_shading_language_420pack : enable\0A\00", align 1
@ARB_SHADING_LANGUAGE_PACKING = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"#extension GL_ARB_shading_language_packing : enable\0A\00", align 1
@ARB_TEXTURE_CUBE_MAP_ARRAY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"#extension GL_ARB_texture_cube_map_array : enable\0A\00", align 1
@ARB_TEXTURE_GATHER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"#extension GL_ARB_texture_gather : enable\0A\00", align 1
@ARB_TEXTURE_QUERY_LEVELS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [49 x i8] c"#extension GL_ARB_texture_query_levels : enable\0A\00", align 1
@ARB_UNIFORM_BUFFER_OBJECT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [50 x i8] c"#extension GL_ARB_uniform_buffer_object : enable\0A\00", align 1
@EXT_GPU_SHADER4 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [40 x i8] c"#extension GL_EXT_gpu_shader4 : enable\0A\00", align 1
@EXT_TEXTURE_ARRAY = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [42 x i8] c"#extension GL_EXT_texture_array : enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*)* @shader_glsl_enable_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_enable_extensions(%struct.wined3d_string_buffer* %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %4, align 8
  %5 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %6 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @ARB_CULL_DISTANCE, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %14 = call i32 @shader_addline(%struct.wined3d_string_buffer* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @ARB_GPU_SHADER5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %25 = call i32 @shader_addline(%struct.wined3d_string_buffer* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @ARB_SHADER_ATOMIC_COUNTERS, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %36 = call i32 @shader_addline(%struct.wined3d_string_buffer* %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @ARB_SHADER_BIT_ENCODING, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %47 = call i32 @shader_addline(%struct.wined3d_string_buffer* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %50 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @ARB_SHADER_IMAGE_LOAD_STORE, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %58 = call i32 @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @ARB_SHADER_IMAGE_SIZE, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %69 = call i32 @shader_addline(%struct.wined3d_string_buffer* %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %72 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @ARB_SHADER_STORAGE_BUFFER_OBJECT, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %80 = call i32 @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %70
  %82 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %83 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @ARB_SHADING_LANGUAGE_420PACK, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %91 = call i32 @shader_addline(%struct.wined3d_string_buffer* %90, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %81
  %93 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %94 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @ARB_SHADING_LANGUAGE_PACKING, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %102 = call i32 @shader_addline(%struct.wined3d_string_buffer* %101, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %92
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @ARB_TEXTURE_CUBE_MAP_ARRAY, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %113 = call i32 @shader_addline(%struct.wined3d_string_buffer* %112, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %103
  %115 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %116 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @ARB_TEXTURE_GATHER, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %124 = call i32 @shader_addline(%struct.wined3d_string_buffer* %123, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %127 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @ARB_TEXTURE_QUERY_LEVELS, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %135 = call i32 @shader_addline(%struct.wined3d_string_buffer* %134, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %125
  %137 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %138 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @ARB_UNIFORM_BUFFER_OBJECT, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %146 = call i32 @shader_addline(%struct.wined3d_string_buffer* %145, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %136
  %148 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %149 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @EXT_GPU_SHADER4, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %157 = call i32 @shader_addline(%struct.wined3d_string_buffer* %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %147
  %159 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %160 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @EXT_TEXTURE_ARRAY, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %168 = call i32 @shader_addline(%struct.wined3d_string_buffer* %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %158
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
