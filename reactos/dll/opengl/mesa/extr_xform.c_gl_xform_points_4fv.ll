; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_xform.c_gl_xform_points_4fv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_xform.c_gl_xform_points_4fv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_xform_points_4fv(i64 %0, [4 x float]* %1, float* %2, [4 x float]* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca [4 x float]*, align 8
  %7 = alloca float*, align 8
  %8 = alloca [4 x float]*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i64, align 8
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  store i64 %0, i64* %5, align 8
  store [4 x float]* %1, [4 x float]** %6, align 8
  store float* %2, float** %7, align 8
  store [4 x float]* %3, [4 x float]** %8, align 8
  %42 = load float*, float** %7, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  %44 = load float, float* %43, align 4
  store float %44, float* %10, align 4
  %45 = load float*, float** %7, align 8
  %46 = getelementptr inbounds float, float* %45, i64 4
  %47 = load float, float* %46, align 4
  store float %47, float* %11, align 4
  %48 = load float*, float** %7, align 8
  %49 = getelementptr inbounds float, float* %48, i64 8
  %50 = load float, float* %49, align 4
  store float %50, float* %12, align 4
  %51 = load float*, float** %7, align 8
  %52 = getelementptr inbounds float, float* %51, i64 12
  %53 = load float, float* %52, align 4
  store float %53, float* %13, align 4
  %54 = load float*, float** %7, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  store float %56, float* %14, align 4
  %57 = load float*, float** %7, align 8
  %58 = getelementptr inbounds float, float* %57, i64 5
  %59 = load float, float* %58, align 4
  store float %59, float* %15, align 4
  %60 = load float*, float** %7, align 8
  %61 = getelementptr inbounds float, float* %60, i64 9
  %62 = load float, float* %61, align 4
  store float %62, float* %16, align 4
  %63 = load float*, float** %7, align 8
  %64 = getelementptr inbounds float, float* %63, i64 13
  %65 = load float, float* %64, align 4
  store float %65, float* %17, align 4
  %66 = load float, float* %13, align 4
  %67 = fcmp oeq float %66, 0.000000e+00
  br i1 %67, label %68, label %126

68:                                               ; preds = %4
  %69 = load float, float* %17, align 4
  %70 = fcmp oeq float %69, 0.000000e+00
  br i1 %70, label %71, label %126

71:                                               ; preds = %68
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %122, %71
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %72
  %77 = load [4 x float]*, [4 x float]** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds [4 x float], [4 x float]* %77, i64 %78
  %80 = getelementptr inbounds [4 x float], [4 x float]* %79, i64 0, i64 0
  %81 = load float, float* %80, align 4
  store float %81, float* %18, align 4
  %82 = load [4 x float]*, [4 x float]** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds [4 x float], [4 x float]* %82, i64 %83
  %85 = getelementptr inbounds [4 x float], [4 x float]* %84, i64 0, i64 1
  %86 = load float, float* %85, align 4
  store float %86, float* %19, align 4
  %87 = load [4 x float]*, [4 x float]** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds [4 x float], [4 x float]* %87, i64 %88
  %90 = getelementptr inbounds [4 x float], [4 x float]* %89, i64 0, i64 2
  %91 = load float, float* %90, align 4
  store float %91, float* %20, align 4
  %92 = load float, float* %10, align 4
  %93 = load float, float* %18, align 4
  %94 = fmul float %92, %93
  %95 = load float, float* %11, align 4
  %96 = load float, float* %19, align 4
  %97 = fmul float %95, %96
  %98 = fadd float %94, %97
  %99 = load float, float* %12, align 4
  %100 = load float, float* %20, align 4
  %101 = fmul float %99, %100
  %102 = fadd float %98, %101
  %103 = load [4 x float]*, [4 x float]** %6, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds [4 x float], [4 x float]* %103, i64 %104
  %106 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 0
  store float %102, float* %106, align 4
  %107 = load float, float* %14, align 4
  %108 = load float, float* %18, align 4
  %109 = fmul float %107, %108
  %110 = load float, float* %15, align 4
  %111 = load float, float* %19, align 4
  %112 = fmul float %110, %111
  %113 = fadd float %109, %112
  %114 = load float, float* %16, align 4
  %115 = load float, float* %20, align 4
  %116 = fmul float %114, %115
  %117 = fadd float %113, %116
  %118 = load [4 x float]*, [4 x float]** %6, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds [4 x float], [4 x float]* %118, i64 %119
  %121 = getelementptr inbounds [4 x float], [4 x float]* %120, i64 0, i64 1
  store float %117, float* %121, align 4
  br label %122

122:                                              ; preds = %76
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %9, align 8
  br label %72

125:                                              ; preds = %72
  br label %194

126:                                              ; preds = %68, %4
  store i64 0, i64* %9, align 8
  br label %127

127:                                              ; preds = %190, %126
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %5, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %193

131:                                              ; preds = %127
  %132 = load [4 x float]*, [4 x float]** %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds [4 x float], [4 x float]* %132, i64 %133
  %135 = getelementptr inbounds [4 x float], [4 x float]* %134, i64 0, i64 0
  %136 = load float, float* %135, align 4
  store float %136, float* %21, align 4
  %137 = load [4 x float]*, [4 x float]** %8, align 8
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds [4 x float], [4 x float]* %137, i64 %138
  %140 = getelementptr inbounds [4 x float], [4 x float]* %139, i64 0, i64 1
  %141 = load float, float* %140, align 4
  store float %141, float* %22, align 4
  %142 = load [4 x float]*, [4 x float]** %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds [4 x float], [4 x float]* %142, i64 %143
  %145 = getelementptr inbounds [4 x float], [4 x float]* %144, i64 0, i64 2
  %146 = load float, float* %145, align 4
  store float %146, float* %23, align 4
  %147 = load [4 x float]*, [4 x float]** %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds [4 x float], [4 x float]* %147, i64 %148
  %150 = getelementptr inbounds [4 x float], [4 x float]* %149, i64 0, i64 3
  %151 = load float, float* %150, align 4
  store float %151, float* %24, align 4
  %152 = load float, float* %10, align 4
  %153 = load float, float* %21, align 4
  %154 = fmul float %152, %153
  %155 = load float, float* %11, align 4
  %156 = load float, float* %22, align 4
  %157 = fmul float %155, %156
  %158 = fadd float %154, %157
  %159 = load float, float* %12, align 4
  %160 = load float, float* %23, align 4
  %161 = fmul float %159, %160
  %162 = fadd float %158, %161
  %163 = load float, float* %13, align 4
  %164 = load float, float* %24, align 4
  %165 = fmul float %163, %164
  %166 = fadd float %162, %165
  %167 = load [4 x float]*, [4 x float]** %6, align 8
  %168 = load i64, i64* %9, align 8
  %169 = getelementptr inbounds [4 x float], [4 x float]* %167, i64 %168
  %170 = getelementptr inbounds [4 x float], [4 x float]* %169, i64 0, i64 0
  store float %166, float* %170, align 4
  %171 = load float, float* %14, align 4
  %172 = load float, float* %21, align 4
  %173 = fmul float %171, %172
  %174 = load float, float* %15, align 4
  %175 = load float, float* %22, align 4
  %176 = fmul float %174, %175
  %177 = fadd float %173, %176
  %178 = load float, float* %16, align 4
  %179 = load float, float* %23, align 4
  %180 = fmul float %178, %179
  %181 = fadd float %177, %180
  %182 = load float, float* %17, align 4
  %183 = load float, float* %24, align 4
  %184 = fmul float %182, %183
  %185 = fadd float %181, %184
  %186 = load [4 x float]*, [4 x float]** %6, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds [4 x float], [4 x float]* %186, i64 %187
  %189 = getelementptr inbounds [4 x float], [4 x float]* %188, i64 0, i64 1
  store float %185, float* %189, align 4
  br label %190

190:                                              ; preds = %131
  %191 = load i64, i64* %9, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %9, align 8
  br label %127

193:                                              ; preds = %127
  br label %194

194:                                              ; preds = %193, %125
  %195 = load float*, float** %7, align 8
  %196 = getelementptr inbounds float, float* %195, i64 2
  %197 = load float, float* %196, align 4
  store float %197, float* %26, align 4
  %198 = load float*, float** %7, align 8
  %199 = getelementptr inbounds float, float* %198, i64 6
  %200 = load float, float* %199, align 4
  store float %200, float* %27, align 4
  %201 = load float*, float** %7, align 8
  %202 = getelementptr inbounds float, float* %201, i64 10
  %203 = load float, float* %202, align 4
  store float %203, float* %28, align 4
  %204 = load float*, float** %7, align 8
  %205 = getelementptr inbounds float, float* %204, i64 14
  %206 = load float, float* %205, align 4
  store float %206, float* %29, align 4
  %207 = load float*, float** %7, align 8
  %208 = getelementptr inbounds float, float* %207, i64 3
  %209 = load float, float* %208, align 4
  store float %209, float* %30, align 4
  %210 = load float*, float** %7, align 8
  %211 = getelementptr inbounds float, float* %210, i64 7
  %212 = load float, float* %211, align 4
  store float %212, float* %31, align 4
  %213 = load float*, float** %7, align 8
  %214 = getelementptr inbounds float, float* %213, i64 11
  %215 = load float, float* %214, align 4
  store float %215, float* %32, align 4
  %216 = load float*, float** %7, align 8
  %217 = getelementptr inbounds float, float* %216, i64 15
  %218 = load float, float* %217, align 4
  store float %218, float* %33, align 4
  %219 = load float, float* %30, align 4
  %220 = fcmp oeq float %219, 0.000000e+00
  br i1 %220, label %221, label %284

221:                                              ; preds = %194
  %222 = load float, float* %31, align 4
  %223 = fcmp oeq float %222, 0.000000e+00
  br i1 %223, label %224, label %284

224:                                              ; preds = %221
  %225 = load float, float* %32, align 4
  %226 = fcmp oeq float %225, 0.000000e+00
  br i1 %226, label %227, label %284

227:                                              ; preds = %224
  %228 = load float, float* %33, align 4
  %229 = fcmp oeq float %228, 1.000000e+00
  br i1 %229, label %230, label %284

230:                                              ; preds = %227
  store i64 0, i64* %25, align 8
  br label %231

231:                                              ; preds = %280, %230
  %232 = load i64, i64* %25, align 8
  %233 = load i64, i64* %5, align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %283

235:                                              ; preds = %231
  %236 = load [4 x float]*, [4 x float]** %8, align 8
  %237 = load i64, i64* %25, align 8
  %238 = getelementptr inbounds [4 x float], [4 x float]* %236, i64 %237
  %239 = getelementptr inbounds [4 x float], [4 x float]* %238, i64 0, i64 0
  %240 = load float, float* %239, align 4
  store float %240, float* %34, align 4
  %241 = load [4 x float]*, [4 x float]** %8, align 8
  %242 = load i64, i64* %25, align 8
  %243 = getelementptr inbounds [4 x float], [4 x float]* %241, i64 %242
  %244 = getelementptr inbounds [4 x float], [4 x float]* %243, i64 0, i64 1
  %245 = load float, float* %244, align 4
  store float %245, float* %35, align 4
  %246 = load [4 x float]*, [4 x float]** %8, align 8
  %247 = load i64, i64* %25, align 8
  %248 = getelementptr inbounds [4 x float], [4 x float]* %246, i64 %247
  %249 = getelementptr inbounds [4 x float], [4 x float]* %248, i64 0, i64 2
  %250 = load float, float* %249, align 4
  store float %250, float* %36, align 4
  %251 = load [4 x float]*, [4 x float]** %8, align 8
  %252 = load i64, i64* %25, align 8
  %253 = getelementptr inbounds [4 x float], [4 x float]* %251, i64 %252
  %254 = getelementptr inbounds [4 x float], [4 x float]* %253, i64 0, i64 3
  %255 = load float, float* %254, align 4
  store float %255, float* %37, align 4
  %256 = load float, float* %26, align 4
  %257 = load float, float* %34, align 4
  %258 = fmul float %256, %257
  %259 = load float, float* %27, align 4
  %260 = load float, float* %35, align 4
  %261 = fmul float %259, %260
  %262 = fadd float %258, %261
  %263 = load float, float* %28, align 4
  %264 = load float, float* %36, align 4
  %265 = fmul float %263, %264
  %266 = fadd float %262, %265
  %267 = load float, float* %29, align 4
  %268 = load float, float* %37, align 4
  %269 = fmul float %267, %268
  %270 = fadd float %266, %269
  %271 = load [4 x float]*, [4 x float]** %6, align 8
  %272 = load i64, i64* %25, align 8
  %273 = getelementptr inbounds [4 x float], [4 x float]* %271, i64 %272
  %274 = getelementptr inbounds [4 x float], [4 x float]* %273, i64 0, i64 2
  store float %270, float* %274, align 4
  %275 = load float, float* %37, align 4
  %276 = load [4 x float]*, [4 x float]** %6, align 8
  %277 = load i64, i64* %25, align 8
  %278 = getelementptr inbounds [4 x float], [4 x float]* %276, i64 %277
  %279 = getelementptr inbounds [4 x float], [4 x float]* %278, i64 0, i64 3
  store float %275, float* %279, align 4
  br label %280

280:                                              ; preds = %235
  %281 = load i64, i64* %25, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %25, align 8
  br label %231

283:                                              ; preds = %231
  br label %352

284:                                              ; preds = %227, %224, %221, %194
  store i64 0, i64* %25, align 8
  br label %285

285:                                              ; preds = %348, %284
  %286 = load i64, i64* %25, align 8
  %287 = load i64, i64* %5, align 8
  %288 = icmp ult i64 %286, %287
  br i1 %288, label %289, label %351

289:                                              ; preds = %285
  %290 = load [4 x float]*, [4 x float]** %8, align 8
  %291 = load i64, i64* %25, align 8
  %292 = getelementptr inbounds [4 x float], [4 x float]* %290, i64 %291
  %293 = getelementptr inbounds [4 x float], [4 x float]* %292, i64 0, i64 0
  %294 = load float, float* %293, align 4
  store float %294, float* %38, align 4
  %295 = load [4 x float]*, [4 x float]** %8, align 8
  %296 = load i64, i64* %25, align 8
  %297 = getelementptr inbounds [4 x float], [4 x float]* %295, i64 %296
  %298 = getelementptr inbounds [4 x float], [4 x float]* %297, i64 0, i64 1
  %299 = load float, float* %298, align 4
  store float %299, float* %39, align 4
  %300 = load [4 x float]*, [4 x float]** %8, align 8
  %301 = load i64, i64* %25, align 8
  %302 = getelementptr inbounds [4 x float], [4 x float]* %300, i64 %301
  %303 = getelementptr inbounds [4 x float], [4 x float]* %302, i64 0, i64 2
  %304 = load float, float* %303, align 4
  store float %304, float* %40, align 4
  %305 = load [4 x float]*, [4 x float]** %8, align 8
  %306 = load i64, i64* %25, align 8
  %307 = getelementptr inbounds [4 x float], [4 x float]* %305, i64 %306
  %308 = getelementptr inbounds [4 x float], [4 x float]* %307, i64 0, i64 3
  %309 = load float, float* %308, align 4
  store float %309, float* %41, align 4
  %310 = load float, float* %26, align 4
  %311 = load float, float* %38, align 4
  %312 = fmul float %310, %311
  %313 = load float, float* %27, align 4
  %314 = load float, float* %39, align 4
  %315 = fmul float %313, %314
  %316 = fadd float %312, %315
  %317 = load float, float* %28, align 4
  %318 = load float, float* %40, align 4
  %319 = fmul float %317, %318
  %320 = fadd float %316, %319
  %321 = load float, float* %29, align 4
  %322 = load float, float* %41, align 4
  %323 = fmul float %321, %322
  %324 = fadd float %320, %323
  %325 = load [4 x float]*, [4 x float]** %6, align 8
  %326 = load i64, i64* %25, align 8
  %327 = getelementptr inbounds [4 x float], [4 x float]* %325, i64 %326
  %328 = getelementptr inbounds [4 x float], [4 x float]* %327, i64 0, i64 2
  store float %324, float* %328, align 4
  %329 = load float, float* %30, align 4
  %330 = load float, float* %38, align 4
  %331 = fmul float %329, %330
  %332 = load float, float* %31, align 4
  %333 = load float, float* %39, align 4
  %334 = fmul float %332, %333
  %335 = fadd float %331, %334
  %336 = load float, float* %32, align 4
  %337 = load float, float* %40, align 4
  %338 = fmul float %336, %337
  %339 = fadd float %335, %338
  %340 = load float, float* %33, align 4
  %341 = load float, float* %41, align 4
  %342 = fmul float %340, %341
  %343 = fadd float %339, %342
  %344 = load [4 x float]*, [4 x float]** %6, align 8
  %345 = load i64, i64* %25, align 8
  %346 = getelementptr inbounds [4 x float], [4 x float]* %344, i64 %345
  %347 = getelementptr inbounds [4 x float], [4 x float]* %346, i64 0, i64 3
  store float %343, float* %347, align 4
  br label %348

348:                                              ; preds = %289
  %349 = load i64, i64* %25, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* %25, align 8
  br label %285

351:                                              ; preds = %285
  br label %352

352:                                              ; preds = %351, %283
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
