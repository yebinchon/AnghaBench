; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture1d_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture1d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { float*, i32, i32, %struct.wined3d_texture_sub_resource*, %struct.TYPE_8__, i32 }
%struct.wined3d_texture_sub_resource = type { i32*, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.wined3d_surface* }
%struct.wined3d_surface = type { i32, i32, i32, %struct.wined3d_texture* }
%struct.TYPE_8__ = type { i32 }
%struct.wined3d_resource_desc = type { i64, i32, i32, i32, i32, i32 }
%struct.wined3d_device = type { %struct.TYPE_5__*, %struct.wined3d_device_parent* }
%struct.TYPE_5__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_device_parent = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)* }
%struct.wined3d_parent_ops = type { i32 }

@EXT_TEXTURE_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"OpenGL implementation does not support array textures.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global %struct.wined3d_texture* null, align 8
@WINED3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"(%p) : Texture cannot be created with a format of WINED3DFMT_UNKNOWN.\0A\00", align 1
@WINED3DUSAGE_LEGACY_CUBEMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"1d textures can not be used for cube mapping, returning D3DERR_INVALIDCALL.\0A\00", align 1
@WINED3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Attempted to create a DYNAMIC texture in pool %s.\0A\00", align 1
@ARB_TEXTURE_NON_POWER_OF_TWO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [64 x i8] c"Creating a scratch NPOT 1d texture despite lack of HW support.\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Attempted to create a NPOT 1d texture (%u, %u, %u) without GL support.\0A\00", align 1
@WINED3DUSAGE_QUERY_GENMIPMAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [94 x i8] c"WINED3DUSAGE_QUERY_GENMIPMAP is set, and level count != 1, returning WINED3DERR_INVALIDCALL.\0A\00", align 1
@texture1d_ops = common dso_local global i32 0, align 4
@texture_resource_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Failed to initialize texture, returning %#x.\0A\00", align 1
@GL_TEXTURE_1D_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_1D = common dso_local global i32 0, align 4
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global %struct.wined3d_texture* null, align 8
@WINED3D_LOCATION_DISCARDED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"Failed to create texture1d parent, hr %#x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"parent %p, parent_ops %p.\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Created 1d texture surface level %u, layer %u @ %p.\0A\00", align 1
@WINED3D_OK = common dso_local global %struct.wined3d_texture* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_texture* (%struct.wined3d_texture*, %struct.wined3d_resource_desc*, i32, i32, %struct.wined3d_device*, i8*, %struct.wined3d_parent_ops*)* @texture1d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_texture* @texture1d_init(%struct.wined3d_texture* %0, %struct.wined3d_resource_desc* %1, i32 %2, i32 %3, %struct.wined3d_device* %4, i8* %5, %struct.wined3d_parent_ops* %6) #0 {
  %8 = alloca %struct.wined3d_texture*, align 8
  %9 = alloca %struct.wined3d_texture*, align 8
  %10 = alloca %struct.wined3d_resource_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.wined3d_parent_ops*, align 8
  %16 = alloca %struct.wined3d_device_parent*, align 8
  %17 = alloca %struct.wined3d_gl_info*, align 8
  %18 = alloca %struct.wined3d_surface*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.wined3d_texture*, align 8
  %22 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.wined3d_surface*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %9, align 8
  store %struct.wined3d_resource_desc* %1, %struct.wined3d_resource_desc** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.wined3d_device* %4, %struct.wined3d_device** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.wined3d_parent_ops* %6, %struct.wined3d_parent_ops** %15, align 8
  %25 = load %struct.wined3d_device*, %struct.wined3d_device** %13, align 8
  %26 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %25, i32 0, i32 1
  %27 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %26, align 8
  store %struct.wined3d_device_parent* %27, %struct.wined3d_device_parent** %16, align 8
  %28 = load %struct.wined3d_device*, %struct.wined3d_device** %13, align 8
  %29 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.wined3d_gl_info* %31, %struct.wined3d_gl_info** %17, align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %7
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @EXT_TEXTURE_ARRAY, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %44, %struct.wined3d_texture** %8, align 8
  br label %304

45:                                               ; preds = %34, %7
  %46 = load i64, i64* @WINED3DFMT_UNKNOWN, align 8
  %47 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %48 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %53 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %52)
  %54 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %54, %struct.wined3d_texture** %8, align 8
  br label %304

55:                                               ; preds = %45
  %56 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %57 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %64, %struct.wined3d_texture** %8, align 8
  br label %304

65:                                               ; preds = %55
  %66 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %67 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %74 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @wined3d_resource_access_is_managed(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %80 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78, %72
  %86 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %87 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.wined3d_texture* @wined3d_debug_resource_access(i32 %88)
  %90 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_texture* %89)
  %91 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %91, %struct.wined3d_texture** %8, align 8
  br label %304

92:                                               ; preds = %78
  %93 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %94 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @ARB_TEXTURE_NON_POWER_OF_TWO, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %92
  %101 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %102 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @is_power_of_two(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %100
  %107 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %108 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %127

115:                                              ; preds = %106
  %116 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %117 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %120 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %123 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %121, i32 %124)
  %126 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %126, %struct.wined3d_texture** %8, align 8
  br label %304

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %100, %92
  %129 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %130 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @WINED3DUSAGE_QUERY_GENMIPMAP, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i64 0, i64 0))
  %140 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %140, %struct.wined3d_texture** %8, align 8
  br label %304

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %128
  %143 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %10, align 8
  %147 = load %struct.wined3d_device*, %struct.wined3d_device** %13, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %15, align 8
  %150 = call %struct.wined3d_texture* @wined3d_texture_init(%struct.wined3d_texture* %143, i32* @texture1d_ops, i32 %144, i32 %145, %struct.wined3d_resource_desc* %146, i32 0, %struct.wined3d_device* %147, i8* %148, %struct.wined3d_parent_ops* %149, i32* @texture_resource_ops)
  store %struct.wined3d_texture* %150, %struct.wined3d_texture** %21, align 8
  %151 = call i64 @FAILED(%struct.wined3d_texture* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %155 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), %struct.wined3d_texture* %154)
  %156 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  store %struct.wined3d_texture* %156, %struct.wined3d_texture** %8, align 8
  br label %304

157:                                              ; preds = %142
  %158 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %159 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %158, i32 0, i32 0
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds float, float* %160, i64 0
  store float 1.000000e+00, float* %161, align 4
  %162 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %163 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %162, i32 0, i32 0
  %164 = load float*, float** %163, align 8
  %165 = getelementptr inbounds float, float* %164, i64 5
  store float 1.000000e+00, float* %165, align 4
  %166 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %167 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %166, i32 0, i32 0
  %168 = load float*, float** %167, align 8
  %169 = getelementptr inbounds float, float* %168, i64 10
  store float 1.000000e+00, float* %169, align 4
  %170 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %171 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %170, i32 0, i32 0
  %172 = load float*, float** %171, align 8
  %173 = getelementptr inbounds float, float* %172, i64 15
  store float 1.000000e+00, float* %173, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %157
  %177 = load i32, i32* @GL_TEXTURE_1D_ARRAY, align 4
  br label %180

178:                                              ; preds = %157
  %179 = load i32, i32* @GL_TEXTURE_1D, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  %182 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %183 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %185 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %186 = call i64 @wined3d_texture_use_pbo(%struct.wined3d_texture* %184, %struct.wined3d_gl_info* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %180
  %189 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %190 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %189, i32 0, i32 4
  %191 = call i32 @wined3d_resource_free_sysmem(%struct.TYPE_8__* %190)
  %192 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %193 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %194 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  br label %196

196:                                              ; preds = %188, %180
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %11, align 4
  %199 = sdiv i32 -1, %198
  %200 = icmp sgt i32 %197, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %202, %203
  %205 = call %struct.wined3d_surface* @heap_calloc(i32 %204, i32 24)
  store %struct.wined3d_surface* %205, %struct.wined3d_surface** %18, align 8
  %206 = icmp ne %struct.wined3d_surface* %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %201, %196
  %208 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %209 = call i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture* %208)
  %210 = load %struct.wined3d_texture*, %struct.wined3d_texture** @E_OUTOFMEMORY, align 8
  store %struct.wined3d_texture* %210, %struct.wined3d_texture** %8, align 8
  br label %304

211:                                              ; preds = %201
  store i32 0, i32* %19, align 4
  br label %212

212:                                              ; preds = %299, %211
  %213 = load i32, i32* %19, align 4
  %214 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %215 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp ult i32 %213, %216
  br i1 %217, label %218, label %302

218:                                              ; preds = %212
  store i32 0, i32* %20, align 4
  br label %219

219:                                              ; preds = %295, %218
  %220 = load i32, i32* %20, align 4
  %221 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %222 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = icmp ult i32 %220, %223
  br i1 %224, label %225, label %298

225:                                              ; preds = %219
  %226 = load i32, i32* %20, align 4
  %227 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %228 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = mul i32 %226, %229
  %231 = load i32, i32* %19, align 4
  %232 = add i32 %230, %231
  store i32 %232, i32* %23, align 4
  %233 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %234 = load i32, i32* %23, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %233, i64 %235
  store %struct.wined3d_surface* %236, %struct.wined3d_surface** %24, align 8
  %237 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %238 = load %struct.wined3d_surface*, %struct.wined3d_surface** %24, align 8
  %239 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %238, i32 0, i32 3
  store %struct.wined3d_texture* %237, %struct.wined3d_texture** %239, align 8
  %240 = load i32, i32* %19, align 4
  %241 = load %struct.wined3d_surface*, %struct.wined3d_surface** %24, align 8
  %242 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* %20, align 4
  %244 = load %struct.wined3d_surface*, %struct.wined3d_surface** %24, align 8
  %245 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.wined3d_surface*, %struct.wined3d_surface** %24, align 8
  %247 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %246, i32 0, i32 2
  %248 = call i32 @list_init(i32* %247)
  %249 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %250 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %249, i32 0, i32 3
  %251 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %250, align 8
  %252 = load i32, i32* %23, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %251, i64 %253
  store %struct.wined3d_texture_sub_resource* %254, %struct.wined3d_texture_sub_resource** %22, align 8
  %255 = load i32, i32* @WINED3D_LOCATION_DISCARDED, align 4
  %256 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %257 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 8
  %258 = load %struct.wined3d_surface*, %struct.wined3d_surface** %24, align 8
  %259 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %260 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  store %struct.wined3d_surface* %258, %struct.wined3d_surface** %261, align 8
  %262 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %16, align 8
  %263 = getelementptr inbounds %struct.wined3d_device_parent, %struct.wined3d_device_parent* %262, i32 0, i32 0
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)*, %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)** %265, align 8
  %267 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %16, align 8
  %268 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %269 = load i32, i32* %23, align 4
  %270 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %271 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %270, i32 0, i32 0
  %272 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %273 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %272, i32 0, i32 1
  %274 = call %struct.wined3d_texture* %266(%struct.wined3d_device_parent* %267, %struct.wined3d_texture* %268, i32 %269, i32** %271, i32* %273)
  store %struct.wined3d_texture* %274, %struct.wined3d_texture** %21, align 8
  %275 = call i64 @FAILED(%struct.wined3d_texture* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %225
  %278 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %279 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), %struct.wined3d_texture* %278)
  %280 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %22, align 8
  %281 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %280, i32 0, i32 0
  store i32* null, i32** %281, align 8
  %282 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %283 = call i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture* %282)
  %284 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  store %struct.wined3d_texture* %284, %struct.wined3d_texture** %8, align 8
  br label %304

285:                                              ; preds = %225
  %286 = load i8*, i8** %14, align 8
  %287 = ptrtoint i8* %286 to i32
  %288 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %15, align 8
  %289 = ptrtoint %struct.wined3d_parent_ops* %288 to i32
  %290 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %287, i32 %289)
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load %struct.wined3d_surface*, %struct.wined3d_surface** %24, align 8
  %294 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %291, i32 %292, %struct.wined3d_surface* %293)
  br label %295

295:                                              ; preds = %285
  %296 = load i32, i32* %20, align 4
  %297 = add i32 %296, 1
  store i32 %297, i32* %20, align 4
  br label %219

298:                                              ; preds = %219
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %19, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %19, align 4
  br label %212

302:                                              ; preds = %212
  %303 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3D_OK, align 8
  store %struct.wined3d_texture* %303, %struct.wined3d_texture** %8, align 8
  br label %304

304:                                              ; preds = %302, %277, %207, %153, %138, %115, %85, %62, %51, %42
  %305 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  ret %struct.wined3d_texture* %305
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @wined3d_resource_access_is_managed(i32) #1

declare dso_local %struct.wined3d_texture* @wined3d_debug_resource_access(i32) #1

declare dso_local i32 @is_power_of_two(i32) #1

declare dso_local i64 @FAILED(%struct.wined3d_texture*) #1

declare dso_local %struct.wined3d_texture* @wined3d_texture_init(%struct.wined3d_texture*, i32*, i32, i32, %struct.wined3d_resource_desc*, i32, %struct.wined3d_device*, i8*, %struct.wined3d_parent_ops*, i32*) #1

declare dso_local i64 @wined3d_texture_use_pbo(%struct.wined3d_texture*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @wined3d_resource_free_sysmem(%struct.TYPE_8__*) #1

declare dso_local %struct.wined3d_surface* @heap_calloc(i32, i32) #1

declare dso_local i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
