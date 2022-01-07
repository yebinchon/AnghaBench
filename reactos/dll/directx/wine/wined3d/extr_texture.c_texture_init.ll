; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i32, i32, float*, i32, i32, %struct.TYPE_14__, %struct.wined3d_texture_sub_resource*, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.wined3d_texture_sub_resource = type { i32, i32*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.wined3d_surface* }
%struct.wined3d_surface = type { i32, i32, i32, i32, %struct.wined3d_texture* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.wined3d_resource_desc = type { i32, i32, i32, i32, i64, i32 }
%struct.wined3d_device = type { %struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_18__*, %struct.wined3d_device_parent* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.wined3d_device_parent = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)* }
%struct.wined3d_parent_ops = type { i32 }
%struct.wined3d_format = type { i32* }

@WINED3DUSAGE_LEGACY_CUBEMAP = common dso_local global i32 0, align 4
@EXT_TEXTURE_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"OpenGL implementation does not support array textures.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global %struct.wined3d_texture* null, align 8
@WINED3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"(%p) : Texture cannot be created with a format of WINED3DFMT_UNKNOWN.\0A\00", align 1
@WINED3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Trying to create a managed texture with dynamic usage.\0A\00", align 1
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@WINED3DUSAGE_DEPTHSTENCIL = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CREATE_MAPPABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Creating a mappable texture that doesn't specify dynamic usage.\0A\00", align 1
@WINED3D_RESOURCE_ACCESS_CPU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Trying to create a CPU accessible render target.\0A\00", align 1
@ARB_TEXTURE_NON_POWER_OF_TWO = common dso_local global i64 0, align 8
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [93 x i8] c"Attempted to create a mipmapped/cube/array NPOT texture without unconditional NPOT support.\0A\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"Creating a scratch mipmapped/cube/array NPOT texture despite lack of HW support.\0A\00", align 1
@WINED3D_TEXTURE_COND_NP2 = common dso_local global i32 0, align 4
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@WINED3D_GL_NORMALIZED_TEXRECT = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_HEIGHT_SCALE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [82 x i8] c"Compressed or height scaled non-power-of-two (%ux%u) textures are not supported.\0A\00", align 1
@WINED3DERR_NOTAVAILABLE = common dso_local global %struct.wined3d_texture* null, align 8
@WINED3D_TEXTURE_COND_NP2_EMULATED = common dso_local global i32 0, align 4
@WINED3DUSAGE_TEXTURE = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"Dimensions (%ux%u) exceed the maximum texture size.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Creating an oversized (%ux%u) surface.\0A\00", align 1
@texture2d_ops = common dso_local global i32 0, align 4
@texture_resource_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to initialize texture, returning %#x.\0A\00", align 1
@WINED3D_GL_RES_TYPE_TEX_RECT = common dso_local global i64 0, align 8
@WINED3D_TEXTURE_POW2_MAT_IDENT = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_NORMALIZED_COORDS = common dso_local global i32 0, align 4
@GL_TEXTURE_RECTANGLE_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_ARB = common dso_local global i32 0, align 4
@ARB_TEXTURE_MULTISAMPLE = common dso_local global i64 0, align 8
@GL_TEXTURE_2D_MULTISAMPLE_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_2D_MULTISAMPLE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"x scale %.8e, y scale %.8e.\0A\00", align 1
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global %struct.wined3d_texture* null, align 8
@WINED3DUSAGE_OVERLAY = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DISCARDED = common dso_local global i32 0, align 4
@WINED3D_LOCATION_SYSMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"Failed to create surface parent, hr %#x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"parent %p, parent_ops %p.\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Created surface level %u, layer %u @ %p.\0A\00", align 1
@WINED3DUSAGE_OWNDC = common dso_local global i32 0, align 4
@WINED3D_NO3D = common dso_local global i32 0, align 4
@texture2d_create_dc = common dso_local global i32 0, align 4
@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global %struct.wined3d_texture* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_texture* (%struct.wined3d_texture*, %struct.wined3d_resource_desc*, i32, i32, i32, %struct.wined3d_device*, i8*, %struct.wined3d_parent_ops*)* @texture_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_texture* @texture_init(%struct.wined3d_texture* %0, %struct.wined3d_resource_desc* %1, i32 %2, i32 %3, i32 %4, %struct.wined3d_device* %5, i8* %6, %struct.wined3d_parent_ops* %7) #0 {
  %9 = alloca %struct.wined3d_texture*, align 8
  %10 = alloca %struct.wined3d_texture*, align 8
  %11 = alloca %struct.wined3d_resource_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_device*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.wined3d_parent_ops*, align 8
  %18 = alloca %struct.wined3d_device_parent*, align 8
  %19 = alloca %struct.wined3d_gl_info*, align 8
  %20 = alloca %struct.wined3d_surface*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.wined3d_texture*, align 8
  %27 = alloca %struct.wined3d_format*, align 8
  %28 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.wined3d_surface*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %10, align 8
  store %struct.wined3d_resource_desc* %1, %struct.wined3d_resource_desc** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.wined3d_device* %5, %struct.wined3d_device** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.wined3d_parent_ops* %7, %struct.wined3d_parent_ops** %17, align 8
  %31 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %32 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %31, i32 0, i32 3
  %33 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %32, align 8
  store %struct.wined3d_device_parent* %33, %struct.wined3d_device_parent** %18, align 8
  %34 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %35 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  store %struct.wined3d_gl_info* %37, %struct.wined3d_gl_info** %19, align 8
  %38 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %39 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %8
  %45 = load i32, i32* %12, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %49 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @EXT_TEXTURE_ARRAY, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %57, %struct.wined3d_texture** %9, align 8
  br label %688

58:                                               ; preds = %47, %44, %8
  %59 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  %60 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %61 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %66 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %65)
  %67 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %67, %struct.wined3d_texture** %9, align 8
  br label %688

68:                                               ; preds = %58
  %69 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %70 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %77 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @wined3d_resource_access_is_managed(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75, %68
  %84 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %85 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %88 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @WINED3DUSAGE_DEPTHSTENCIL, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %86, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @WINED3D_TEXTURE_CREATE_MAPPABLE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94, %83
  %102 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %103 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %110 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @WINED3D_RESOURCE_ACCESS_CPU, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %108, %101
  %118 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %119 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %21, align 4
  %121 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %122 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %22, align 4
  %124 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %125 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %128 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = and i32 %126, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %117
  %134 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %135 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %138 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  %141 = and i32 %136, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %246

143:                                              ; preds = %133, %117
  %144 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %145 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* @ARB_TEXTURE_NON_POWER_OF_TWO, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %246, label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 1
  br i1 %156, label %157, label %169

157:                                              ; preds = %154, %151
  %158 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %159 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %157
  %165 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.5, i64 0, i64 0))
  %166 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %166, %struct.wined3d_texture** %9, align 8
  br label %688

167:                                              ; preds = %157
  %168 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %154
  %170 = load i32, i32* @WINED3D_TEXTURE_COND_NP2, align 4
  %171 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %172 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %176 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %245, label %182

182:                                              ; preds = %169
  %183 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %184 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = load i64, i64* @WINED3D_GL_NORMALIZED_TEXRECT, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %245, label %190

190:                                              ; preds = %182
  %191 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %192 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %193 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %196 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info* %191, i32 %194, i32 %197)
  store %struct.wined3d_format* %198, %struct.wined3d_format** %27, align 8
  %199 = load %struct.wined3d_format*, %struct.wined3d_format** %27, align 8
  %200 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @WINED3DFMT_FLAG_COMPRESSED, align 4
  %206 = load i32, i32* @WINED3DFMT_FLAG_HEIGHT_SCALE, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %190
  %211 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %212 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %215 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i32 %213, i32 %216)
  %218 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_NOTAVAILABLE, align 8
  store %struct.wined3d_texture* %218, %struct.wined3d_texture** %9, align 8
  br label %688

219:                                              ; preds = %190
  store i32 1, i32* %22, align 4
  store i32 1, i32* %21, align 4
  br label %220

220:                                              ; preds = %226, %219
  %221 = load i32, i32* %21, align 4
  %222 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %223 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %21, align 4
  %228 = shl i32 %227, 1
  store i32 %228, i32* %21, align 4
  br label %220

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %236, %229
  %231 = load i32, i32* %22, align 4
  %232 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %233 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = load i32, i32* %22, align 4
  %238 = shl i32 %237, 1
  store i32 %238, i32* %22, align 4
  br label %230

239:                                              ; preds = %230
  %240 = load i32, i32* @WINED3D_TEXTURE_COND_NP2_EMULATED, align 4
  %241 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %242 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %239, %182, %169
  br label %246

246:                                              ; preds = %245, %143, %133
  %247 = load i32, i32* %21, align 4
  %248 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %249 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* %22, align 4
  %251 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %252 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %21, align 4
  %254 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %255 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp sgt i32 %253, %257
  br i1 %258, label %266, label %259

259:                                              ; preds = %246
  %260 = load i32, i32* %22, align 4
  %261 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %262 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp sgt i32 %260, %264
  br i1 %265, label %266, label %289

266:                                              ; preds = %259, %246
  %267 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %268 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %289

273:                                              ; preds = %266
  %274 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %275 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %273
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* %22, align 4
  %283 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %281, i32 %282)
  %284 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_NOTAVAILABLE, align 8
  store %struct.wined3d_texture* %284, %struct.wined3d_texture** %9, align 8
  br label %688

285:                                              ; preds = %273
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* %22, align 4
  %288 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %285, %266, %259
  %290 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %294 = load i32, i32* %14, align 4
  %295 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %296 = load i8*, i8** %16, align 8
  %297 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %17, align 8
  %298 = call %struct.wined3d_texture* @wined3d_texture_init(%struct.wined3d_texture* %290, i32* @texture2d_ops, i32 %291, i32 %292, %struct.wined3d_resource_desc* %293, i32 %294, %struct.wined3d_device* %295, i8* %296, %struct.wined3d_parent_ops* %297, i32* @texture_resource_ops)
  store %struct.wined3d_texture* %298, %struct.wined3d_texture** %26, align 8
  %299 = call i64 @FAILED(%struct.wined3d_texture* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %289
  %302 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  %303 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), %struct.wined3d_texture* %302)
  %304 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  store %struct.wined3d_texture* %304, %struct.wined3d_texture** %9, align 8
  br label %688

305:                                              ; preds = %289
  %306 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %307 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %306, i32 0, i32 6
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_RECT, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %340

312:                                              ; preds = %305
  %313 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %314 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = sitofp i32 %315 to float
  %317 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %318 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %317, i32 0, i32 3
  %319 = load float*, float** %318, align 8
  %320 = getelementptr inbounds float, float* %319, i64 0
  store float %316, float* %320, align 4
  %321 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %322 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = sitofp i32 %323 to float
  %325 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %326 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %325, i32 0, i32 3
  %327 = load float*, float** %326, align 8
  %328 = getelementptr inbounds float, float* %327, i64 5
  store float %324, float* %328, align 4
  %329 = load i32, i32* @WINED3D_TEXTURE_POW2_MAT_IDENT, align 4
  %330 = load i32, i32* @WINED3D_TEXTURE_NORMALIZED_COORDS, align 4
  %331 = or i32 %329, %330
  %332 = xor i32 %331, -1
  %333 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %334 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 8
  %337 = load i32, i32* @GL_TEXTURE_RECTANGLE_ARB, align 4
  %338 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %339 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %338, i32 0, i32 9
  store i32 %337, i32* %339, align 8
  br label %435

340:                                              ; preds = %305
  %341 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %342 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @WINED3D_TEXTURE_COND_NP2_EMULATED, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %376

347:                                              ; preds = %340
  %348 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %349 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = sitofp i32 %350 to float
  %352 = load i32, i32* %21, align 4
  %353 = sitofp i32 %352 to float
  %354 = fdiv float %351, %353
  %355 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %356 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %355, i32 0, i32 3
  %357 = load float*, float** %356, align 8
  %358 = getelementptr inbounds float, float* %357, i64 0
  store float %354, float* %358, align 4
  %359 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %360 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = sitofp i32 %361 to float
  %363 = load i32, i32* %22, align 4
  %364 = sitofp i32 %363 to float
  %365 = fdiv float %362, %364
  %366 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %367 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %366, i32 0, i32 3
  %368 = load float*, float** %367, align 8
  %369 = getelementptr inbounds float, float* %368, i64 5
  store float %365, float* %369, align 4
  %370 = load i32, i32* @WINED3D_TEXTURE_POW2_MAT_IDENT, align 4
  %371 = xor i32 %370, -1
  %372 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %373 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %374, %371
  store i32 %375, i32* %373, align 8
  br label %385

376:                                              ; preds = %340
  %377 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %378 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %377, i32 0, i32 3
  %379 = load float*, float** %378, align 8
  %380 = getelementptr inbounds float, float* %379, i64 0
  store float 1.000000e+00, float* %380, align 4
  %381 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %382 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %381, i32 0, i32 3
  %383 = load float*, float** %382, align 8
  %384 = getelementptr inbounds float, float* %383, i64 5
  store float 1.000000e+00, float* %384, align 4
  br label %385

385:                                              ; preds = %376, %347
  %386 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %387 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %385
  %393 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %394 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %395 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %394, i32 0, i32 9
  store i32 %393, i32* %395, align 8
  br label %434

396:                                              ; preds = %385
  %397 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %398 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %397, i32 0, i32 4
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %421

401:                                              ; preds = %396
  %402 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %403 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %402, i32 0, i32 0
  %404 = load i64*, i64** %403, align 8
  %405 = load i64, i64* @ARB_TEXTURE_MULTISAMPLE, align 8
  %406 = getelementptr inbounds i64, i64* %404, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %421

409:                                              ; preds = %401
  %410 = load i32, i32* %12, align 4
  %411 = icmp ugt i32 %410, 1
  br i1 %411, label %412, label %416

412:                                              ; preds = %409
  %413 = load i32, i32* @GL_TEXTURE_2D_MULTISAMPLE_ARRAY, align 4
  %414 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %415 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %414, i32 0, i32 9
  store i32 %413, i32* %415, align 8
  br label %420

416:                                              ; preds = %409
  %417 = load i32, i32* @GL_TEXTURE_2D_MULTISAMPLE, align 4
  %418 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %419 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %418, i32 0, i32 9
  store i32 %417, i32* %419, align 8
  br label %420

420:                                              ; preds = %416, %412
  br label %433

421:                                              ; preds = %401, %396
  %422 = load i32, i32* %12, align 4
  %423 = icmp ugt i32 %422, 1
  br i1 %423, label %424, label %428

424:                                              ; preds = %421
  %425 = load i32, i32* @GL_TEXTURE_2D_ARRAY, align 4
  %426 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %427 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %426, i32 0, i32 9
  store i32 %425, i32* %427, align 8
  br label %432

428:                                              ; preds = %421
  %429 = load i32, i32* @GL_TEXTURE_2D, align 4
  %430 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %431 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %430, i32 0, i32 9
  store i32 %429, i32* %431, align 8
  br label %432

432:                                              ; preds = %428, %424
  br label %433

433:                                              ; preds = %432, %420
  br label %434

434:                                              ; preds = %433, %392
  br label %435

435:                                              ; preds = %434, %312
  %436 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %437 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %436, i32 0, i32 3
  %438 = load float*, float** %437, align 8
  %439 = getelementptr inbounds float, float* %438, i64 10
  store float 1.000000e+00, float* %439, align 4
  %440 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %441 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %440, i32 0, i32 3
  %442 = load float*, float** %441, align 8
  %443 = getelementptr inbounds float, float* %442, i64 15
  store float 1.000000e+00, float* %443, align 4
  %444 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %445 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %444, i32 0, i32 3
  %446 = load float*, float** %445, align 8
  %447 = getelementptr inbounds float, float* %446, i64 0
  %448 = load float, float* %447, align 4
  %449 = fptoui float %448 to i32
  %450 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %451 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %450, i32 0, i32 3
  %452 = load float*, float** %451, align 8
  %453 = getelementptr inbounds float, float* %452, i64 5
  %454 = load float, float* %453, align 4
  %455 = fptoui float %454 to i32
  %456 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %449, i32 %455)
  %457 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %458 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %459 = call i64 @wined3d_texture_use_pbo(%struct.wined3d_texture* %457, %struct.wined3d_gl_info* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %435
  %462 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %463 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %464 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %463, i32 0, i32 6
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 2
  store i32 %462, i32* %465, align 4
  br label %466

466:                                              ; preds = %461, %435
  %467 = load i32, i32* %13, align 4
  %468 = load i32, i32* %12, align 4
  %469 = mul i32 %467, %468
  store i32 %469, i32* %25, align 4
  %470 = load i32, i32* %25, align 4
  %471 = load i32, i32* %12, align 4
  %472 = udiv i32 %470, %471
  %473 = load i32, i32* %13, align 4
  %474 = icmp ne i32 %472, %473
  br i1 %474, label %480, label %475

475:                                              ; preds = %466
  %476 = load i32, i32* %25, align 4
  %477 = call i8* @heap_calloc(i32 %476, i32 24)
  %478 = bitcast i8* %477 to %struct.wined3d_surface*
  store %struct.wined3d_surface* %478, %struct.wined3d_surface** %20, align 8
  %479 = icmp ne %struct.wined3d_surface* %478, null
  br i1 %479, label %484, label %480

480:                                              ; preds = %475, %466
  %481 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %482 = call i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture* %481)
  %483 = load %struct.wined3d_texture*, %struct.wined3d_texture** @E_OUTOFMEMORY, align 8
  store %struct.wined3d_texture* %483, %struct.wined3d_texture** %9, align 8
  br label %688

484:                                              ; preds = %475
  %485 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %486 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @WINED3DUSAGE_OVERLAY, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %530

491:                                              ; preds = %484
  %492 = load i32, i32* %25, align 4
  %493 = call i8* @heap_calloc(i32 %492, i32 8)
  %494 = bitcast i8* %493 to %struct.TYPE_12__*
  %495 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %496 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %495, i32 0, i32 8
  store %struct.TYPE_12__* %494, %struct.TYPE_12__** %496, align 8
  %497 = icmp ne %struct.TYPE_12__* %494, null
  br i1 %497, label %504, label %498

498:                                              ; preds = %491
  %499 = load %struct.wined3d_surface*, %struct.wined3d_surface** %20, align 8
  %500 = call i32 @heap_free(%struct.wined3d_surface* %499)
  %501 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %502 = call i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture* %501)
  %503 = load %struct.wined3d_texture*, %struct.wined3d_texture** @E_OUTOFMEMORY, align 8
  store %struct.wined3d_texture* %503, %struct.wined3d_texture** %9, align 8
  br label %688

504:                                              ; preds = %491
  store i32 0, i32* %23, align 4
  br label %505

505:                                              ; preds = %526, %504
  %506 = load i32, i32* %23, align 4
  %507 = load i32, i32* %25, align 4
  %508 = icmp ult i32 %506, %507
  br i1 %508, label %509, label %529

509:                                              ; preds = %505
  %510 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %511 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %510, i32 0, i32 8
  %512 = load %struct.TYPE_12__*, %struct.TYPE_12__** %511, align 8
  %513 = load i32, i32* %23, align 4
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 1
  %517 = call i32 @list_init(i32* %516)
  %518 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %519 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %518, i32 0, i32 8
  %520 = load %struct.TYPE_12__*, %struct.TYPE_12__** %519, align 8
  %521 = load i32, i32* %23, align 4
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 0
  %525 = call i32 @list_init(i32* %524)
  br label %526

526:                                              ; preds = %509
  %527 = load i32, i32* %23, align 4
  %528 = add i32 %527, 1
  store i32 %528, i32* %23, align 4
  br label %505

529:                                              ; preds = %505
  br label %530

530:                                              ; preds = %529, %484
  store i32 0, i32* %23, align 4
  br label %531

531:                                              ; preds = %683, %530
  %532 = load i32, i32* %23, align 4
  %533 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %534 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %533, i32 0, i32 4
  %535 = load i32, i32* %534, align 8
  %536 = icmp ult i32 %532, %535
  br i1 %536, label %537, label %686

537:                                              ; preds = %531
  store i32 0, i32* %24, align 4
  br label %538

538:                                              ; preds = %679, %537
  %539 = load i32, i32* %24, align 4
  %540 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %541 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %540, i32 0, i32 5
  %542 = load i32, i32* %541, align 4
  %543 = icmp ult i32 %539, %542
  br i1 %543, label %544, label %682

544:                                              ; preds = %538
  %545 = load i32, i32* %24, align 4
  %546 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %547 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %546, i32 0, i32 4
  %548 = load i32, i32* %547, align 8
  %549 = mul i32 %545, %548
  %550 = load i32, i32* %23, align 4
  %551 = add i32 %549, %550
  store i32 %551, i32* %29, align 4
  %552 = load %struct.wined3d_surface*, %struct.wined3d_surface** %20, align 8
  %553 = load i32, i32* %29, align 4
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %552, i64 %554
  store %struct.wined3d_surface* %555, %struct.wined3d_surface** %30, align 8
  %556 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %557 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %558 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %557, i32 0, i32 4
  store %struct.wined3d_texture* %556, %struct.wined3d_texture** %558, align 8
  %559 = load i32, i32* %23, align 4
  %560 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %561 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %560, i32 0, i32 0
  store i32 %559, i32* %561, align 8
  %562 = load i32, i32* %24, align 4
  %563 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %564 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %563, i32 0, i32 1
  store i32 %562, i32* %564, align 4
  %565 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %566 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %565, i32 0, i32 3
  %567 = call i32 @list_init(i32* %566)
  %568 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %569 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %568, i32 0, i32 7
  %570 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %569, align 8
  %571 = load i32, i32* %29, align 4
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %570, i64 %572
  store %struct.wined3d_texture_sub_resource* %573, %struct.wined3d_texture_sub_resource** %28, align 8
  %574 = load i32, i32* @WINED3D_LOCATION_DISCARDED, align 4
  %575 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %28, align 8
  %576 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %575, i32 0, i32 3
  store i32 %574, i32* %576, align 8
  %577 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %578 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %28, align 8
  %579 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %579, i32 0, i32 0
  store %struct.wined3d_surface* %577, %struct.wined3d_surface** %580, align 8
  %581 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %582 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %581, i32 0, i32 6
  %583 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* @WINED3DUSAGE_DEPTHSTENCIL, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %598, label %588

588:                                              ; preds = %544
  %589 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %590 = load i32, i32* %29, align 4
  %591 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %592 = call i32 @wined3d_texture_validate_location(%struct.wined3d_texture* %589, i32 %590, i32 %591)
  %593 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %594 = load i32, i32* %29, align 4
  %595 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %596 = xor i32 %595, -1
  %597 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %593, i32 %594, i32 %596)
  br label %598

598:                                              ; preds = %588, %544
  %599 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %18, align 8
  %600 = getelementptr inbounds %struct.wined3d_device_parent, %struct.wined3d_device_parent* %599, i32 0, i32 0
  %601 = load %struct.TYPE_15__*, %struct.TYPE_15__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %601, i32 0, i32 0
  %603 = load %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)*, %struct.wined3d_texture* (%struct.wined3d_device_parent*, %struct.wined3d_texture*, i32, i32**, i32*)** %602, align 8
  %604 = load %struct.wined3d_device_parent*, %struct.wined3d_device_parent** %18, align 8
  %605 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %606 = load i32, i32* %29, align 4
  %607 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %28, align 8
  %608 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %607, i32 0, i32 1
  %609 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %28, align 8
  %610 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %609, i32 0, i32 0
  %611 = call %struct.wined3d_texture* %603(%struct.wined3d_device_parent* %604, %struct.wined3d_texture* %605, i32 %606, i32** %608, i32* %610)
  store %struct.wined3d_texture* %611, %struct.wined3d_texture** %26, align 8
  %612 = call i64 @FAILED(%struct.wined3d_texture* %611)
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %622

614:                                              ; preds = %598
  %615 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  %616 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), %struct.wined3d_texture* %615)
  %617 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %28, align 8
  %618 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %617, i32 0, i32 1
  store i32* null, i32** %618, align 8
  %619 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %620 = call i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture* %619)
  %621 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  store %struct.wined3d_texture* %621, %struct.wined3d_texture** %9, align 8
  br label %688

622:                                              ; preds = %598
  %623 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %28, align 8
  %624 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %623, i32 0, i32 1
  %625 = load i32*, i32** %624, align 8
  %626 = ptrtoint i32* %625 to i32
  %627 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %28, align 8
  %628 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %626, i32 %629)
  %631 = load i32, i32* %23, align 4
  %632 = load i32, i32* %24, align 4
  %633 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %634 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %631, i32 %632, %struct.wined3d_surface* %633)
  %635 = load %struct.wined3d_resource_desc*, %struct.wined3d_resource_desc** %11, align 8
  %636 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* @WINED3DUSAGE_OWNDC, align 4
  %639 = and i32 %637, %638
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %650, label %641

641:                                              ; preds = %622
  %642 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %643 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %642, i32 0, i32 1
  %644 = load %struct.TYPE_16__*, %struct.TYPE_16__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = load i32, i32* @WINED3D_NO3D, align 4
  %648 = and i32 %646, %647
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %678

650:                                              ; preds = %641, %622
  %651 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %652 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %651, i32 0, i32 0
  %653 = load %struct.TYPE_19__*, %struct.TYPE_19__** %652, align 8
  %654 = load i32, i32* @texture2d_create_dc, align 4
  %655 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %656 = call i32 @wined3d_cs_init_object(%struct.TYPE_19__* %653, i32 %654, %struct.wined3d_surface* %655)
  %657 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %658 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %657, i32 0, i32 0
  %659 = load %struct.TYPE_19__*, %struct.TYPE_19__** %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %659, i32 0, i32 0
  %661 = load %struct.TYPE_17__*, %struct.TYPE_17__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %661, i32 0, i32 0
  %663 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %662, align 8
  %664 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  %665 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %664, i32 0, i32 0
  %666 = load %struct.TYPE_19__*, %struct.TYPE_19__** %665, align 8
  %667 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %668 = call i32 %663(%struct.TYPE_19__* %666, i32 %667)
  %669 = load %struct.wined3d_surface*, %struct.wined3d_surface** %30, align 8
  %670 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %669, i32 0, i32 2
  %671 = load i32, i32* %670, align 8
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %677, label %673

673:                                              ; preds = %650
  %674 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %675 = call i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture* %674)
  %676 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3DERR_INVALIDCALL, align 8
  store %struct.wined3d_texture* %676, %struct.wined3d_texture** %9, align 8
  br label %688

677:                                              ; preds = %650
  br label %678

678:                                              ; preds = %677, %641
  br label %679

679:                                              ; preds = %678
  %680 = load i32, i32* %24, align 4
  %681 = add i32 %680, 1
  store i32 %681, i32* %24, align 4
  br label %538

682:                                              ; preds = %538
  br label %683

683:                                              ; preds = %682
  %684 = load i32, i32* %23, align 4
  %685 = add i32 %684, 1
  store i32 %685, i32* %23, align 4
  br label %531

686:                                              ; preds = %531
  %687 = load %struct.wined3d_texture*, %struct.wined3d_texture** @WINED3D_OK, align 8
  store %struct.wined3d_texture* %687, %struct.wined3d_texture** %9, align 8
  br label %688

688:                                              ; preds = %686, %673, %614, %498, %480, %301, %280, %210, %164, %64, %55
  %689 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  ret %struct.wined3d_texture* %689
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @wined3d_resource_access_is_managed(i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i64 @FAILED(%struct.wined3d_texture*) #1

declare dso_local %struct.wined3d_texture* @wined3d_texture_init(%struct.wined3d_texture*, i32*, i32, i32, %struct.wined3d_resource_desc*, i32, %struct.wined3d_device*, i8*, %struct.wined3d_parent_ops*, i32*) #1

declare dso_local i64 @wined3d_texture_use_pbo(%struct.wined3d_texture*, %struct.wined3d_gl_info*) #1

declare dso_local i8* @heap_calloc(i32, i32) #1

declare dso_local i32 @wined3d_texture_cleanup_sync(%struct.wined3d_texture*) #1

declare dso_local i32 @heap_free(%struct.wined3d_surface*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @wined3d_texture_validate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @wined3d_cs_init_object(%struct.TYPE_19__*, i32, %struct.wined3d_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
