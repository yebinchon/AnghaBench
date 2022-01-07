; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_draw_textured_quad.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_draw_textured_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i8*, i8* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_12__, i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (...)*, i32 (i32, i32)*, i32 (i32*)*, i32 (i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32)* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.blt_info = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"glEnable(bind_target)\00", align 1
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"glTexParameteri\00", align 1
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@WINED3D_TEXF_NONE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@EXT_TEXTURE_SRGB_DECODE = common dso_local global i64 0, align 8
@GL_TEXTURE_SRGB_DECODE_EXT = common dso_local global i32 0, align 4
@GL_SKIP_DECODE_EXT = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV_MODE = common dso_local global i32 0, align 4
@GL_REPLACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"glTexEnvi\00", align 1
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@WINED3D_TEXF_POINT = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_textured_quad(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_context* %2, %struct.TYPE_15__* %3, %struct.TYPE_15__* %4, i32 %5) #0 {
  %7 = alloca %struct.wined3d_texture*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_context*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_gl_info*, align 8
  %14 = alloca %struct.blt_info, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 0
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %13, align 8
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = call i32 @texture2d_get_blt_info(%struct.wined3d_texture* %18, i32 %19, %struct.TYPE_15__* %20, %struct.blt_info* %14)
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %23 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 6
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %26(i32 %28)
  %30 = call i32 @checkGLcall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %32 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %35 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @context_bind_texture(%struct.wined3d_context* %31, i32 %33, i32 %37)
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %40 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %42, align 8
  %44 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @wined3d_gl_mag_filter(i32 %47)
  %49 = call i32 %43(i32 %45, i32 %46, i32 %48)
  %50 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %52 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 5
  %55 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %54, align 8
  %56 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @WINED3D_TEXF_NONE, align 4
  %61 = call i32 @wined3d_gl_min_mip_filter(i32 %59, i32 %60)
  %62 = call i32 %55(i32 %57, i32 %58, i32 %61)
  %63 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %65 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %67, align 8
  %69 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %72 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %73 = call i32 %68(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %75 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 5
  %78 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %77, align 8
  %79 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %82 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %83 = call i32 %78(i32 %80, i32 %81, i32 %82)
  %84 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %85 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %84, i32 0, i32 0
  %86 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %85, align 8
  %87 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @EXT_TEXTURE_SRGB_DECODE, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %6
  %94 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %95 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 5
  %98 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %97, align 8
  %99 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GL_TEXTURE_SRGB_DECODE_EXT, align 4
  %102 = load i32, i32* @GL_SKIP_DECODE_EXT, align 4
  %103 = call i32 %98(i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %93, %6
  %105 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %106 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %108, align 8
  %110 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %111 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %112 = load i32, i32* @GL_REPLACE, align 4
  %113 = call i32 %109(i32 %110, i32 %111, i32 %112)
  %114 = call i32 @checkGLcall(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %116 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i32 (i32)*, i32 (i32)** %118, align 8
  %120 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %121 = call i32 %119(i32 %120)
  %122 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %123 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = load i32 (i32*)*, i32 (i32*)** %125, align 8
  %127 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = call i32 %126(i32* %130)
  %132 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %133 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32 (i32, i32)*, i32 (i32, i32)** %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 %136(i32 %139, i32 %142)
  %144 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %145 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32 (i32*)*, i32 (i32*)** %147, align 8
  %149 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = call i32 %148(i32* %152)
  %154 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %155 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32 (i32, i32)*, i32 (i32, i32)** %157, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 %158(i32 %161, i32 %164)
  %166 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %167 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32 (i32*)*, i32 (i32*)** %169, align 8
  %171 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 2
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = call i32 %170(i32* %174)
  %176 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %177 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32 (i32, i32)*, i32 (i32, i32)** %179, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 %180(i32 %183, i32 %186)
  %188 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %189 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load i32 (i32*)*, i32 (i32*)** %191, align 8
  %193 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 1
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 3
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = call i32 %192(i32* %196)
  %198 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %199 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i32 (i32, i32)*, i32 (i32, i32)** %201, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 %202(i32 %205, i32 %208)
  %210 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %211 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32 (...)*, i32 (...)** %213, align 8
  %215 = call i32 (...) %214()
  %216 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %217 = getelementptr inbounds %struct.blt_info, %struct.blt_info* %14, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @context_bind_texture(%struct.wined3d_context* %216, i32 %218, i32 0)
  %220 = load i8*, i8** @WINED3D_TEXF_POINT, align 8
  %221 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %222 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 3
  store i8* %220, i8** %224, align 8
  %225 = load i8*, i8** @WINED3D_TEXF_POINT, align 8
  %226 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %227 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  store i8* %225, i8** %229, align 8
  %230 = load i32, i32* @WINED3D_TEXF_NONE, align 4
  %231 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %232 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* @FALSE, align 4
  %236 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %237 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  store i32 %235, i32* %239, align 8
  ret void
}

declare dso_local i32 @texture2d_get_blt_info(%struct.wined3d_texture*, i32, %struct.TYPE_15__*, %struct.blt_info*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @context_bind_texture(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @wined3d_gl_mag_filter(i32) #1

declare dso_local i32 @wined3d_gl_min_mip_filter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
