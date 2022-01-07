; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasd5_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasd5_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slasd5_.b = internal global float 0.000000e+00, align 4
@slasd5_.c__ = internal global float 0.000000e+00, align 4
@slasd5_.w = internal global float 0.000000e+00, align 4
@slasd5_.del = internal global float 0.000000e+00, align 4
@slasd5_.tau = internal global float 0.000000e+00, align 4
@slasd5_.delsq = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slasd5_(i32* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %16 = load float*, float** %14, align 8
  %17 = getelementptr inbounds float, float* %16, i32 -1
  store float* %17, float** %14, align 8
  %18 = load float*, float** %11, align 8
  %19 = getelementptr inbounds float, float* %18, i32 -1
  store float* %19, float** %11, align 8
  %20 = load float*, float** %10, align 8
  %21 = getelementptr inbounds float, float* %20, i32 -1
  store float* %21, float** %10, align 8
  %22 = load float*, float** %9, align 8
  %23 = getelementptr inbounds float, float* %22, i32 -1
  store float* %23, float** %9, align 8
  %24 = load float*, float** %9, align 8
  %25 = getelementptr inbounds float, float* %24, i64 2
  %26 = load float, float* %25, align 4
  %27 = load float*, float** %9, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  %29 = load float, float* %28, align 4
  %30 = fsub float %26, %29
  store float %30, float* @slasd5_.del, align 4
  %31 = load float, float* @slasd5_.del, align 4
  %32 = load float*, float** %9, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %9, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  %37 = load float, float* %36, align 4
  %38 = fadd float %34, %37
  %39 = fmul float %31, %38
  store float %39, float* @slasd5_.delsq, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %300

43:                                               ; preds = %7
  %44 = load float*, float** %12, align 8
  %45 = load float, float* %44, align 4
  %46 = fmul float %45, 4.000000e+00
  %47 = load float*, float** %10, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %10, align 8
  %51 = getelementptr inbounds float, float* %50, i64 2
  %52 = load float, float* %51, align 4
  %53 = fmul float %49, %52
  %54 = load float*, float** %9, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %9, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  %60 = fmul float %59, 3.000000e+00
  %61 = fadd float %56, %60
  %62 = fdiv float %53, %61
  %63 = load float*, float** %10, align 8
  %64 = getelementptr inbounds float, float* %63, i64 1
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %10, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  %68 = load float, float* %67, align 4
  %69 = fmul float %65, %68
  %70 = load float*, float** %9, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  %72 = load float, float* %71, align 4
  %73 = fmul float %72, 3.000000e+00
  %74 = load float*, float** %9, align 8
  %75 = getelementptr inbounds float, float* %74, i64 2
  %76 = load float, float* %75, align 4
  %77 = fadd float %73, %76
  %78 = fdiv float %69, %77
  %79 = fsub float %62, %78
  %80 = fmul float %46, %79
  %81 = load float, float* @slasd5_.del, align 4
  %82 = fdiv float %80, %81
  %83 = fadd float %82, 1.000000e+00
  store float %83, float* @slasd5_.w, align 4
  %84 = load float, float* @slasd5_.w, align 4
  %85 = fcmp ogt float %84, 0.000000e+00
  br i1 %85, label %86, label %184

86:                                               ; preds = %43
  %87 = load float, float* @slasd5_.delsq, align 4
  %88 = load float*, float** %12, align 8
  %89 = load float, float* %88, align 4
  %90 = load float*, float** %10, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %10, align 8
  %94 = getelementptr inbounds float, float* %93, i64 1
  %95 = load float, float* %94, align 4
  %96 = fmul float %92, %95
  %97 = load float*, float** %10, align 8
  %98 = getelementptr inbounds float, float* %97, i64 2
  %99 = load float, float* %98, align 4
  %100 = load float*, float** %10, align 8
  %101 = getelementptr inbounds float, float* %100, i64 2
  %102 = load float, float* %101, align 4
  %103 = fmul float %99, %102
  %104 = fadd float %96, %103
  %105 = fmul float %89, %104
  %106 = fadd float %87, %105
  store float %106, float* @slasd5_.b, align 4
  %107 = load float*, float** %12, align 8
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %10, align 8
  %110 = getelementptr inbounds float, float* %109, i64 1
  %111 = load float, float* %110, align 4
  %112 = fmul float %108, %111
  %113 = load float*, float** %10, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  %115 = load float, float* %114, align 4
  %116 = fmul float %112, %115
  %117 = load float, float* @slasd5_.delsq, align 4
  %118 = fmul float %116, %117
  store float %118, float* @slasd5_.c__, align 4
  %119 = load float, float* @slasd5_.c__, align 4
  %120 = fmul float %119, 2.000000e+00
  %121 = load float, float* @slasd5_.b, align 4
  %122 = load float, float* @slasd5_.b, align 4
  %123 = load float, float* @slasd5_.b, align 4
  %124 = fmul float %122, %123
  %125 = load float, float* @slasd5_.c__, align 4
  %126 = fmul float %125, 4.000000e+00
  %127 = fsub float %124, %126
  store float %127, float* %15, align 4
  %128 = load float, float* %15, align 4
  %129 = call i32 @dabs(float %128)
  %130 = sitofp i32 %129 to float
  %131 = call float @sqrt(float %130)
  %132 = fadd float %121, %131
  %133 = fdiv float %120, %132
  store float %133, float* @slasd5_.tau, align 4
  %134 = load float*, float** %9, align 8
  %135 = getelementptr inbounds float, float* %134, i64 1
  %136 = load float, float* %135, align 4
  %137 = load float*, float** %9, align 8
  %138 = getelementptr inbounds float, float* %137, i64 1
  %139 = load float, float* %138, align 4
  %140 = load float*, float** %9, align 8
  %141 = getelementptr inbounds float, float* %140, i64 1
  %142 = load float, float* %141, align 4
  %143 = fmul float %139, %142
  %144 = load float, float* @slasd5_.tau, align 4
  %145 = fadd float %143, %144
  %146 = call float @sqrt(float %145)
  %147 = fadd float %136, %146
  %148 = load float, float* @slasd5_.tau, align 4
  %149 = fdiv float %148, %147
  store float %149, float* @slasd5_.tau, align 4
  %150 = load float*, float** %9, align 8
  %151 = getelementptr inbounds float, float* %150, i64 1
  %152 = load float, float* %151, align 4
  %153 = load float, float* @slasd5_.tau, align 4
  %154 = fadd float %152, %153
  %155 = load float*, float** %13, align 8
  store float %154, float* %155, align 4
  %156 = load float, float* @slasd5_.tau, align 4
  %157 = fneg float %156
  %158 = load float*, float** %11, align 8
  %159 = getelementptr inbounds float, float* %158, i64 1
  store float %157, float* %159, align 4
  %160 = load float, float* @slasd5_.del, align 4
  %161 = load float, float* @slasd5_.tau, align 4
  %162 = fsub float %160, %161
  %163 = load float*, float** %11, align 8
  %164 = getelementptr inbounds float, float* %163, i64 2
  store float %162, float* %164, align 4
  %165 = load float*, float** %9, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = fmul float %167, 2.000000e+00
  %169 = load float, float* @slasd5_.tau, align 4
  %170 = fadd float %168, %169
  %171 = load float*, float** %14, align 8
  %172 = getelementptr inbounds float, float* %171, i64 1
  store float %170, float* %172, align 4
  %173 = load float*, float** %9, align 8
  %174 = getelementptr inbounds float, float* %173, i64 1
  %175 = load float, float* %174, align 4
  %176 = load float, float* @slasd5_.tau, align 4
  %177 = fadd float %175, %176
  %178 = load float*, float** %9, align 8
  %179 = getelementptr inbounds float, float* %178, i64 2
  %180 = load float, float* %179, align 4
  %181 = fadd float %177, %180
  %182 = load float*, float** %14, align 8
  %183 = getelementptr inbounds float, float* %182, i64 2
  store float %181, float* %183, align 4
  br label %299

184:                                              ; preds = %43
  %185 = load float, float* @slasd5_.delsq, align 4
  %186 = fneg float %185
  %187 = load float*, float** %12, align 8
  %188 = load float, float* %187, align 4
  %189 = load float*, float** %10, align 8
  %190 = getelementptr inbounds float, float* %189, i64 1
  %191 = load float, float* %190, align 4
  %192 = load float*, float** %10, align 8
  %193 = getelementptr inbounds float, float* %192, i64 1
  %194 = load float, float* %193, align 4
  %195 = fmul float %191, %194
  %196 = load float*, float** %10, align 8
  %197 = getelementptr inbounds float, float* %196, i64 2
  %198 = load float, float* %197, align 4
  %199 = load float*, float** %10, align 8
  %200 = getelementptr inbounds float, float* %199, i64 2
  %201 = load float, float* %200, align 4
  %202 = fmul float %198, %201
  %203 = fadd float %195, %202
  %204 = fmul float %188, %203
  %205 = fadd float %186, %204
  store float %205, float* @slasd5_.b, align 4
  %206 = load float*, float** %12, align 8
  %207 = load float, float* %206, align 4
  %208 = load float*, float** %10, align 8
  %209 = getelementptr inbounds float, float* %208, i64 2
  %210 = load float, float* %209, align 4
  %211 = fmul float %207, %210
  %212 = load float*, float** %10, align 8
  %213 = getelementptr inbounds float, float* %212, i64 2
  %214 = load float, float* %213, align 4
  %215 = fmul float %211, %214
  %216 = load float, float* @slasd5_.delsq, align 4
  %217 = fmul float %215, %216
  store float %217, float* @slasd5_.c__, align 4
  %218 = load float, float* @slasd5_.b, align 4
  %219 = fcmp ogt float %218, 0.000000e+00
  br i1 %219, label %220, label %233

220:                                              ; preds = %184
  %221 = load float, float* @slasd5_.c__, align 4
  %222 = fmul float %221, -2.000000e+00
  %223 = load float, float* @slasd5_.b, align 4
  %224 = load float, float* @slasd5_.b, align 4
  %225 = load float, float* @slasd5_.b, align 4
  %226 = fmul float %224, %225
  %227 = load float, float* @slasd5_.c__, align 4
  %228 = fmul float %227, 4.000000e+00
  %229 = fadd float %226, %228
  %230 = call float @sqrt(float %229)
  %231 = fadd float %223, %230
  %232 = fdiv float %222, %231
  store float %232, float* @slasd5_.tau, align 4
  br label %244

233:                                              ; preds = %184
  %234 = load float, float* @slasd5_.b, align 4
  %235 = load float, float* @slasd5_.b, align 4
  %236 = load float, float* @slasd5_.b, align 4
  %237 = fmul float %235, %236
  %238 = load float, float* @slasd5_.c__, align 4
  %239 = fmul float %238, 4.000000e+00
  %240 = fadd float %237, %239
  %241 = call float @sqrt(float %240)
  %242 = fsub float %234, %241
  %243 = fdiv float %242, 2.000000e+00
  store float %243, float* @slasd5_.tau, align 4
  br label %244

244:                                              ; preds = %233, %220
  %245 = load float*, float** %9, align 8
  %246 = getelementptr inbounds float, float* %245, i64 2
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %9, align 8
  %249 = getelementptr inbounds float, float* %248, i64 2
  %250 = load float, float* %249, align 4
  %251 = load float*, float** %9, align 8
  %252 = getelementptr inbounds float, float* %251, i64 2
  %253 = load float, float* %252, align 4
  %254 = fmul float %250, %253
  %255 = load float, float* @slasd5_.tau, align 4
  %256 = fadd float %254, %255
  store float %256, float* %15, align 4
  %257 = load float, float* %15, align 4
  %258 = call i32 @dabs(float %257)
  %259 = sitofp i32 %258 to float
  %260 = call float @sqrt(float %259)
  %261 = fadd float %247, %260
  %262 = load float, float* @slasd5_.tau, align 4
  %263 = fdiv float %262, %261
  store float %263, float* @slasd5_.tau, align 4
  %264 = load float*, float** %9, align 8
  %265 = getelementptr inbounds float, float* %264, i64 2
  %266 = load float, float* %265, align 4
  %267 = load float, float* @slasd5_.tau, align 4
  %268 = fadd float %266, %267
  %269 = load float*, float** %13, align 8
  store float %268, float* %269, align 4
  %270 = load float, float* @slasd5_.del, align 4
  %271 = load float, float* @slasd5_.tau, align 4
  %272 = fadd float %270, %271
  %273 = fneg float %272
  %274 = load float*, float** %11, align 8
  %275 = getelementptr inbounds float, float* %274, i64 1
  store float %273, float* %275, align 4
  %276 = load float, float* @slasd5_.tau, align 4
  %277 = fneg float %276
  %278 = load float*, float** %11, align 8
  %279 = getelementptr inbounds float, float* %278, i64 2
  store float %277, float* %279, align 4
  %280 = load float*, float** %9, align 8
  %281 = getelementptr inbounds float, float* %280, i64 1
  %282 = load float, float* %281, align 4
  %283 = load float, float* @slasd5_.tau, align 4
  %284 = fadd float %282, %283
  %285 = load float*, float** %9, align 8
  %286 = getelementptr inbounds float, float* %285, i64 2
  %287 = load float, float* %286, align 4
  %288 = fadd float %284, %287
  %289 = load float*, float** %14, align 8
  %290 = getelementptr inbounds float, float* %289, i64 1
  store float %288, float* %290, align 4
  %291 = load float*, float** %9, align 8
  %292 = getelementptr inbounds float, float* %291, i64 2
  %293 = load float, float* %292, align 4
  %294 = fmul float %293, 2.000000e+00
  %295 = load float, float* @slasd5_.tau, align 4
  %296 = fadd float %294, %295
  %297 = load float*, float** %14, align 8
  %298 = getelementptr inbounds float, float* %297, i64 2
  store float %296, float* %298, align 4
  br label %299

299:                                              ; preds = %244, %86
  br label %413

300:                                              ; preds = %7
  %301 = load float, float* @slasd5_.delsq, align 4
  %302 = fneg float %301
  %303 = load float*, float** %12, align 8
  %304 = load float, float* %303, align 4
  %305 = load float*, float** %10, align 8
  %306 = getelementptr inbounds float, float* %305, i64 1
  %307 = load float, float* %306, align 4
  %308 = load float*, float** %10, align 8
  %309 = getelementptr inbounds float, float* %308, i64 1
  %310 = load float, float* %309, align 4
  %311 = fmul float %307, %310
  %312 = load float*, float** %10, align 8
  %313 = getelementptr inbounds float, float* %312, i64 2
  %314 = load float, float* %313, align 4
  %315 = load float*, float** %10, align 8
  %316 = getelementptr inbounds float, float* %315, i64 2
  %317 = load float, float* %316, align 4
  %318 = fmul float %314, %317
  %319 = fadd float %311, %318
  %320 = fmul float %304, %319
  %321 = fadd float %302, %320
  store float %321, float* @slasd5_.b, align 4
  %322 = load float*, float** %12, align 8
  %323 = load float, float* %322, align 4
  %324 = load float*, float** %10, align 8
  %325 = getelementptr inbounds float, float* %324, i64 2
  %326 = load float, float* %325, align 4
  %327 = fmul float %323, %326
  %328 = load float*, float** %10, align 8
  %329 = getelementptr inbounds float, float* %328, i64 2
  %330 = load float, float* %329, align 4
  %331 = fmul float %327, %330
  %332 = load float, float* @slasd5_.delsq, align 4
  %333 = fmul float %331, %332
  store float %333, float* @slasd5_.c__, align 4
  %334 = load float, float* @slasd5_.b, align 4
  %335 = fcmp ogt float %334, 0.000000e+00
  br i1 %335, label %336, label %347

336:                                              ; preds = %300
  %337 = load float, float* @slasd5_.b, align 4
  %338 = load float, float* @slasd5_.b, align 4
  %339 = load float, float* @slasd5_.b, align 4
  %340 = fmul float %338, %339
  %341 = load float, float* @slasd5_.c__, align 4
  %342 = fmul float %341, 4.000000e+00
  %343 = fadd float %340, %342
  %344 = call float @sqrt(float %343)
  %345 = fadd float %337, %344
  %346 = fdiv float %345, 2.000000e+00
  store float %346, float* @slasd5_.tau, align 4
  br label %361

347:                                              ; preds = %300
  %348 = load float, float* @slasd5_.c__, align 4
  %349 = fmul float %348, 2.000000e+00
  %350 = load float, float* @slasd5_.b, align 4
  %351 = fneg float %350
  %352 = load float, float* @slasd5_.b, align 4
  %353 = load float, float* @slasd5_.b, align 4
  %354 = fmul float %352, %353
  %355 = load float, float* @slasd5_.c__, align 4
  %356 = fmul float %355, 4.000000e+00
  %357 = fadd float %354, %356
  %358 = call float @sqrt(float %357)
  %359 = fadd float %351, %358
  %360 = fdiv float %349, %359
  store float %360, float* @slasd5_.tau, align 4
  br label %361

361:                                              ; preds = %347, %336
  %362 = load float*, float** %9, align 8
  %363 = getelementptr inbounds float, float* %362, i64 2
  %364 = load float, float* %363, align 4
  %365 = load float*, float** %9, align 8
  %366 = getelementptr inbounds float, float* %365, i64 2
  %367 = load float, float* %366, align 4
  %368 = load float*, float** %9, align 8
  %369 = getelementptr inbounds float, float* %368, i64 2
  %370 = load float, float* %369, align 4
  %371 = fmul float %367, %370
  %372 = load float, float* @slasd5_.tau, align 4
  %373 = fadd float %371, %372
  %374 = call float @sqrt(float %373)
  %375 = fadd float %364, %374
  %376 = load float, float* @slasd5_.tau, align 4
  %377 = fdiv float %376, %375
  store float %377, float* @slasd5_.tau, align 4
  %378 = load float*, float** %9, align 8
  %379 = getelementptr inbounds float, float* %378, i64 2
  %380 = load float, float* %379, align 4
  %381 = load float, float* @slasd5_.tau, align 4
  %382 = fadd float %380, %381
  %383 = load float*, float** %13, align 8
  store float %382, float* %383, align 4
  %384 = load float, float* @slasd5_.del, align 4
  %385 = load float, float* @slasd5_.tau, align 4
  %386 = fadd float %384, %385
  %387 = fneg float %386
  %388 = load float*, float** %11, align 8
  %389 = getelementptr inbounds float, float* %388, i64 1
  store float %387, float* %389, align 4
  %390 = load float, float* @slasd5_.tau, align 4
  %391 = fneg float %390
  %392 = load float*, float** %11, align 8
  %393 = getelementptr inbounds float, float* %392, i64 2
  store float %391, float* %393, align 4
  %394 = load float*, float** %9, align 8
  %395 = getelementptr inbounds float, float* %394, i64 1
  %396 = load float, float* %395, align 4
  %397 = load float, float* @slasd5_.tau, align 4
  %398 = fadd float %396, %397
  %399 = load float*, float** %9, align 8
  %400 = getelementptr inbounds float, float* %399, i64 2
  %401 = load float, float* %400, align 4
  %402 = fadd float %398, %401
  %403 = load float*, float** %14, align 8
  %404 = getelementptr inbounds float, float* %403, i64 1
  store float %402, float* %404, align 4
  %405 = load float*, float** %9, align 8
  %406 = getelementptr inbounds float, float* %405, i64 2
  %407 = load float, float* %406, align 4
  %408 = fmul float %407, 2.000000e+00
  %409 = load float, float* @slasd5_.tau, align 4
  %410 = fadd float %408, %409
  %411 = load float*, float** %14, align 8
  %412 = getelementptr inbounds float, float* %411, i64 2
  store float %410, float* %412, align 4
  br label %413

413:                                              ; preds = %361, %299
  ret i32 0
}

declare dso_local float @sqrt(float) #1

declare dso_local i32 @dabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
