; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_texture_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_texture_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wined3d_adapter = type { %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.wined3d_gl_info*, %struct.shader_caps*)* }
%struct.shader_caps = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.wined3d_gl_info*, %struct.fragment_caps*)* }
%struct.fragment_caps = type { i32 }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_format = type { i32*, i64, i64, i64, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@WINED3D_FRAGMENT_CAP_SRGB_WRITE = common dso_local global i32 0, align 4
@WINED3D_SHADER_CAP_SRGB_WRITE = common dso_local global i32 0, align 4
@format_texture_info = common dso_local global %struct.TYPE_13__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@ARB_TEXTURE_FLOAT = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_FLOAT = common dso_local global i32 0, align 4
@EXT_TEXTURE_INTEGER = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_INTEGER = common dso_local global i32 0, align 4
@COLOR_FIXUP_IDENTITY = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_1D = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_BUFFER = common dso_local global i64 0, align 8
@EXT_TEXTURE3D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_3D = common dso_local global i64 0, align 8
@ARB_TEXTURE_CUBE_MAP = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_CUBE = common dso_local global i64 0, align 8
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_RECT = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_RB = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_TEXTURE = common dso_local global i32 0, align 4
@WINED3D_SRGB_READ_WRITE_CONTROL = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_SRGB_READ = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_SRGB_WRITE = common dso_local global i32 0, align 4
@format_srgb_info = common dso_local global %struct.TYPE_13__* null, align 8
@EXT_TEXTURE_SRGB = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_adapter*, %struct.wined3d_gl_info*)* @init_format_texture_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_format_texture_info(%struct.wined3d_adapter* %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_adapter*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_format*, align 8
  %7 = alloca %struct.wined3d_format*, align 8
  %8 = alloca %struct.fragment_caps, align 4
  %9 = alloca %struct.shader_caps, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_adapter* %0, %struct.wined3d_adapter** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  %13 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32 (%struct.wined3d_gl_info*, %struct.fragment_caps*)*, i32 (%struct.wined3d_gl_info*, %struct.fragment_caps*)** %16, align 8
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %19 = call i32 %17(%struct.wined3d_gl_info* %18, %struct.fragment_caps* %8)
  %20 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32 (%struct.wined3d_gl_info*, %struct.shader_caps*)*, i32 (%struct.wined3d_gl_info*, %struct.shader_caps*)** %23, align 8
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %26 = call i32 %24(%struct.wined3d_gl_info* %25, %struct.shader_caps* %9)
  %27 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WINED3D_FRAGMENT_CAP_SRGB_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WINED3D_SHADER_CAP_SRGB_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %32, %2
  %39 = phi i1 [ false, %2 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %449, %38
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %43)
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %452

46:                                               ; preds = %41
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info* %47, i32 %53)
  store %struct.wined3d_format* %54, %struct.wined3d_format** %6, align 8
  %55 = icmp ne %struct.wined3d_format* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %454

58:                                               ; preds = %46
  %59 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %60 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %61, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %58
  br label %449

72:                                               ; preds = %58
  %73 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %74 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @ARB_TEXTURE_FLOAT, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %72
  %81 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %82 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @WINED3DFMT_FLAG_FLOAT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %449

91:                                               ; preds = %80, %72
  %92 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %93 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @EXT_TEXTURE_INTEGER, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %91
  %100 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %101 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @WINED3DFMT_FLAG_INTEGER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %449

110:                                              ; preds = %99, %91
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %118 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %126 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %134 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %133, i32 0, i32 11
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %136 = load i32, i32* %10, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %142 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %150 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %149, i32 0, i32 9
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @COLOR_FIXUP_IDENTITY, align 4
  %152 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %153 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %152, i32 0, i32 8
  store i32 %151, i32* %153, align 4
  %154 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %155 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 4
  %157 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %158 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %161 = load i32, i32* %10, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %167 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_1D, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %165
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %174 = load i32, i32* %10, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %180 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %178
  store i32 %185, i32* %183, align 4
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %187 = load i32, i32* %10, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %193 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @WINED3D_GL_RES_TYPE_BUFFER, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %191
  store i32 %198, i32* %196, align 4
  %199 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %200 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i64, i64* @EXT_TEXTURE3D, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %110
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %208 = load i32, i32* %10, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %214 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %206
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %220 = load i32, i32* %10, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %226 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_3D, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %224
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %218, %206, %110
  %233 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %234 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %233, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %232
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %242 = load i32, i32* %10, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %248 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_CUBE, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %246
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %240, %232
  %255 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %256 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %255, i32 0, i32 0
  %257 = load i64*, i64** %256, align 8
  %258 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %254
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %264 = load i32, i32* %10, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %270 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_RECT, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %268
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %262, %254
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %278 = load i32, i32* %10, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %284 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @WINED3D_GL_RES_TYPE_RB, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %282
  store i32 %289, i32* %287, align 4
  %290 = load i32, i32* @WINED3DFMT_FLAG_TEXTURE, align 4
  %291 = xor i32 %290, -1
  %292 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %293 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @WINED3D_GL_RES_TYPE_RB, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, %291
  store i32 %298, i32* %296, align 4
  %299 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %300 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %303 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %301, %304
  br i1 %305, label %306, label %325

306:                                              ; preds = %276
  %307 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %308 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @WINED3D_SRGB_READ_WRITE_CONTROL, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %325, label %314

314:                                              ; preds = %306
  %315 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %316 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %319 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %318, i32 0, i32 2
  store i64 %317, i64* %319, align 8
  %320 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %321 = load i32, i32* @WINED3DFMT_FLAG_SRGB_READ, align 4
  %322 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %323 = or i32 %321, %322
  %324 = call i32 @format_clear_flag(%struct.wined3d_format* %320, i32 %323)
  br label %325

325:                                              ; preds = %314, %306, %276
  %326 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %327 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %329 = load i32, i32* %10, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i64 %330
  %332 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %333 = load i32, i32* %12, align 4
  %334 = load i32, i32* @FALSE, align 4
  %335 = call i32 @query_internal_format(%struct.wined3d_adapter* %326, %struct.wined3d_format* %327, %struct.TYPE_13__* %331, %struct.wined3d_gl_info* %332, i32 %333, i32 %334)
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %337 = load i32, i32* %10, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 8
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %343 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %342, i32 0, i32 6
  store i32 %341, i32* %343, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %345 = load i32, i32* %10, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %351 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %350, i32 0, i32 5
  store i32 %349, i32* %351, align 4
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %353 = load i32, i32* %10, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %359 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %358, i32 0, i32 4
  store i32 %357, i32* %359, align 8
  store %struct.wined3d_format* null, %struct.wined3d_format** %7, align 8
  store i32 0, i32* %11, align 4
  br label %360

360:                                              ; preds = %390, %325
  %361 = load i32, i32* %11, align 4
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_srgb_info, align 8
  %363 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %362)
  %364 = icmp ult i32 %361, %363
  br i1 %364, label %365, label %393

365:                                              ; preds = %360
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_srgb_info, align 8
  %367 = load i32, i32* %11, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 4
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %373 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %371, %374
  br i1 %375, label %376, label %389

376:                                              ; preds = %365
  %377 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_srgb_info, align 8
  %379 = load i32, i32* %11, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = call %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info* %377, i32 %383)
  store %struct.wined3d_format* %384, %struct.wined3d_format** %7, align 8
  %385 = icmp ne %struct.wined3d_format* %384, null
  br i1 %385, label %388, label %386

386:                                              ; preds = %376
  %387 = load i32, i32* @FALSE, align 4
  store i32 %387, i32* %3, align 4
  br label %454

388:                                              ; preds = %376
  br label %393

389:                                              ; preds = %365
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %11, align 4
  %392 = add i32 %391, 1
  store i32 %392, i32* %11, align 4
  br label %360

393:                                              ; preds = %388, %360
  %394 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %395 = icmp ne %struct.wined3d_format* %394, null
  br i1 %395, label %397, label %396

396:                                              ; preds = %393
  br label %449

397:                                              ; preds = %393
  %398 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %399 = load %struct.wined3d_format*, %struct.wined3d_format** %6, align 8
  %400 = call i32 @copy_format(%struct.wined3d_format* %398, %struct.wined3d_format* %399)
  %401 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %402 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %401, i32 0, i32 0
  %403 = load i64*, i64** %402, align 8
  %404 = load i64, i64* @EXT_TEXTURE_SRGB, align 8
  %405 = getelementptr inbounds i64, i64* %403, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %448

408:                                              ; preds = %397
  %409 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %410 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @WINED3D_SRGB_READ_WRITE_CONTROL, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %448, label %416

416:                                              ; preds = %408
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %418 = load i32, i32* %10, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %424 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %423, i32 0, i32 1
  store i64 %422, i64* %424, align 8
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %426 = load i32, i32* %10, align 4
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %432 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %431, i32 0, i32 2
  store i64 %430, i64* %432, align 8
  %433 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %434 = load i32, i32* @WINED3DFMT_FLAG_SRGB_READ, align 4
  %435 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %436 = or i32 %434, %435
  %437 = call i32 @format_set_flag(%struct.wined3d_format* %433, i32 %436)
  %438 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %439 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** @format_texture_info, align 8
  %441 = load i32, i32* %10, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i64 %442
  %444 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %445 = load i32, i32* %12, align 4
  %446 = load i32, i32* @TRUE, align 4
  %447 = call i32 @query_internal_format(%struct.wined3d_adapter* %438, %struct.wined3d_format* %439, %struct.TYPE_13__* %443, %struct.wined3d_gl_info* %444, i32 %445, i32 %446)
  br label %448

448:                                              ; preds = %416, %408, %397
  br label %449

449:                                              ; preds = %448, %396, %109, %90, %71
  %450 = load i32, i32* %10, align 4
  %451 = add i32 %450, 1
  store i32 %451, i32* %10, align 4
  br label %41

452:                                              ; preds = %41
  %453 = load i32, i32* @TRUE, align 4
  store i32 %453, i32* %3, align 4
  br label %454

454:                                              ; preds = %452, %386, %56
  %455 = load i32, i32* %3, align 4
  ret i32 %455
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @format_clear_flag(%struct.wined3d_format*, i32) #1

declare dso_local i32 @query_internal_format(%struct.wined3d_adapter*, %struct.wined3d_format*, %struct.TYPE_13__*, %struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i32 @copy_format(%struct.wined3d_format*, %struct.wined3d_format*) #1

declare dso_local i32 @format_set_flag(%struct.wined3d_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
