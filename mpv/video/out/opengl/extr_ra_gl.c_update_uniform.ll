; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_update_uniform.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_update_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_renderpass = type { %struct.TYPE_5__, %struct.ra_renderpass_gl* }
%struct.TYPE_5__ = type { %struct.ra_renderpass_input* }
%struct.ra_renderpass_input = type { i32, i32, i32, i64 }
%struct.ra_renderpass_gl = type { i64, i32* }
%struct.ra_renderpass_input_val = type { i64, float* }
%struct.TYPE_7__ = type { i32 (i32)*, i32 (i32, i64, i32)*, i32 (i32, i32)*, i32 (i64)*, i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, float*)*, i32 (i32, i32, i32, float*)*, i32 (i32, float, float, float, float)*, i32 (i32, float, float, float)*, i32 (i32, float, float)*, i32 (i32, float)*, i32 (i32, i32)* }
%struct.ra_tex = type { %struct.TYPE_6__, %struct.ra_tex_gl* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ra_tex_gl = type { i32, i32, i32 }
%struct.ra_buf = type { %struct.ra_buf_gl* }
%struct.ra_buf_gl = type { i32, i32 }

@GL_FALSE = common dso_local global i32 0, align 4
@GL_WRITE_ONLY = common dso_local global i32 0, align 4
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_renderpass*, %struct.ra_renderpass_input_val*)* @update_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_uniform(%struct.ra* %0, %struct.ra_renderpass* %1, %struct.ra_renderpass_input_val* %2) #0 {
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_renderpass*, align 8
  %6 = alloca %struct.ra_renderpass_input_val*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.ra_renderpass_gl*, align 8
  %9 = alloca %struct.ra_renderpass_input*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca %struct.ra_tex*, align 8
  %13 = alloca %struct.ra_tex_gl*, align 8
  %14 = alloca %struct.ra_tex*, align 8
  %15 = alloca %struct.ra_tex_gl*, align 8
  %16 = alloca %struct.ra_buf*, align 8
  %17 = alloca %struct.ra_buf_gl*, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_renderpass* %1, %struct.ra_renderpass** %5, align 8
  store %struct.ra_renderpass_input_val* %2, %struct.ra_renderpass_input_val** %6, align 8
  %18 = load %struct.ra*, %struct.ra** %4, align 8
  %19 = call %struct.TYPE_7__* @ra_gl_get(%struct.ra* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.ra_renderpass*, %struct.ra_renderpass** %5, align 8
  %21 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %20, i32 0, i32 1
  %22 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %21, align 8
  store %struct.ra_renderpass_gl* %22, %struct.ra_renderpass_gl** %8, align 8
  %23 = load %struct.ra_renderpass*, %struct.ra_renderpass** %5, align 8
  %24 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %25, align 8
  %27 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %28 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %26, i64 %29
  store %struct.ra_renderpass_input* %30, %struct.ra_renderpass_input** %9, align 8
  %31 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %32 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %37 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %8, align 8
  %40 = getelementptr inbounds %struct.ra_renderpass_gl, %struct.ra_renderpass_gl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br label %43

43:                                               ; preds = %35, %3
  %44 = phi i1 [ false, %3 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %8, align 8
  %48 = getelementptr inbounds %struct.ra_renderpass_gl, %struct.ra_renderpass_gl* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %51 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %56 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %294 [
    i32 129, label %58
    i32 131, label %83
    i32 130, label %197
    i32 128, label %226
    i32 133, label %259
    i32 132, label %259
  ]

58:                                               ; preds = %43
  %59 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %60 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %63 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %296

72:                                               ; preds = %58
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 11
  %75 = load i32 (i32, i32)*, i32 (i32, i32)** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %78 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %77, i32 0, i32 1
  %79 = load float*, float** %78, align 8
  %80 = bitcast float* %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %75(i32 %76, i32 %81)
  br label %296

83:                                               ; preds = %43
  %84 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %85 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %84, i32 0, i32 1
  %86 = load float*, float** %85, align 8
  store float* %86, float** %11, align 8
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %296

90:                                               ; preds = %83
  %91 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %92 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %156

95:                                               ; preds = %90
  %96 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %97 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %153 [
    i32 1, label %99
    i32 2, label %108
    i32 3, label %120
    i32 4, label %135
  ]

99:                                               ; preds = %95
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 10
  %102 = load i32 (i32, float)*, i32 (i32, float)** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load float*, float** %11, align 8
  %105 = getelementptr inbounds float, float* %104, i64 0
  %106 = load float, float* %105, align 4
  %107 = call i32 %102(i32 %103, float %106)
  br label %155

108:                                              ; preds = %95
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 9
  %111 = load i32 (i32, float, float)*, i32 (i32, float, float)** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load float*, float** %11, align 8
  %114 = getelementptr inbounds float, float* %113, i64 0
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %11, align 8
  %117 = getelementptr inbounds float, float* %116, i64 1
  %118 = load float, float* %117, align 4
  %119 = call i32 %111(i32 %112, float %115, float %118)
  br label %155

120:                                              ; preds = %95
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 8
  %123 = load i32 (i32, float, float, float)*, i32 (i32, float, float, float)** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load float*, float** %11, align 8
  %126 = getelementptr inbounds float, float* %125, i64 0
  %127 = load float, float* %126, align 4
  %128 = load float*, float** %11, align 8
  %129 = getelementptr inbounds float, float* %128, i64 1
  %130 = load float, float* %129, align 4
  %131 = load float*, float** %11, align 8
  %132 = getelementptr inbounds float, float* %131, i64 2
  %133 = load float, float* %132, align 4
  %134 = call i32 %123(i32 %124, float %127, float %130, float %133)
  br label %155

135:                                              ; preds = %95
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 7
  %138 = load i32 (i32, float, float, float, float)*, i32 (i32, float, float, float, float)** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load float*, float** %11, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load float, float* %141, align 4
  %143 = load float*, float** %11, align 8
  %144 = getelementptr inbounds float, float* %143, i64 1
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %11, align 8
  %147 = getelementptr inbounds float, float* %146, i64 2
  %148 = load float, float* %147, align 4
  %149 = load float*, float** %11, align 8
  %150 = getelementptr inbounds float, float* %149, i64 3
  %151 = load float, float* %150, align 4
  %152 = call i32 %138(i32 %139, float %142, float %145, float %148, float %151)
  br label %155

153:                                              ; preds = %95
  %154 = call i32 (...) @abort() #3
  unreachable

155:                                              ; preds = %135, %120, %108, %99
  br label %196

156:                                              ; preds = %90
  %157 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %158 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %174

161:                                              ; preds = %156
  %162 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %163 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 6
  %169 = load i32 (i32, i32, i32, float*)*, i32 (i32, i32, i32, float*)** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @GL_FALSE, align 4
  %172 = load float*, float** %11, align 8
  %173 = call i32 %169(i32 %170, i32 1, i32 %171, float* %172)
  br label %195

174:                                              ; preds = %161, %156
  %175 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %176 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %192

179:                                              ; preds = %174
  %180 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %181 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 5
  %187 = load i32 (i32, i32, i32, float*)*, i32 (i32, i32, i32, float*)** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @GL_FALSE, align 4
  %190 = load float*, float** %11, align 8
  %191 = call i32 %187(i32 %188, i32 1, i32 %189, float* %190)
  br label %194

192:                                              ; preds = %179, %174
  %193 = call i32 (...) @abort() #3
  unreachable

194:                                              ; preds = %184
  br label %195

195:                                              ; preds = %194, %166
  br label %196

196:                                              ; preds = %195, %155
  br label %296

197:                                              ; preds = %43
  %198 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %199 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %198, i32 0, i32 1
  %200 = load float*, float** %199, align 8
  %201 = bitcast float* %200 to %struct.ra_tex**
  %202 = load %struct.ra_tex*, %struct.ra_tex** %201, align 8
  store %struct.ra_tex* %202, %struct.ra_tex** %12, align 8
  %203 = load %struct.ra_tex*, %struct.ra_tex** %12, align 8
  %204 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %203, i32 0, i32 1
  %205 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %204, align 8
  store %struct.ra_tex_gl* %205, %struct.ra_tex_gl** %13, align 8
  %206 = load %struct.ra_tex*, %struct.ra_tex** %12, align 8
  %207 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @assert(i32 %209)
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = load i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32)** %212, align 8
  %214 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %215 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %13, align 8
  %218 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @GL_FALSE, align 4
  %221 = load i32, i32* @GL_WRITE_ONLY, align 4
  %222 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %13, align 8
  %223 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 %213(i64 %216, i32 %219, i32 0, i32 %220, i32 0, i32 %221, i32 %224)
  br label %296

226:                                              ; preds = %43
  %227 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %228 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %227, i32 0, i32 1
  %229 = load float*, float** %228, align 8
  %230 = bitcast float* %229 to %struct.ra_tex**
  %231 = load %struct.ra_tex*, %struct.ra_tex** %230, align 8
  store %struct.ra_tex* %231, %struct.ra_tex** %14, align 8
  %232 = load %struct.ra_tex*, %struct.ra_tex** %14, align 8
  %233 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %232, i32 0, i32 1
  %234 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %233, align 8
  store %struct.ra_tex_gl* %234, %struct.ra_tex_gl** %15, align 8
  %235 = load %struct.ra_tex*, %struct.ra_tex** %14, align 8
  %236 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i32 (i64)*, i32 (i64)** %241, align 8
  %243 = load i64, i64* @GL_TEXTURE0, align 8
  %244 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %245 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %243, %246
  %248 = call i32 %242(i64 %247)
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i32 (i32, i32)*, i32 (i32, i32)** %250, align 8
  %252 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %15, align 8
  %253 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %15, align 8
  %256 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 %251(i32 %254, i32 %257)
  br label %296

259:                                              ; preds = %43, %43
  %260 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %261 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %260, i32 0, i32 1
  %262 = load float*, float** %261, align 8
  %263 = bitcast float* %262 to %struct.ra_buf**
  %264 = load %struct.ra_buf*, %struct.ra_buf** %263, align 8
  store %struct.ra_buf* %264, %struct.ra_buf** %16, align 8
  %265 = load %struct.ra_buf*, %struct.ra_buf** %16, align 8
  %266 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %265, i32 0, i32 0
  %267 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %266, align 8
  store %struct.ra_buf_gl* %267, %struct.ra_buf_gl** %17, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %269, align 8
  %271 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %17, align 8
  %272 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %275 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %17, align 8
  %278 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 %270(i32 %273, i64 %276, i32 %279)
  %281 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %9, align 8
  %282 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, 132
  br i1 %284, label %285, label %293

285:                                              ; preds = %259
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i32 (i32)*, i32 (i32)** %287, align 8
  %289 = load %struct.ra_buf_gl*, %struct.ra_buf_gl** %17, align 8
  %290 = getelementptr inbounds %struct.ra_buf_gl, %struct.ra_buf_gl* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 %288(i32 %291)
  br label %293

293:                                              ; preds = %285, %259
  br label %296

294:                                              ; preds = %43
  %295 = call i32 (...) @abort() #3
  unreachable

296:                                              ; preds = %293, %226, %197, %196, %89, %72, %71
  ret void
}

declare dso_local %struct.TYPE_7__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
