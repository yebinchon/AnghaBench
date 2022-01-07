; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_apply_sampler_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_apply_sampler_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i32 }
%struct.wined3d_sampler_desc = type { i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32* }
%struct.wined3d_context = type { %struct.TYPE_5__*, %struct.wined3d_gl_info* }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_8__, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i64)*, i32 (i32, i32, i32*)* }
%struct.gl_texture = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"texture %p, sampler_desc %p, context %p.\0A\00", align 1
@WINED3D_TEXTURE_IS_SRGB = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@WINED3D_TADDRESS_WRAP = common dso_local global i64 0, align 8
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_R = common dso_local global i32 0, align 4
@GL_TEXTURE_BORDER_COLOR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@ARB_TEXTURE_FILTER_ANISOTROPIC = common dso_local global i64 0, align 8
@GL_TEXTURE_MAX_ANISOTROPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Anisotropic filtering not supported.\0A\00", align 1
@WINED3D_SRGB_READ_WRITE_CONTROL = common dso_local global i32 0, align 4
@EXT_TEXTURE_SRGB_DECODE = common dso_local global i64 0, align 8
@GL_TEXTURE_SRGB_DECODE_EXT = common dso_local global i32 0, align 4
@GL_DECODE_EXT = common dso_local global i64 0, align 8
@GL_SKIP_DECODE_EXT = common dso_local global i64 0, align 8
@GL_TEXTURE_COMPARE_MODE_ARB = common dso_local global i32 0, align 4
@GL_COMPARE_R_TO_TEXTURE_ARB = common dso_local global i64 0, align 8
@GL_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Texture parameter application\00", align 1
@EXT_TEXTURE_LOD_BIAS = common dso_local global i64 0, align 8
@GL_TEXTURE_FILTER_CONTROL_EXT = common dso_local global i32 0, align 4
@GL_TEXTURE_LOD_BIAS_EXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"glTexEnvf(GL_TEXTURE_LOD_BIAS_EXT, ...)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_texture_apply_sampler_desc(%struct.wined3d_texture* %0, %struct.wined3d_sampler_desc* %1, %struct.wined3d_context* %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca %struct.wined3d_sampler_desc*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gl_texture*, align 8
  %10 = alloca i64, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store %struct.wined3d_sampler_desc* %1, %struct.wined3d_sampler_desc** %5, align 8
  store %struct.wined3d_context* %2, %struct.wined3d_context** %6, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 1
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %7, align 8
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %18 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %17, %struct.wined3d_sampler_desc* %18, %struct.wined3d_context* %19)
  %21 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WINED3D_TEXTURE_IS_SRGB, align 4
  %26 = and i32 %24, %25
  %27 = call %struct.gl_texture* @wined3d_texture_get_gl_texture(%struct.wined3d_texture* %21, i32 %26)
  store %struct.gl_texture* %27, %struct.gl_texture** %9, align 8
  %28 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %33 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %3
  %38 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %39 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %45 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %46 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @WINED3D_TADDRESS_WRAP, align 8
  %50 = sub nsw i64 %48, %49
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 %42(i32 %43, i32 %44, i64 %52)
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %56 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %37, %3
  %59 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %60 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %64 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %58
  %69 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %70 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %76 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %77 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @WINED3D_TADDRESS_WRAP, align 8
  %81 = sub nsw i64 %79, %80
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 %73(i32 %74, i32 %75, i64 %83)
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %87 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %68, %58
  %90 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %91 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %95 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %93, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %89
  %100 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %101 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @GL_TEXTURE_WRAP_R, align 4
  %107 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %108 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @WINED3D_TADDRESS_WRAP, align 8
  %112 = sub nsw i64 %110, %111
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 %104(i32 %105, i32 %106, i64 %114)
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %118 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %99, %89
  %121 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %122 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %126 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %125, i32 0, i32 10
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @memcmp(i32 %124, i32* %127, i32 4)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %120
  %131 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %132 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @GL_TEXTURE_BORDER_COLOR, align 4
  %138 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %139 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %138, i32 0, i32 10
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = call i32 %135(i32 %136, i32 %137, i32* %141)
  %143 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %144 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %148 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %147, i32 0, i32 10
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @memcpy(i32 %146, i32* %149, i32 4)
  br label %151

151:                                              ; preds = %130, %120
  %152 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %153 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %10, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %157 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %155, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %151
  %162 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %163 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %169 = load i64, i64* %10, align 8
  %170 = call i64 @wined3d_gl_mag_filter(i64 %169)
  %171 = call i32 %166(i32 %167, i32 %168, i64 %170)
  %172 = load i64, i64* %10, align 8
  %173 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %174 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  store i64 %172, i64* %175, align 8
  br label %176

176:                                              ; preds = %161, %151
  %177 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %178 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %181 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %179, %183
  br i1 %184, label %194, label %185

185:                                              ; preds = %176
  %186 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %187 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %190 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %188, %192
  br i1 %193, label %194, label %222

194:                                              ; preds = %185, %176
  %195 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %196 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %202 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %203 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %206 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @wined3d_gl_min_mip_filter(i64 %204, i64 %207)
  %209 = call i32 %199(i32 %200, i32 %201, i64 %208)
  %210 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %211 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %214 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  store i64 %212, i64* %215, align 8
  %216 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %217 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %220 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 5
  store i64 %218, i64* %221, align 8
  br label %222

222:                                              ; preds = %194, %185
  %223 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %224 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %10, align 8
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %228 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 6
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %226, %230
  br i1 %231, label %232, label %257

232:                                              ; preds = %222
  %233 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %234 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %233, i32 0, i32 2
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* @ARB_TEXTURE_FILTER_ANISOTROPIC, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %232
  %241 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %242 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @GL_TEXTURE_MAX_ANISOTROPY, align 4
  %248 = load i64, i64* %10, align 8
  %249 = call i32 %245(i32 %246, i32 %247, i64 %248)
  br label %252

250:                                              ; preds = %232
  %251 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %240
  %253 = load i64, i64* %10, align 8
  %254 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %255 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 6
  store i64 %253, i64* %256, align 8
  br label %257

257:                                              ; preds = %252, %222
  %258 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %259 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %258, i32 0, i32 9
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %265 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 8
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  %269 = xor i1 %268, true
  %270 = zext i1 %269 to i32
  %271 = icmp ne i32 %263, %270
  br i1 %271, label %272, label %314

272:                                              ; preds = %257
  %273 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %274 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %273, i32 0, i32 0
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @WINED3D_SRGB_READ_WRITE_CONTROL, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %314

281:                                              ; preds = %272
  %282 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %283 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %282, i32 0, i32 2
  %284 = load i64*, i64** %283, align 8
  %285 = load i64, i64* @EXT_TEXTURE_SRGB_DECODE, align 8
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %314

289:                                              ; preds = %281
  %290 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %291 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %294 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* @GL_TEXTURE_SRGB_DECODE_EXT, align 4
  %297 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %298 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %297, i32 0, i32 9
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %289
  %302 = load i64, i64* @GL_DECODE_EXT, align 8
  br label %305

303:                                              ; preds = %289
  %304 = load i64, i64* @GL_SKIP_DECODE_EXT, align 8
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %302, %301 ], [ %304, %303 ]
  %307 = call i32 %294(i32 %295, i32 %296, i64 %306)
  %308 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %309 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %308, i32 0, i32 9
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %312 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 8
  store i64 %310, i64* %313, align 8
  br label %314

314:                                              ; preds = %305, %281, %272, %257
  %315 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %316 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %315, i32 0, i32 8
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i32
  %321 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %322 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 7
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = icmp ne i32 %320, %327
  br i1 %328, label %329, label %361

329:                                              ; preds = %314
  %330 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %331 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %330, i32 0, i32 8
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %344

334:                                              ; preds = %329
  %335 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %336 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 1
  %339 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* @GL_TEXTURE_COMPARE_MODE_ARB, align 4
  %342 = load i64, i64* @GL_COMPARE_R_TO_TEXTURE_ARB, align 8
  %343 = call i32 %339(i32 %340, i32 %341, i64 %342)
  br label %354

344:                                              ; preds = %329
  %345 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %346 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 1
  %349 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* @GL_TEXTURE_COMPARE_MODE_ARB, align 4
  %352 = load i64, i64* @GL_NONE, align 8
  %353 = call i32 %349(i32 %350, i32 %351, i64 %352)
  br label %354

354:                                              ; preds = %344, %334
  %355 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %356 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %355, i32 0, i32 8
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.gl_texture*, %struct.gl_texture** %9, align 8
  %359 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 7
  store i64 %357, i64* %360, align 8
  br label %361

361:                                              ; preds = %354, %314
  %362 = call i32 @checkGLcall(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %363 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %364 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %363, i32 0, i32 2
  %365 = load i64*, i64** %364, align 8
  %366 = load i64, i64* @EXT_TEXTURE_LOD_BIAS, align 8
  %367 = getelementptr inbounds i64, i64* %365, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %383

370:                                              ; preds = %361
  %371 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %372 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 0
  %375 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %374, align 8
  %376 = load i32, i32* @GL_TEXTURE_FILTER_CONTROL_EXT, align 4
  %377 = load i32, i32* @GL_TEXTURE_LOD_BIAS_EXT, align 4
  %378 = load %struct.wined3d_sampler_desc*, %struct.wined3d_sampler_desc** %5, align 8
  %379 = getelementptr inbounds %struct.wined3d_sampler_desc, %struct.wined3d_sampler_desc* %378, i32 0, i32 7
  %380 = load i32, i32* %379, align 8
  %381 = call i32 %375(i32 %376, i32 %377, i32 %380)
  %382 = call i32 @checkGLcall(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %383

383:                                              ; preds = %370, %361
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, %struct.wined3d_sampler_desc*, %struct.wined3d_context*) #1

declare dso_local %struct.gl_texture* @wined3d_texture_get_gl_texture(%struct.wined3d_texture*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @wined3d_gl_mag_filter(i64) #1

declare dso_local i64 @wined3d_gl_min_mip_filter(i64, i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
