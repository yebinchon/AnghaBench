; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_adapter_find_polyoffset_scale.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_adapter_find_polyoffset_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_color = type { float, float, float, float }
%struct.wined3d_vec3 = type { float, float, float }
%struct.TYPE_8__ = type { i64 }
%struct.wined3d_caps_gl_ctx = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (i32, i32*)*, i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32)*, i32 (float, float)*, i32 (i32)*, i32 (i32, i32, i32, i32)*, i32 (i32)*, i32 (float)*, i32 (float, float, float, float)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32*)* }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32*)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32*)* }

@wined3d_adapter_find_polyoffset_scale.blue = internal constant %struct.wined3d_color { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00 }, align 4
@wined3d_adapter_find_polyoffset_scale.geometry = internal constant [4 x %struct.wined3d_vec3] [%struct.wined3d_vec3 { float -1.000000e+00, float -1.000000e+00, float -1.000000e+00 }, %struct.wined3d_vec3 { float 1.000000e+00, float -1.000000e+00, float 0.000000e+00 }, %struct.wined3d_vec3 { float -1.000000e+00, float 1.000000e+00, float -1.000000e+00 }, %struct.wined3d_vec3 { float 1.000000e+00, float 1.000000e+00, float 0.000000e+00 }], align 16
@wined3d_settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"No FBOs, assuming polyoffset scale of 2^%u.\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MAX_LEVEL = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_BGRA = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT_8_8_8_8_REV = common dso_local global i32 0, align 4
@GL_RENDERBUFFER = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_DEPTH_ATTACHMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Setup framebuffer\00", align 1
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_POLYGON_OFFSET_FILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Misc parameters\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"PolygonOffset scale factor detection failed, using fallback value 2^%u.\0A\00", align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Test draw\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"readback\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"low %02u, high %02u, cur %2u, 0=0x%08x, 125=0x%08x, 131=0x%08x, 255=0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Found scale factor 2^%u for format %x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Delete framebuffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.wined3d_caps_gl_ctx*, i32)* @wined3d_adapter_find_polyoffset_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @wined3d_adapter_find_polyoffset_scale(%struct.wined3d_caps_gl_ctx* %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_caps_gl_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %15, i32 0, i32 0
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 32, i32* %11, align 4
  store i32 23, i32* %14, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wined3d_settings, i32 0, i32 0), align 8
  %19 = load i64, i64* @ORM_FBO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %14, align 4
  %25 = shl i32 1, %24
  %26 = uitofp i32 %25 to float
  store float %26, float* %3, align 4
  br label %270

27:                                               ; preds = %2
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 12
  %32 = load i32 (i32, i32*)*, i32 (i32, i32*)** %31, align 8
  %33 = call i32 %32(i32 1, i32* %8)
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %35 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load i32, i32* @GL_TEXTURE_2D, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 %38(i32 %39, i32 %40)
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %43 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 11
  %46 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %45, align 8
  %47 = load i32, i32* @GL_TEXTURE_2D, align 4
  %48 = load i32, i32* @GL_TEXTURE_MAX_LEVEL, align 4
  %49 = call i32 %46(i32 %47, i32 %48, i32 0)
  %50 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 10
  %54 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** %53, align 8
  %55 = load i32, i32* @GL_TEXTURE_2D, align 4
  %56 = load i32, i32* @GL_RGBA8, align 4
  %57 = load i32, i32* @GL_BGRA, align 4
  %58 = load i32, i32* @GL_UNSIGNED_INT_8_8_8_8_REV, align 4
  %59 = call i32 %54(i32 %55, i32 0, i32 %56, i32 256, i32 1, i32 0, i32 %57, i32 %58, i32 0)
  %60 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %61 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 8
  %63 = load i32 (i32, i32*)*, i32 (i32, i32*)** %62, align 8
  %64 = call i32 %63(i32 1, i32* %9)
  %65 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %66 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 7
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load i32, i32* @GL_RENDERBUFFER, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 %68(i32 %69, i32 %70)
  %72 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %73 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  %75 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %74, align 8
  %76 = load i32, i32* @GL_RENDERBUFFER, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 %75(i32 %76, i32 %77, i32 256, i32 1)
  %79 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %80 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load i32 (i32, i32*)*, i32 (i32, i32*)** %81, align 8
  %83 = call i32 %82(i32 1, i32* %7)
  %84 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %85 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %86, align 8
  %88 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 %87(i32 %88, i32 %89)
  %91 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %92 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %93, align 8
  %95 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %96 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %97 = load i32, i32* @GL_TEXTURE_2D, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 %94(i32 %95, i32 %96, i32 %97, i32 %98, i32 0)
  %100 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %101 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %102, align 8
  %104 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %105 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %106 = load i32, i32* @GL_RENDERBUFFER, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 %103(i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = call i32 @checkGLcall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %111 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 9
  %114 = load i32 (float, float, float, float)*, i32 (float, float, float, float)** %113, align 8
  %115 = call i32 %114(float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00)
  %116 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %117 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 8
  %120 = load i32 (float)*, i32 (float)** %119, align 8
  %121 = call i32 %120(float 5.000000e-01)
  %122 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %123 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 7
  %126 = load i32 (i32)*, i32 (i32)** %125, align 8
  %127 = load i32, i32* @GL_DEPTH_TEST, align 4
  %128 = call i32 %126(i32 %127)
  %129 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %130 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 7
  %133 = load i32 (i32)*, i32 (i32)** %132, align 8
  %134 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %135 = call i32 %133(i32 %134)
  %136 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %137 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 6
  %140 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %139, align 8
  %141 = call i32 %140(i32 0, i32 0, i32 256, i32 1)
  %142 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %143

143:                                              ; preds = %228, %27
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = sub i32 %144, %145
  %147 = icmp ule i32 %146, 1
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @ERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %12, align 4
  br label %229

152:                                              ; preds = %143
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add i32 %153, %154
  %156 = udiv i32 %155, 2
  store i32 %156, i32* %12, align 4
  %157 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %158 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 5
  %161 = load i32 (i32)*, i32 (i32)** %160, align 8
  %162 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %163 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %164 = or i32 %162, %163
  %165 = call i32 %161(i32 %164)
  %166 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %167 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load i32 (float, float)*, i32 (float, float)** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = shl i32 1, %171
  %173 = uitofp i32 %172 to float
  %174 = fmul float %173, 2.500000e-01
  %175 = call i32 %170(float 0.000000e+00, float %174)
  %176 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %177 = call i32 @draw_test_quad(%struct.wined3d_caps_gl_ctx* %176, %struct.wined3d_vec3* getelementptr inbounds ([4 x %struct.wined3d_vec3], [4 x %struct.wined3d_vec3]* @wined3d_adapter_find_polyoffset_scale.geometry, i64 0, i64 0), %struct.wined3d_color* @wined3d_adapter_find_polyoffset_scale.blue)
  %178 = call i32 @checkGLcall(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %179 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %180 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  %183 = load i32 (i32, i32)*, i32 (i32, i32)** %182, align 8
  %184 = load i32, i32* @GL_TEXTURE_2D, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 %183(i32 %184, i32 %185)
  %187 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %188 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %190, align 8
  %192 = load i32, i32* @GL_TEXTURE_2D, align 4
  %193 = load i32, i32* @GL_BGRA, align 4
  %194 = load i32, i32* @GL_UNSIGNED_INT_8_8_8_8_REV, align 4
  %195 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %196 = call i32 %191(i32 %192, i32 0, i32 %193, i32 %194, i32* %195)
  %197 = call i32 @checkGLcall(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %12, align 4
  %201 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 125
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 131
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 255
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %198, i32 %199, i32 %200, i32 %202, i32 %204, i32 %206, i32 %208)
  %210 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 125
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 255
  %213 = icmp slt i32 %212, 160
  br i1 %213, label %214, label %216

214:                                              ; preds = %152
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %11, align 4
  br label %228

216:                                              ; preds = %152
  %217 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 131
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 255
  %220 = icmp sgt i32 %219, 160
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, i32* %12, align 4
  store i32 %222, i32* %10, align 4
  br label %227

223:                                              ; preds = %216
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %5, align 4
  %226 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %224, i32 %225)
  br label %229

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227, %214
  br label %143

229:                                              ; preds = %223, %148
  %230 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %231 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32 (i32, i32*)*, i32 (i32, i32*)** %233, align 8
  %235 = call i32 %234(i32 1, i32* %8)
  %236 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %237 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i32 (i32, i32*)*, i32 (i32, i32*)** %238, align 8
  %240 = call i32 %239(i32 1, i32* %9)
  %241 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %242 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i32 (i32, i32*)*, i32 (i32, i32*)** %243, align 8
  %245 = call i32 %244(i32 1, i32* %7)
  %246 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %247 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32 (i32, i32)*, i32 (i32, i32)** %248, align 8
  %250 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %251 = call i32 %249(i32 %250, i32 0)
  %252 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %253 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %254 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32 (i32)*, i32 (i32)** %256, align 8
  %258 = load i32, i32* @GL_DEPTH_TEST, align 4
  %259 = call i32 %257(i32 %258)
  %260 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %261 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32 (i32)*, i32 (i32)** %263, align 8
  %265 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %266 = call i32 %264(i32 %265)
  %267 = load i32, i32* %12, align 4
  %268 = shl i32 1, %267
  %269 = uitofp i32 %268 to float
  store float %269, float* %3, align 4
  br label %270

270:                                              ; preds = %229, %21
  %271 = load float, float* %3, align 4
  ret float %271
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @draw_test_quad(%struct.wined3d_caps_gl_ctx*, %struct.wined3d_vec3*, %struct.wined3d_color*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
