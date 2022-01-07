; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_tex = type { %struct.TYPE_9__, %struct.ra_tex_gl* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ra_tex_gl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ra = type { i32 }
%struct.ra_tex_params = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 (i32)*, i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32*)* }

@GL_LINEAR = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_REPEAT = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_R = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"after creating texture\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Trying to create renderable texture with unsupported format.\0A\00", align 1
@MPGL_CAP_FB = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Error: framebuffer completeness check failed (error=%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"after creating framebuffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ra_tex* (%struct.ra*, %struct.ra_tex_params*)* @gl_tex_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ra_tex* @gl_tex_create(%struct.ra* %0, %struct.ra_tex_params* %1) #0 {
  %3 = alloca %struct.ra_tex*, align 8
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_tex_params*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.ra_tex*, align 8
  %8 = alloca %struct.ra_tex_gl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_tex_params* %1, %struct.ra_tex_params** %5, align 8
  %12 = load %struct.ra*, %struct.ra** %4, align 8
  %13 = call %struct.TYPE_10__* @ra_gl_get(%struct.ra* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %15 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 7
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.ra*, %struct.ra** %4, align 8
  %24 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %25 = call %struct.ra_tex* @gl_tex_create_blank(%struct.ra* %23, %struct.ra_tex_params* %24)
  store %struct.ra_tex* %25, %struct.ra_tex** %7, align 8
  %26 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %27 = icmp ne %struct.ra_tex* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store %struct.ra_tex* null, %struct.ra_tex** %3, align 8
  br label %327

29:                                               ; preds = %2
  %30 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %31 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %30, i32 0, i32 1
  %32 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %31, align 8
  store %struct.ra_tex_gl* %32, %struct.ra_tex_gl** %8, align 8
  %33 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %34 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 11
  %37 = load i32 (i32, i32*)*, i32 (i32, i32*)** %36, align 8
  %38 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %39 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %38, i32 0, i32 1
  %40 = call i32 %37(i32 1, i32* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %45 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %48 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %43(i32 %46, i32 %49)
  %51 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %52 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %29
  %56 = load i32, i32* @GL_LINEAR, align 4
  br label %59

57:                                               ; preds = %29
  %58 = load i32, i32* @GL_NEAREST, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %62 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @GL_REPEAT, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 10
  %73 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %72, align 8
  %74 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %75 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 %73(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 10
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %81, align 8
  %83 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %84 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 %82(i32 %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 10
  %91 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %90, align 8
  %92 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %93 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 %91(i32 %94, i32 %95, i32 %96)
  %98 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %99 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %69
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 10
  %105 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %104, align 8
  %106 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %107 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 %105(i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %102, %69
  %113 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %114 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 2
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 10
  %120 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %119, align 8
  %121 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %122 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @GL_TEXTURE_WRAP_R, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 %120(i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %117, %112
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 6
  %130 = load i32 (i32, i32)*, i32 (i32, i32)** %129, align 8
  %131 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %132 = call i32 %130(i32 %131, i32 1)
  %133 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %134 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %214 [
    i32 1, label %136
    i32 2, label %159
    i32 3, label %185
  ]

136:                                              ; preds = %127
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 9
  %139 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32)** %138, align 8
  %140 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %141 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %144 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %147 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %150 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %153 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %156 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 %139(i32 %142, i32 0, i32 %145, i32 %148, i32 0, i32 %151, i32 %154, i32 %157)
  br label %214

159:                                              ; preds = %127
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 8
  %162 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** %161, align 8
  %163 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %164 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %167 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %170 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %173 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %176 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %179 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %182 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 %162(i32 %165, i32 0, i32 %168, i32 %171, i32 %174, i32 0, i32 %177, i32 %180, i32 %183)
  br label %214

185:                                              ; preds = %127
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 7
  %188 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %187, align 8
  %189 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %190 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %193 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %196 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %199 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %202 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %205 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %208 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ra_tex_params*, %struct.ra_tex_params** %5, align 8
  %211 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 %188(i32 %191, i32 0, i32 %194, i32 %197, i32 %200, i32 %203, i32 0, i32 %206, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %127, %185, %159, %136
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 6
  %217 = load i32 (i32, i32)*, i32 (i32, i32)** %216, align 8
  %218 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %219 = call i32 %217(i32 %218, i32 4)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 5
  %222 = load i32 (i32, i32)*, i32 (i32, i32)** %221, align 8
  %223 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %224 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 %222(i32 %225, i32 0)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %228 = load %struct.ra*, %struct.ra** %4, align 8
  %229 = getelementptr inbounds %struct.ra, %struct.ra* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @gl_check_error(%struct.TYPE_10__* %227, i32 %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %232 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %233 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %255, label %237

237:                                              ; preds = %214
  %238 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %239 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %255, label %243

243:                                              ; preds = %237
  %244 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %245 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %243
  %250 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %251 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %325

255:                                              ; preds = %249, %243, %237, %214
  %256 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %257 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %255
  %264 = load %struct.ra*, %struct.ra** %4, align 8
  %265 = call i32 (%struct.ra*, i8*, ...) @MP_ERR(%struct.ra* %264, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %266 = load %struct.ra*, %struct.ra** %4, align 8
  %267 = call i32 @ra_tex_free(%struct.ra* %266, %struct.ra_tex** %7)
  store %struct.ra_tex* null, %struct.ra_tex** %3, align 8
  br label %327

268:                                              ; preds = %255
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @MPGL_CAP_FB, align 4
  %273 = and i32 %271, %272
  %274 = call i32 @assert(i32 %273)
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 4
  %277 = load i32 (i32, i32*)*, i32 (i32, i32*)** %276, align 8
  %278 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %279 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %278, i32 0, i32 2
  %280 = call i32 %277(i32 1, i32* %279)
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 2
  %283 = load i32 (i32, i32)*, i32 (i32, i32)** %282, align 8
  %284 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %285 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %286 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = call i32 %283(i32 %284, i32 %287)
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 3
  %291 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %290, align 8
  %292 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %293 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %294 = load i32, i32* @GL_TEXTURE_2D, align 4
  %295 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %296 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 %291(i32 %292, i32 %293, i32 %294, i32 %297, i32 0)
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  %301 = load i64 (i32)*, i64 (i32)** %300, align 8
  %302 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %303 = call i64 %301(i32 %302)
  store i64 %303, i64* %11, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 2
  %306 = load i32 (i32, i32)*, i32 (i32, i32)** %305, align 8
  %307 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %308 = call i32 %306(i32 %307, i32 0)
  %309 = load i64, i64* %11, align 8
  %310 = load i64, i64* @GL_FRAMEBUFFER_COMPLETE, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %319

312:                                              ; preds = %268
  %313 = load %struct.ra*, %struct.ra** %4, align 8
  %314 = load i64, i64* %11, align 8
  %315 = trunc i64 %314 to i32
  %316 = call i32 (%struct.ra*, i8*, ...) @MP_ERR(%struct.ra* %313, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %315)
  %317 = load %struct.ra*, %struct.ra** %4, align 8
  %318 = call i32 @ra_tex_free(%struct.ra* %317, %struct.ra_tex** %7)
  store %struct.ra_tex* null, %struct.ra_tex** %3, align 8
  br label %327

319:                                              ; preds = %268
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %321 = load %struct.ra*, %struct.ra** %4, align 8
  %322 = getelementptr inbounds %struct.ra, %struct.ra* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @gl_check_error(%struct.TYPE_10__* %320, i32 %323, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %325

325:                                              ; preds = %319, %249
  %326 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  store %struct.ra_tex* %326, %struct.ra_tex** %3, align 8
  br label %327

327:                                              ; preds = %325, %312, %263, %28
  %328 = load %struct.ra_tex*, %struct.ra_tex** %3, align 8
  ret %struct.ra_tex* %328
}

declare dso_local %struct.TYPE_10__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.ra_tex* @gl_tex_create_blank(%struct.ra*, %struct.ra_tex_params*) #1

declare dso_local i32 @gl_check_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @MP_ERR(%struct.ra*, i8*, ...) #1

declare dso_local i32 @ra_tex_free(%struct.ra*, %struct.ra_tex**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
