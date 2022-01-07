; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasd5_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasd5_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlasd5_.b = internal global i32 0, align 4
@dlasd5_.c__ = internal global i32 0, align 4
@dlasd5_.w = internal global i32 0, align 4
@dlasd5_.del = internal global i32 0, align 4
@dlasd5_.tau = internal global i32 0, align 4
@dlasd5_.delsq = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlasd5_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 -1
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 -1
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 -1
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 -1
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* @dlasd5_.del, align 4
  %31 = load i32, i32* @dlasd5_.del, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = mul nsw i32 %31, %38
  store i32 %39, i32* @dlasd5_.delsq, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %332

43:                                               ; preds = %7
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sitofp i32 %45 to double
  %47 = fmul double %46, 4.000000e+00
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = sitofp i32 %54 to double
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = sitofp i32 %58 to double
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 3.000000e+00
  %65 = fadd double %59, %64
  %66 = fdiv double %55, %65
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = sitofp i32 %73 to double
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to double
  %79 = fmul double %78, 3.000000e+00
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to double
  %84 = fadd double %79, %83
  %85 = fdiv double %74, %84
  %86 = fsub double %66, %85
  %87 = fmul double %47, %86
  %88 = load i32, i32* @dlasd5_.del, align 4
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %87, %89
  %91 = fadd double %90, 1.000000e+00
  %92 = fptosi double %91 to i32
  store i32 %92, i32* @dlasd5_.w, align 4
  %93 = load i32, i32* @dlasd5_.w, align 4
  %94 = sitofp i32 %93 to double
  %95 = fcmp ogt double %94, 0.000000e+00
  br i1 %95, label %96, label %202

96:                                               ; preds = %43
  %97 = load i32, i32* @dlasd5_.delsq, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = add nsw i32 %106, %113
  %115 = mul nsw i32 %99, %114
  %116 = add nsw i32 %97, %115
  store i32 %116, i32* @dlasd5_.b, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = load i32, i32* @dlasd5_.delsq, align 4
  %128 = mul nsw i32 %126, %127
  store i32 %128, i32* @dlasd5_.c__, align 4
  %129 = load i32, i32* @dlasd5_.c__, align 4
  %130 = sitofp i32 %129 to double
  %131 = fmul double %130, 2.000000e+00
  %132 = load i32, i32* @dlasd5_.b, align 4
  %133 = load i32, i32* @dlasd5_.b, align 4
  %134 = load i32, i32* @dlasd5_.b, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sitofp i32 %135 to double
  %137 = load i32, i32* @dlasd5_.c__, align 4
  %138 = sitofp i32 %137 to double
  %139 = fmul double %138, 4.000000e+00
  %140 = fsub double %136, %139
  %141 = fptosi double %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @abs(i32 %142) #3
  %144 = call i32 @sqrt(i32 %143)
  %145 = add nsw i32 %132, %144
  %146 = sitofp i32 %145 to double
  %147 = fdiv double %131, %146
  %148 = fptosi double %147 to i32
  store i32 %148, i32* @dlasd5_.tau, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %154, %157
  %159 = load i32, i32* @dlasd5_.tau, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @sqrt(i32 %160)
  %162 = add nsw i32 %151, %161
  %163 = load i32, i32* @dlasd5_.tau, align 4
  %164 = sdiv i32 %163, %162
  store i32 %164, i32* @dlasd5_.tau, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @dlasd5_.tau, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32*, i32** %13, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* @dlasd5_.tau, align 4
  %172 = sub nsw i32 0, %171
  %173 = load i32*, i32** %11, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @dlasd5_.del, align 4
  %176 = load i32, i32* @dlasd5_.tau, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32*, i32** %11, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to double
  %184 = fmul double %183, 2.000000e+00
  %185 = load i32, i32* @dlasd5_.tau, align 4
  %186 = sitofp i32 %185 to double
  %187 = fadd double %184, %186
  %188 = fptosi double %187 to i32
  %189 = load i32*, i32** %14, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %188, i32* %190, align 4
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @dlasd5_.tau, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32*, i32** %9, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = load i32*, i32** %14, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 %199, i32* %201, align 4
  br label %331

202:                                              ; preds = %43
  %203 = load i32, i32* @dlasd5_.delsq, align 4
  %204 = sub nsw i32 0, %203
  %205 = load i32*, i32** %12, align 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = load i32*, i32** %10, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %216, %219
  %221 = add nsw i32 %213, %220
  %222 = mul nsw i32 %206, %221
  %223 = add nsw i32 %204, %222
  store i32 %223, i32* @dlasd5_.b, align 4
  %224 = load i32*, i32** %12, align 8
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %10, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %225, %228
  %230 = load i32*, i32** %10, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %229, %232
  %234 = load i32, i32* @dlasd5_.delsq, align 4
  %235 = mul nsw i32 %233, %234
  store i32 %235, i32* @dlasd5_.c__, align 4
  %236 = load i32, i32* @dlasd5_.b, align 4
  %237 = sitofp i32 %236 to double
  %238 = fcmp ogt double %237, 0.000000e+00
  br i1 %238, label %239, label %258

239:                                              ; preds = %202
  %240 = load i32, i32* @dlasd5_.c__, align 4
  %241 = sitofp i32 %240 to double
  %242 = fmul double %241, -2.000000e+00
  %243 = load i32, i32* @dlasd5_.b, align 4
  %244 = load i32, i32* @dlasd5_.b, align 4
  %245 = load i32, i32* @dlasd5_.b, align 4
  %246 = mul nsw i32 %244, %245
  %247 = sitofp i32 %246 to double
  %248 = load i32, i32* @dlasd5_.c__, align 4
  %249 = sitofp i32 %248 to double
  %250 = fmul double %249, 4.000000e+00
  %251 = fadd double %247, %250
  %252 = fptosi double %251 to i32
  %253 = call i32 @sqrt(i32 %252)
  %254 = add nsw i32 %243, %253
  %255 = sitofp i32 %254 to double
  %256 = fdiv double %242, %255
  %257 = fptosi double %256 to i32
  store i32 %257, i32* @dlasd5_.tau, align 4
  br label %274

258:                                              ; preds = %202
  %259 = load i32, i32* @dlasd5_.b, align 4
  %260 = load i32, i32* @dlasd5_.b, align 4
  %261 = load i32, i32* @dlasd5_.b, align 4
  %262 = mul nsw i32 %260, %261
  %263 = sitofp i32 %262 to double
  %264 = load i32, i32* @dlasd5_.c__, align 4
  %265 = sitofp i32 %264 to double
  %266 = fmul double %265, 4.000000e+00
  %267 = fadd double %263, %266
  %268 = fptosi double %267 to i32
  %269 = call i32 @sqrt(i32 %268)
  %270 = sub nsw i32 %259, %269
  %271 = sitofp i32 %270 to double
  %272 = fdiv double %271, 2.000000e+00
  %273 = fptosi double %272 to i32
  store i32 %273, i32* @dlasd5_.tau, align 4
  br label %274

274:                                              ; preds = %258, %239
  %275 = load i32*, i32** %9, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %9, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %9, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %280, %283
  %285 = load i32, i32* @dlasd5_.tau, align 4
  %286 = add nsw i32 %284, %285
  store i32 %286, i32* %15, align 4
  %287 = load i32, i32* %15, align 4
  %288 = call i32 @abs(i32 %287) #3
  %289 = call i32 @sqrt(i32 %288)
  %290 = add nsw i32 %277, %289
  %291 = load i32, i32* @dlasd5_.tau, align 4
  %292 = sdiv i32 %291, %290
  store i32 %292, i32* @dlasd5_.tau, align 4
  %293 = load i32*, i32** %9, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @dlasd5_.tau, align 4
  %297 = add nsw i32 %295, %296
  %298 = load i32*, i32** %13, align 8
  store i32 %297, i32* %298, align 4
  %299 = load i32, i32* @dlasd5_.del, align 4
  %300 = load i32, i32* @dlasd5_.tau, align 4
  %301 = add nsw i32 %299, %300
  %302 = sub nsw i32 0, %301
  %303 = load i32*, i32** %11, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* @dlasd5_.tau, align 4
  %306 = sub nsw i32 0, %305
  %307 = load i32*, i32** %11, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  store i32 %306, i32* %308, align 4
  %309 = load i32*, i32** %9, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @dlasd5_.tau, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 2
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %313, %316
  %318 = load i32*, i32** %14, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 1
  store i32 %317, i32* %319, align 4
  %320 = load i32*, i32** %9, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load i32, i32* %321, align 4
  %323 = sitofp i32 %322 to double
  %324 = fmul double %323, 2.000000e+00
  %325 = load i32, i32* @dlasd5_.tau, align 4
  %326 = sitofp i32 %325 to double
  %327 = fadd double %324, %326
  %328 = fptosi double %327 to i32
  %329 = load i32*, i32** %14, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 2
  store i32 %328, i32* %330, align 4
  br label %331

331:                                              ; preds = %274, %96
  br label %460

332:                                              ; preds = %7
  %333 = load i32, i32* @dlasd5_.delsq, align 4
  %334 = sub nsw i32 0, %333
  %335 = load i32*, i32** %12, align 8
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** %10, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32*, i32** %10, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 %339, %342
  %344 = load i32*, i32** %10, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 2
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %10, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = load i32, i32* %348, align 4
  %350 = mul nsw i32 %346, %349
  %351 = add nsw i32 %343, %350
  %352 = mul nsw i32 %336, %351
  %353 = add nsw i32 %334, %352
  store i32 %353, i32* @dlasd5_.b, align 4
  %354 = load i32*, i32** %12, align 8
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %10, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 2
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 %355, %358
  %360 = load i32*, i32** %10, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 2
  %362 = load i32, i32* %361, align 4
  %363 = mul nsw i32 %359, %362
  %364 = load i32, i32* @dlasd5_.delsq, align 4
  %365 = mul nsw i32 %363, %364
  store i32 %365, i32* @dlasd5_.c__, align 4
  %366 = load i32, i32* @dlasd5_.b, align 4
  %367 = sitofp i32 %366 to double
  %368 = fcmp ogt double %367, 0.000000e+00
  br i1 %368, label %369, label %385

369:                                              ; preds = %332
  %370 = load i32, i32* @dlasd5_.b, align 4
  %371 = load i32, i32* @dlasd5_.b, align 4
  %372 = load i32, i32* @dlasd5_.b, align 4
  %373 = mul nsw i32 %371, %372
  %374 = sitofp i32 %373 to double
  %375 = load i32, i32* @dlasd5_.c__, align 4
  %376 = sitofp i32 %375 to double
  %377 = fmul double %376, 4.000000e+00
  %378 = fadd double %374, %377
  %379 = fptosi double %378 to i32
  %380 = call i32 @sqrt(i32 %379)
  %381 = add nsw i32 %370, %380
  %382 = sitofp i32 %381 to double
  %383 = fdiv double %382, 2.000000e+00
  %384 = fptosi double %383 to i32
  store i32 %384, i32* @dlasd5_.tau, align 4
  br label %405

385:                                              ; preds = %332
  %386 = load i32, i32* @dlasd5_.c__, align 4
  %387 = sitofp i32 %386 to double
  %388 = fmul double %387, 2.000000e+00
  %389 = load i32, i32* @dlasd5_.b, align 4
  %390 = sub nsw i32 0, %389
  %391 = load i32, i32* @dlasd5_.b, align 4
  %392 = load i32, i32* @dlasd5_.b, align 4
  %393 = mul nsw i32 %391, %392
  %394 = sitofp i32 %393 to double
  %395 = load i32, i32* @dlasd5_.c__, align 4
  %396 = sitofp i32 %395 to double
  %397 = fmul double %396, 4.000000e+00
  %398 = fadd double %394, %397
  %399 = fptosi double %398 to i32
  %400 = call i32 @sqrt(i32 %399)
  %401 = add nsw i32 %390, %400
  %402 = sitofp i32 %401 to double
  %403 = fdiv double %388, %402
  %404 = fptosi double %403 to i32
  store i32 %404, i32* @dlasd5_.tau, align 4
  br label %405

405:                                              ; preds = %385, %369
  %406 = load i32*, i32** %9, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 2
  %408 = load i32, i32* %407, align 4
  %409 = load i32*, i32** %9, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  %411 = load i32, i32* %410, align 4
  %412 = load i32*, i32** %9, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 2
  %414 = load i32, i32* %413, align 4
  %415 = mul nsw i32 %411, %414
  %416 = load i32, i32* @dlasd5_.tau, align 4
  %417 = add nsw i32 %415, %416
  %418 = call i32 @sqrt(i32 %417)
  %419 = add nsw i32 %408, %418
  %420 = load i32, i32* @dlasd5_.tau, align 4
  %421 = sdiv i32 %420, %419
  store i32 %421, i32* @dlasd5_.tau, align 4
  %422 = load i32*, i32** %9, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 2
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @dlasd5_.tau, align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32*, i32** %13, align 8
  store i32 %426, i32* %427, align 4
  %428 = load i32, i32* @dlasd5_.del, align 4
  %429 = load i32, i32* @dlasd5_.tau, align 4
  %430 = add nsw i32 %428, %429
  %431 = sub nsw i32 0, %430
  %432 = load i32*, i32** %11, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  store i32 %431, i32* %433, align 4
  %434 = load i32, i32* @dlasd5_.tau, align 4
  %435 = sub nsw i32 0, %434
  %436 = load i32*, i32** %11, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 2
  store i32 %435, i32* %437, align 4
  %438 = load i32*, i32** %9, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 1
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @dlasd5_.tau, align 4
  %442 = add nsw i32 %440, %441
  %443 = load i32*, i32** %9, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 2
  %445 = load i32, i32* %444, align 4
  %446 = add nsw i32 %442, %445
  %447 = load i32*, i32** %14, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 1
  store i32 %446, i32* %448, align 4
  %449 = load i32*, i32** %9, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 2
  %451 = load i32, i32* %450, align 4
  %452 = sitofp i32 %451 to double
  %453 = fmul double %452, 2.000000e+00
  %454 = load i32, i32* @dlasd5_.tau, align 4
  %455 = sitofp i32 %454 to double
  %456 = fadd double %453, %455
  %457 = fptosi double %456 to i32
  %458 = load i32*, i32** %14, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 2
  store i32 %457, i32* %459, align 4
  br label %460

460:                                              ; preds = %405, %331
  ret i32 0
}

declare dso_local i32 @sqrt(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
