; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_gather4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_gather4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_11__, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, %struct.wined3d_shader_reg_maps* }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.glsl_src_param = type { i8* }
%struct.wined3d_shader_resource_info = type { i64, i32 }

@ARB_TEXTURE_GATHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"OpenGL implementation does not support textureGather.\0A\00", align 1
@WINED3DSIH_GATHER4_PO = common dso_local global i64 0, align 8
@WINED3DSIH_GATHER4_PO_C = common dso_local global i64 0, align 8
@resource_type_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected resource type %#x.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"textureGather%s(%s_sampler%u, %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WINED3DSIH_GATHER4_C = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c")%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_gather4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_gather4(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.glsl_src_param, align 8
  %11 = alloca %struct.glsl_src_param, align 8
  %12 = alloca %struct.glsl_src_param, align 8
  %13 = alloca %struct.wined3d_gl_info*, align 8
  %14 = alloca %struct.wined3d_shader_resource_info*, align 8
  %15 = alloca %struct.wined3d_string_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [6 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %24, align 8
  store %struct.wined3d_shader_reg_maps* %25, %struct.wined3d_shader_reg_maps** %8, align 8
  %26 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @shader_glsl_get_prefix(i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %31, i32 0, i32 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %34, align 8
  store %struct.wined3d_gl_info* %35, %struct.wined3d_gl_info** %13, align 8
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %39, align 8
  store %struct.wined3d_string_buffer* %40, %struct.wined3d_string_buffer** %15, align 8
  %41 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %42 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @ARB_TEXTURE_GATHER, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %1
  %49 = call i32 @FIXME(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %294

50:                                               ; preds = %1
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WINED3DSIH_GATHER4_PO, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %50
  %57 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WINED3DSIH_GATHER4_PO_C, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %64 = call i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %56, %50
  %67 = phi i1 [ true, %56 ], [ true, %50 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %19, align 4
  %69 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %70 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @WINED3DSIH_GATHER4_PO, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %76 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @WINED3DSIH_GATHER4_PO_C, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %74, %66
  %81 = phi i1 [ true, %66 ], [ %79, %74 ]
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 2, i32 1
  store i32 %83, i32* %3, align 4
  %84 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %85 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %84, i32 0, i32 2
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  %96 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %97 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %96, i32 0, i32 2
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = add i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  %109 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %110 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %109, i32 0, i32 2
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = add i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @shader_glsl_swizzle_get_component(i32 %117, i32 0)
  store i32 %118, i32* %7, align 4
  %119 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %120 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %119, i32 0, i32 0
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @shader_glsl_find_sampler(i32* %120, i32 %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %125 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %126 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %125, i32 0, i32 2
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = call %struct.wined3d_shader_resource_info* @shader_glsl_get_resource_info(%struct.wined3d_shader_instruction* %124, %struct.TYPE_12__* %131)
  store %struct.wined3d_shader_resource_info* %132, %struct.wined3d_shader_resource_info** %14, align 8
  %133 = icmp ne %struct.wined3d_shader_resource_info* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %80
  br label %294

135:                                              ; preds = %80
  %136 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %14, align 8
  %137 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @resource_type_info, align 4
  %140 = call i64 @ARRAY_SIZE(i32 %139)
  %141 = icmp sge i64 %138, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %14, align 8
  %144 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %145)
  br label %294

147:                                              ; preds = %135
  %148 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %14, align 8
  %149 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @shader_glsl_get_coord_size(i64 %150, i32* %16, i32* %17)
  %152 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %153 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %152, i32 0, i32 2
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @FALSE, align 4
  %161 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %162 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %161, i32 0, i32 3
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %168 = call i32 @shader_glsl_swizzle_to_str(i32 %159, i32 %160, i32 %166, i8* %167)
  %169 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %170 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %171 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %172 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %171, i32 0, i32 3
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 0
  %175 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %14, align 8
  %176 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %169, %struct.wined3d_shader_instruction* %170, %struct.TYPE_13__* %174, i32 %177)
  %179 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %180 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %181 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %180, i32 0, i32 2
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 0
  %184 = load i32, i32* %16, align 4
  %185 = shl i32 1, %184
  %186 = sub i32 %185, 1
  %187 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %179, %struct.TYPE_14__* %183, i32 %186, %struct.glsl_src_param* %10)
  %188 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %189 = load i32, i32* %19, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %6, align 4
  %195 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %10, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %188, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %192, i8* %193, i32 %194, i8* %196)
  %198 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %199 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @WINED3DSIH_GATHER4_C, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %209, label %203

203:                                              ; preds = %147
  %204 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %205 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @WINED3DSIH_GATHER4_PO_C, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %203, %147
  %210 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %211 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %212 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %211, i32 0, i32 2
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = add i32 %214, 2
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %216
  %218 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %219 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %210, %struct.TYPE_14__* %217, i32 %218, %struct.glsl_src_param* %11)
  %220 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %221 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %11, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %209, %203
  %225 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %226 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @WINED3DSIH_GATHER4_PO, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %224
  %231 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %232 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @WINED3DSIH_GATHER4_PO_C, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %230, %224
  %237 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %238 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %239 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %238, i32 0, i32 2
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i64 1
  %242 = load i32, i32* %17, align 4
  %243 = shl i32 1, %242
  %244 = sub i32 %243, 1
  %245 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %237, %struct.TYPE_14__* %241, i32 %244, %struct.glsl_src_param* %12)
  %246 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %247 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %12, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %248)
  br label %283

250:                                              ; preds = %230
  %251 = load i32, i32* %19, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %282

253:                                              ; preds = %250
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %255 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %256 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %254, align 4
  %259 = getelementptr inbounds i32, i32* %254, i64 1
  %260 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %261 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %259, align 4
  %264 = getelementptr inbounds i32, i32* %259, i64 1
  %265 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %266 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  store i32 %268, i32* %264, align 4
  %269 = getelementptr inbounds i32, i32* %264, i64 1
  %270 = getelementptr inbounds i32, i32* %254, i64 4
  br label %271

271:                                              ; preds = %271, %253
  %272 = phi i32* [ %269, %253 ], [ %273, %271 ]
  store i32 0, i32* %272, align 4
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = icmp eq i32* %273, %270
  br i1 %274, label %275, label %271

275:                                              ; preds = %271
  %276 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %277 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %278 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %279 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %280 = load i32, i32* %17, align 4
  %281 = call i32 @shader_glsl_append_imm_ivec(%struct.wined3d_string_buffer* %278, i32* %279, i32 %280)
  br label %282

282:                                              ; preds = %275, %250
  br label %283

283:                                              ; preds = %282, %236
  %284 = load i32, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %288 = load i32, i32* %7, align 4
  %289 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %286, %283
  %291 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %292 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %293 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %292)
  br label %294

294:                                              ; preds = %290, %142, %134, %48
  ret void
}

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_swizzle_get_component(i32, i32) #1

declare dso_local i32 @shader_glsl_find_sampler(i32*, i32, i32) #1

declare dso_local %struct.wined3d_shader_resource_info* @shader_glsl_get_resource_info(%struct.wined3d_shader_instruction*, %struct.TYPE_12__*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @shader_glsl_get_coord_size(i64, i32*, i32*) #1

declare dso_local i32 @shader_glsl_swizzle_to_str(i32, i32, i32, i8*) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_14__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_append_imm_ivec(%struct.wined3d_string_buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
