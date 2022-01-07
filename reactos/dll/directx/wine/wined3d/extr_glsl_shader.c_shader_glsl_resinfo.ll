; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_resinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_resinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.wined3d_string_buffer*, %struct.wined3d_gl_info* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.wined3d_shader_version }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.wined3d_shader_version = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i64* }
%struct.glsl_src_param = type { i8* }

@WINED3DSI_RESINFO_UINT = common dso_local global i64 0, align 8
@WINED3D_DATA_UINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unhandled flags %#x.\0A\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSPR_RESOURCE = common dso_local global i32 0, align 4
@WINED3D_SAMPLER_DEFAULT = common dso_local global i32 0, align 4
@resource_type_info = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected resource type %#x.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"uvec4(\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vec4(\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"textureSize(%s_sampler%u\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"imageSize(%s_image%u\00", align 1
@WINED3DSPR_UAV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"), \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"0, \00", align 1
@ARB_TEXTURE_QUERY_LEVELS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"textureQueryLevels(%s_sampler%u)\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"textureQueryLevels is not supported, returning 1 level.\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c")%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_resinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_resinfo(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_version*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.glsl_src_param, align 8
  %13 = alloca i32, align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %16, i32 0, i32 3
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  store %struct.wined3d_shader_version* %21, %struct.wined3d_shader_version** %3, align 8
  %22 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %22, i32 0, i32 3
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %25, align 8
  store %struct.wined3d_gl_info* %26, %struct.wined3d_gl_info** %4, align 8
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %27, i32 0, i32 3
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %30, align 8
  store %struct.wined3d_string_buffer* %31, %struct.wined3d_string_buffer** %5, align 8
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 2
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WINED3DSI_RESINFO_UINT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @WINED3D_DATA_UINT, align 4
  store i32 %45, i32* %11, align 4
  br label %57

46:                                               ; preds = %1
  %47 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %44
  %58 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %7, align 4
  %65 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %65, i32 0, i32 1
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %76 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %76, i32 0, i32 1
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i64 0
  %80 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %81 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %75, %struct.TYPE_21__* %79, i32 %80, %struct.glsl_src_param* %12)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @WINED3DSPR_RESOURCE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %57
  %86 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %87 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %86, i32 0, i32 3
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  %98 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %99 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %98, i32 0, i32 3
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @WINED3D_SAMPLER_DEFAULT, align 4
  %106 = call i32 @shader_glsl_find_sampler(i32* %103, i32 %104, i32 %105)
  store i32 %106, i32* %9, align 4
  br label %121

107:                                              ; preds = %57
  %108 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %108, i32 0, i32 3
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %107, %85
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** @resource_type_info, align 8
  %124 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %123)
  %125 = icmp uge i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %243

129:                                              ; preds = %121
  %130 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %131 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %132 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %133 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %132, i32 0, i32 2
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i64 0
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %130, %struct.wined3d_shader_instruction* %131, %struct.TYPE_22__* %135, i32 %136)
  store i32 %137, i32* %15, align 4
  %138 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %139 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %138, i32 0, i32 1
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i64 1
  %142 = load i32, i32* @FALSE, align 4
  %143 = load i32, i32* %15, align 4
  %144 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %145 = call i32 @shader_glsl_get_swizzle(%struct.TYPE_21__* %141, i32 %142, i32 %143, i8* %144)
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @WINED3D_DATA_UINT, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %129
  %150 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %151 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %155

152:                                              ; preds = %129
  %153 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %154 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @WINED3DSPR_RESOURCE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %161 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %3, align 8
  %162 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @shader_glsl_get_prefix(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %164, i32 %165)
  br label %175

167:                                              ; preds = %155
  %168 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %169 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %3, align 8
  %170 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @shader_glsl_get_prefix(i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %167, %159
  %176 = load i32, i32* %6, align 4
  %177 = call i64 @is_mipmapped(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @WINED3DSPR_UAV, align 4
  %182 = icmp ne i32 %180, %181
  br label %183

183:                                              ; preds = %179, %175
  %184 = phi i1 [ false, %175 ], [ %182, %179 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %190 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %12, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %195 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %196

196:                                              ; preds = %209, %193
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** @resource_type_info, align 8
  %199 = load i32, i32* %6, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 3, %203
  %205 = icmp ult i32 %197, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %196
  %207 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %208 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %10, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %196

212:                                              ; preds = %196
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %212
  %216 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %217 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %216, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  %219 = load i64, i64* @ARB_TEXTURE_QUERY_LEVELS, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %215
  %224 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %225 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %3, align 8
  %226 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @shader_glsl_get_prefix(i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %224, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %228, i32 %229)
  br label %235

231:                                              ; preds = %215
  %232 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %233 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %234 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %235

235:                                              ; preds = %231, %223
  br label %239

236:                                              ; preds = %212
  %237 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %238 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %235
  %240 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %241 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %242 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %241)
  br label %243

243:                                              ; preds = %239, %126
  ret void
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_21__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_find_sampler(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @shader_glsl_get_swizzle(%struct.TYPE_21__*, i32, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_get_prefix(i32) #1

declare dso_local i64 @is_mipmapped(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
