; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_renderpass_run.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_renderpass_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_renderpass_run_params = type { i32, i32*, i32*, i32, i32, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_9__*, %struct.ra_renderpass* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.ra_tex_gl* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ra_tex_gl = type { i32 }
%struct.ra_renderpass = type { %struct.TYPE_10__, %struct.ra_renderpass_gl* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ra_renderpass_gl = type { i32, i32 }
%struct.TYPE_11__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32, i32)*, i32 (i32, i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32*)* }

@GL_TEXTURE0 = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_COLOR = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@GL_TEXTURE_FETCH_BARRIER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_renderpass_run_params*)* @gl_renderpass_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_renderpass_run(%struct.ra* %0, %struct.ra_renderpass_run_params* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_renderpass_run_params*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.ra_renderpass*, align 8
  %7 = alloca %struct.ra_renderpass_gl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ra_tex_gl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_renderpass_run_params* %1, %struct.ra_renderpass_run_params** %4, align 8
  %12 = load %struct.ra*, %struct.ra** %3, align 8
  %13 = call %struct.TYPE_11__* @ra_gl_get(%struct.ra* %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %15 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %14, i32 0, i32 8
  %16 = load %struct.ra_renderpass*, %struct.ra_renderpass** %15, align 8
  store %struct.ra_renderpass* %16, %struct.ra_renderpass** %6, align 8
  %17 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %18 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %17, i32 0, i32 1
  %19 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %18, align 8
  store %struct.ra_renderpass_gl* %19, %struct.ra_renderpass_gl** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %7, align 8
  %24 = getelementptr inbounds %struct.ra_renderpass_gl, %struct.ra_renderpass_gl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %22(i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %43, %2
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %30 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.ra*, %struct.ra** %3, align 8
  %35 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %36 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %37 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @update_uniform(%struct.ra* %34, %struct.ra_renderpass* %35, i32* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %27

46:                                               ; preds = %27
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load i32, i32* @GL_TEXTURE0, align 4
  %51 = call i32 %49(i32 %50)
  %52 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %53 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %252 [
    i32 128, label %56
    i32 129, label %227
  ]

56:                                               ; preds = %46
  %57 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %58 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %57, i32 0, i32 7
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %60, align 8
  store %struct.ra_tex_gl* %61, %struct.ra_tex_gl** %9, align 8
  %62 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %63 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %62, i32 0, i32 7
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %70 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %69, i32 0, i32 7
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %76 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %74, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %83, align 8
  %85 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %86 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %87 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 %84(i32 %85, i32 %88)
  %90 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %91 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %56
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 10
  %98 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %97, align 8
  %99 = icmp ne i32 (i32, i32, i32*)* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %102 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @GL_COLOR, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %10, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 10
  %113 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %112, align 8
  %114 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %115 = call i32 %113(i32 %114, i32 1, i32* %10)
  br label %116

116:                                              ; preds = %109, %95, %56
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 9
  %119 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %118, align 8
  %120 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %121 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %125 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %129 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %128, i32 0, i32 6
  %130 = bitcast %struct.TYPE_12__* %129 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @mp_rect_w(i64 %131)
  %133 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %134 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %133, i32 0, i32 6
  %135 = bitcast %struct.TYPE_12__* %134 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @mp_rect_h(i64 %136)
  %138 = call i32 %119(i32 %123, i32 %127, i32 %132, i32 %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 8
  %141 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %140, align 8
  %142 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %143 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %147 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %151 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %150, i32 0, i32 5
  %152 = bitcast %struct.TYPE_12__* %151 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @mp_rect_w(i64 %153)
  %155 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %156 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %155, i32 0, i32 5
  %157 = bitcast %struct.TYPE_12__* %156 to i64*
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @mp_rect_h(i64 %158)
  %160 = call i32 %141(i32 %145, i32 %149, i32 %154, i32 %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 6
  %163 = load i32 (i32)*, i32 (i32)** %162, align 8
  %164 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %165 = call i32 %163(i32 %164)
  %166 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %167 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %201

171:                                              ; preds = %116
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 7
  %174 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %173, align 8
  %175 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %176 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @map_blend(i32 %178)
  %180 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %181 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @map_blend(i32 %183)
  %185 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %186 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @map_blend(i32 %188)
  %190 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %191 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @map_blend(i32 %193)
  %195 = call i32 %174(i32 %179, i32 %184, i32 %189, i32 %194)
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 6
  %198 = load i32 (i32)*, i32 (i32)** %197, align 8
  %199 = load i32, i32* @GL_BLEND, align 4
  %200 = call i32 %198(i32 %199)
  br label %201

201:                                              ; preds = %171, %116
  %202 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %7, align 8
  %203 = getelementptr inbounds %struct.ra_renderpass_gl, %struct.ra_renderpass_gl* %202, i32 0, i32 0
  %204 = load i32, i32* @GL_TRIANGLES, align 4
  %205 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %206 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %209 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @gl_vao_draw_data(i32* %203, i32 %204, i32 %207, i32 %210)
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 5
  %214 = load i32 (i32)*, i32 (i32)** %213, align 8
  %215 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %216 = call i32 %214(i32 %215)
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 5
  %219 = load i32 (i32)*, i32 (i32)** %218, align 8
  %220 = load i32, i32* @GL_BLEND, align 4
  %221 = call i32 %219(i32 %220)
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 4
  %224 = load i32 (i32, i32)*, i32 (i32, i32)** %223, align 8
  %225 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %226 = call i32 %224(i32 %225, i32 0)
  br label %254

227:                                              ; preds = %46
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  %230 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %229, align 8
  %231 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %232 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %237 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %242 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = load i32, i32* %244, align 4
  %246 = call i32 %230(i32 %235, i32 %240, i32 %245)
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  %249 = load i32 (i32)*, i32 (i32)** %248, align 8
  %250 = load i32, i32* @GL_TEXTURE_FETCH_BARRIER_BIT, align 4
  %251 = call i32 %249(i32 %250)
  br label %254

252:                                              ; preds = %46
  %253 = call i32 (...) @abort() #3
  unreachable

254:                                              ; preds = %227, %201
  store i32 0, i32* %11, align 4
  br label %255

255:                                              ; preds = %271, %254
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %258 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %255
  %262 = load %struct.ra*, %struct.ra** %3, align 8
  %263 = load %struct.ra_renderpass*, %struct.ra_renderpass** %6, align 8
  %264 = load %struct.ra_renderpass_run_params*, %struct.ra_renderpass_run_params** %4, align 8
  %265 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = call i32 @disable_binding(%struct.ra* %262, %struct.ra_renderpass* %263, i32* %269)
  br label %271

271:                                              ; preds = %261
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  br label %255

274:                                              ; preds = %255
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = load i32 (i32)*, i32 (i32)** %276, align 8
  %278 = load i32, i32* @GL_TEXTURE0, align 4
  %279 = call i32 %277(i32 %278)
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i32 (i32)*, i32 (i32)** %281, align 8
  %283 = call i32 %282(i32 0)
  ret void
}

declare dso_local %struct.TYPE_11__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @update_uniform(%struct.ra*, %struct.ra_renderpass*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_rect_w(i64) #1

declare dso_local i32 @mp_rect_h(i64) #1

declare dso_local i32 @map_blend(i32) #1

declare dso_local i32 @gl_vao_draw_data(i32*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @disable_binding(%struct.ra*, %struct.ra_renderpass*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
