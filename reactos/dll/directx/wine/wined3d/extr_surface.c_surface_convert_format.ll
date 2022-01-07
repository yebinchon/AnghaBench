; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_convert_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_convert_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.wined3d_device*, %struct.wined3d_format* }
%struct.wined3d_device = type { i64 }
%struct.wined3d_format = type { i32*, i32, i64, i32 }
%struct.d3dfmt_converter_desc = type { i32 (i32*, i32*, i32, i32, i32, i32)* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_bo_address = type { i32 }
%struct.wined3d_resource_desc = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Cannot find a conversion function from format %s to %s.\0A\00", align 1
@WINED3D_RTYPE_TEXTURE_2D = common dso_local global i32 0, align 4
@WINED3D_MULTISAMPLE_NONE = common dso_local global i32 0, align 4
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@WINED3DUSAGE_PRIVATE = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_CPU = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CREATE_MAPPABLE = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CREATE_DISCARD = common dso_local global i32 0, align 4
@wined3d_null_parent_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed to create a destination texture for conversion.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to load the source sub-resource into %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to load the destination sub-resource into %s.\0A\00", align 1
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@WINED3D_MAP_READ = common dso_local global i32 0, align 4
@WINED3D_MAP_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Using upload conversion.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_texture* (%struct.wined3d_texture*, i32, %struct.wined3d_format*)* @surface_convert_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_texture* @surface_convert_format(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_format* %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_format*, align 8
  %10 = alloca %struct.wined3d_device*, align 8
  %11 = alloca %struct.d3dfmt_converter_desc*, align 8
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_context*, align 8
  %16 = alloca %struct.wined3d_texture*, align 8
  %17 = alloca %struct.wined3d_bo_address, align 4
  %18 = alloca %struct.wined3d_resource_desc, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.wined3d_bo_address, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_11__, align 4
  %26 = alloca %struct.TYPE_12__, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wined3d_format* %2, %struct.wined3d_format** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = urem i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load %struct.wined3d_format*, %struct.wined3d_format** %34, align 8
  store %struct.wined3d_format* %35, %struct.wined3d_format** %9, align 8
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %37 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %38, align 8
  store %struct.wined3d_device* %39, %struct.wined3d_device** %10, align 8
  store %struct.d3dfmt_converter_desc* null, %struct.d3dfmt_converter_desc** %11, align 8
  store %struct.wined3d_gl_info* null, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_context* null, %struct.wined3d_context** %15, align 8
  %40 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %41 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %44 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.d3dfmt_converter_desc* @find_converter(i32 %42, i32 %45)
  store %struct.d3dfmt_converter_desc* %46, %struct.d3dfmt_converter_desc** %11, align 8
  %47 = icmp ne %struct.d3dfmt_converter_desc* %46, null
  br i1 %47, label %95, label %48

48:                                               ; preds = %3
  %49 = load %struct.wined3d_device*, %struct.wined3d_device** %10, align 8
  %50 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %48
  %54 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %55 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @is_identity_fixup(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %53
  %60 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %61 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %59
  %65 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %66 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @is_identity_fixup(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %72 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %77 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @WINED3DFMT_FLAG_COMPRESSED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %75, %70, %64, %59, %53, %48
  %86 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %87 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @debug_d3dformat(i32 %88)
  %90 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %91 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @debug_d3dformat(i32 %92)
  %94 = call i32 @FIXME(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %93)
  store %struct.wined3d_texture* null, %struct.wined3d_texture** %4, align 8
  br label %283

95:                                               ; preds = %75, %3
  %96 = load i32, i32* @WINED3D_RTYPE_TEXTURE_2D, align 4
  %97 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 9
  store i32 %96, i32* %97, align 8
  %98 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %99 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @WINED3D_MULTISAMPLE_NONE, align 4
  %103 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 7
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 6
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %106 = load i32, i32* @WINED3DUSAGE_PRIVATE, align 4
  %107 = or i32 %105, %106
  %108 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* @WINED3D_RESOURCE_ACCESS_CPU, align 4
  %110 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %113 = or i32 %111, %112
  %114 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %115, i32 %116)
  %118 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 4
  store i32 %117, i32* %118, align 8
  %119 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %119, i32 %120)
  %122 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 3
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 2
  store i32 1, i32* %123, align 8
  %124 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 5
  store i64 0, i64* %124, align 8
  %125 = load %struct.wined3d_device*, %struct.wined3d_device** %10, align 8
  %126 = load i32, i32* @WINED3D_TEXTURE_CREATE_MAPPABLE, align 4
  %127 = load i32, i32* @WINED3D_TEXTURE_CREATE_DISCARD, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @wined3d_texture_create(%struct.wined3d_device* %125, %struct.wined3d_resource_desc* %18, i32 1, i32 1, i32 %128, i32* null, i32* null, i32* @wined3d_null_parent_ops, %struct.wined3d_texture** %16)
  %130 = call i64 @FAILED(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %95
  %133 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wined3d_texture* null, %struct.wined3d_texture** %4, align 8
  br label %283

134:                                              ; preds = %95
  %135 = load %struct.wined3d_device*, %struct.wined3d_device** %10, align 8
  %136 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.wined3d_device*, %struct.wined3d_device** %10, align 8
  %141 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %140, i32* null, i32 0)
  store %struct.wined3d_context* %141, %struct.wined3d_context** %15, align 8
  %142 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %143 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %142, i32 0, i32 0
  %144 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %143, align 8
  store %struct.wined3d_gl_info* %144, %struct.wined3d_gl_info** %12, align 8
  br label %145

145:                                              ; preds = %139, %134
  %146 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %147 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %19, align 4
  %150 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %150, i32 %151, %struct.wined3d_context* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @wined3d_debug_location(i32 %157)
  %159 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %156, %145
  %161 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %161, i32 %162, i32* %13, i32* %14)
  %164 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %19, align 4
  %167 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %164, i32 %165, %struct.wined3d_bo_address* %17, i32 %166)
  %168 = load %struct.d3dfmt_converter_desc*, %struct.d3dfmt_converter_desc** %11, align 8
  %169 = icmp ne %struct.d3dfmt_converter_desc* %168, null
  br i1 %169, label %170, label %236

170:                                              ; preds = %160
  %171 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %172 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %19, align 4
  %175 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %176 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %177 = load i32, i32* %19, align 4
  %178 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %175, i32 0, %struct.wined3d_context* %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %19, align 4
  %182 = call i32 @wined3d_debug_location(i32 %181)
  %183 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %170
  %185 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %186 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %185, i32 0, i32* %20, i32* %21)
  %187 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %187, i32 0, %struct.wined3d_bo_address* %22, i32 %188)
  %190 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %191 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %192 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %191, i32 0, i32 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %200 = load i32, i32* @WINED3D_MAP_READ, align 4
  %201 = call i8* @context_map_bo_address(%struct.wined3d_context* %190, %struct.wined3d_bo_address* %17, i32 %198, i32 %199, i32 %200)
  %202 = bitcast i8* %201 to i32*
  store i32* %202, i32** %23, align 8
  %203 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %204 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %205 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %204, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %211 = load i32, i32* @WINED3D_MAP_WRITE, align 4
  %212 = call i8* @context_map_bo_address(%struct.wined3d_context* %203, %struct.wined3d_bo_address* %22, i32 %209, i32 %210, i32 %211)
  %213 = bitcast i8* %212 to i32*
  store i32* %213, i32** %24, align 8
  %214 = load %struct.d3dfmt_converter_desc*, %struct.d3dfmt_converter_desc** %11, align 8
  %215 = getelementptr inbounds %struct.d3dfmt_converter_desc, %struct.d3dfmt_converter_desc* %214, i32 0, i32 0
  %216 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %215, align 8
  %217 = load i32*, i32** %23, align 8
  %218 = load i32*, i32** %24, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %20, align 4
  %221 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 %216(i32* %217, i32* %218, i32 %219, i32 %220, i32 %222, i32 %224)
  %226 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %227 = load i32, i32* %19, align 4
  %228 = xor i32 %227, -1
  %229 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %226, i32 0, i32 %228)
  %230 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %231 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %232 = call i32 @context_unmap_bo_address(%struct.wined3d_context* %230, %struct.wined3d_bo_address* %22, i32 %231)
  %233 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %234 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %235 = call i32 @context_unmap_bo_address(%struct.wined3d_context* %233, %struct.wined3d_bo_address* %17, i32 %234)
  br label %275

236:                                              ; preds = %160
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 0, i32* %237, align 4
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32 0, i32* %238, align 4
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %240 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %239, align 4
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %243 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %242, align 4
  %245 = bitcast %struct.TYPE_12__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %245, i8 0, i64 8, i1 false)
  %246 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %247 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %248 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %249 = load i32, i32* @FALSE, align 4
  %250 = call i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture* %247, %struct.wined3d_context* %248, i32 %249)
  %251 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %252 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %253 = load i32, i32* @FALSE, align 4
  %254 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %251, %struct.wined3d_context* %252, i32 %253)
  %255 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %256 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %255, i32 0, i32 1
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %263 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* @FALSE, align 4
  %266 = call i32 @wined3d_const_bo_address(%struct.wined3d_bo_address* %17)
  %267 = call i32 @wined3d_surface_upload_data(i32 %261, %struct.wined3d_gl_info* %262, %struct.wined3d_format* %263, %struct.TYPE_11__* %25, i32 %264, %struct.TYPE_12__* %26, i32 %265, i32 %266)
  %268 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %269 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %270 = call i32 @wined3d_texture_validate_location(%struct.wined3d_texture* %268, i32 0, i32 %269)
  %271 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %272 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %273 = xor i32 %272, -1
  %274 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %271, i32 0, i32 %273)
  br label %275

275:                                              ; preds = %236, %184
  %276 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %277 = icmp ne %struct.wined3d_context* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %280 = call i32 @context_release(%struct.wined3d_context* %279)
  br label %281

281:                                              ; preds = %278, %275
  %282 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  store %struct.wined3d_texture* %282, %struct.wined3d_texture** %4, align 8
  br label %283

283:                                              ; preds = %281, %132, %85
  %284 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  ret %struct.wined3d_texture* %284
}

declare dso_local %struct.d3dfmt_converter_desc* @find_converter(i32, i32) #1

declare dso_local i32 @is_identity_fixup(i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_texture_create(%struct.wined3d_device*, %struct.wined3d_resource_desc*, i32, i32, i32, i32*, i32*, i32*, %struct.wined3d_texture**) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @wined3d_texture_get_pitch(%struct.wined3d_texture*, i32, i32*, i32*) #1

declare dso_local i32 @wined3d_texture_get_memory(%struct.wined3d_texture*, i32, %struct.wined3d_bo_address*, i32) #1

declare dso_local i8* @context_map_bo_address(%struct.wined3d_context*, %struct.wined3d_bo_address*, i32, i32, i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @context_unmap_bo_address(%struct.wined3d_context*, %struct.wined3d_bo_address*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_surface_upload_data(i32, %struct.wined3d_gl_info*, %struct.wined3d_format*, %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @wined3d_const_bo_address(%struct.wined3d_bo_address*) #1

declare dso_local i32 @wined3d_texture_validate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
