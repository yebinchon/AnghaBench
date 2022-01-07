; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_scale_internal_short.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_scale_internal_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, float*, i32, i32, float*, i32, i32, i32, i32)* @scale_internal_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_internal_short(i32 %0, i32 %1, i32 %2, float* %3, i32 %4, i32 %5, float* %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca [4 x float], align 16
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i64, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store float* %3, float** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store float* %6, float** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %16, align 4
  %57 = mul nsw i32 %56, 2
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %11
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %17, align 4
  %62 = mul nsw i32 %61, 2
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load float*, float** %15, align 8
  %69 = load float*, float** %18, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %22, align 4
  %74 = call i32 @halveImage_short(i32 %65, i32 %66, i32 %67, float* %68, float* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %1076

75:                                               ; preds = %59, %11
  %76 = load i32, i32* %14, align 4
  %77 = sitofp i32 %76 to float
  %78 = load i32, i32* %17, align 4
  %79 = sitofp i32 %78 to float
  %80 = fdiv float %77, %79
  store float %80, float* %24, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sitofp i32 %81 to float
  %83 = load i32, i32* %16, align 4
  %84 = sitofp i32 %83 to float
  %85 = fdiv float %82, %84
  store float %85, float* %23, align 4
  %86 = load float, float* %24, align 4
  %87 = call i32 @floor(float %86)
  store i32 %87, i32* %48, align 4
  %88 = load float, float* %24, align 4
  %89 = load i32, i32* %48, align 4
  %90 = sitofp i32 %89 to float
  %91 = fsub float %88, %90
  store float %91, float* %46, align 4
  %92 = load float, float* %23, align 4
  %93 = call i32 @floor(float %92)
  store i32 %93, i32* %49, align 4
  %94 = load float, float* %23, align 4
  %95 = load i32, i32* %49, align 4
  %96 = sitofp i32 %95 to float
  %97 = fsub float %94, %96
  store float %97, float* %47, align 4
  %98 = load float, float* %23, align 4
  %99 = load float, float* %24, align 4
  %100 = fmul float %98, %99
  store float %100, float* %27, align 4
  store i32 0, i32* %38, align 4
  store float 0.000000e+00, float* %44, align 4
  %101 = load i32, i32* %48, align 4
  store i32 %101, i32* %39, align 4
  %102 = load float, float* %46, align 4
  store float %102, float* %45, align 4
  store i32 0, i32* %28, align 4
  br label %103

103:                                              ; preds = %1073, %75
  %104 = load i32, i32* %28, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %1076

107:                                              ; preds = %103
  %108 = load i32, i32* %39, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %39, align 4
  br label %114

114:                                              ; preds = %111, %107
  store i32 0, i32* %36, align 4
  store float 0.000000e+00, float* %42, align 4
  %115 = load i32, i32* %49, align 4
  store i32 %115, i32* %37, align 4
  %116 = load float, float* %47, align 4
  store float %116, float* %43, align 4
  store i32 0, i32* %29, align 4
  br label %117

117:                                              ; preds = %1051, %114
  %118 = load i32, i32* %29, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %1054

121:                                              ; preds = %117
  %122 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 3
  store float 0.000000e+00, float* %122, align 4
  %123 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 2
  store float 0.000000e+00, float* %123, align 8
  %124 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 1
  store float 0.000000e+00, float* %124, align 4
  %125 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 0
  store float 0.000000e+00, float* %125, align 16
  %126 = load i32, i32* %36, align 4
  %127 = load i32, i32* %21, align 4
  %128 = mul nsw i32 %126, %127
  store i32 %128, i32* %31, align 4
  %129 = load i32, i32* %39, align 4
  %130 = load i32, i32* %38, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %535

132:                                              ; preds = %121
  %133 = load i32, i32* %37, align 4
  %134 = load i32, i32* %36, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %535

136:                                              ; preds = %132
  %137 = load float, float* %44, align 4
  %138 = fsub float 1.000000e+00, %137
  store float %138, float* %41, align 4
  %139 = load float*, float** %15, align 8
  %140 = bitcast float* %139 to i8*
  %141 = load i32, i32* %31, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* %38, align 4
  %145 = load i32, i32* %20, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  store i8* %148, i8** %32, align 8
  %149 = load float, float* %41, align 4
  %150 = load float, float* %42, align 4
  %151 = fsub float 1.000000e+00, %150
  %152 = fmul float %149, %151
  store float %152, float* %25, align 4
  store i32 0, i32* %30, align 4
  %153 = load i8*, i8** %32, align 8
  store i8* %153, i8** %34, align 8
  br label %154

154:                                              ; preds = %185, %136
  %155 = load i32, i32* %30, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %192

158:                                              ; preds = %154
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = load i8*, i8** %34, align 8
  %163 = call i64 @__GLU_SWAP_2_BYTES(i8* %162)
  store i64 %163, i64* %54, align 8
  %164 = bitcast i64* %54 to float*
  %165 = load float, float* %164, align 8
  %166 = load float, float* %25, align 4
  %167 = fmul float %165, %166
  %168 = load i32, i32* %30, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %169
  %171 = load float, float* %170, align 4
  %172 = fadd float %171, %167
  store float %172, float* %170, align 4
  br label %184

173:                                              ; preds = %158
  %174 = load i8*, i8** %34, align 8
  %175 = bitcast i8* %174 to float*
  %176 = load float, float* %175, align 4
  %177 = load float, float* %25, align 4
  %178 = fmul float %176, %177
  %179 = load i32, i32* %30, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fadd float %182, %178
  store float %183, float* %181, align 4
  br label %184

184:                                              ; preds = %173, %161
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %30, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %30, align 4
  %188 = load i32, i32* %19, align 4
  %189 = load i8*, i8** %34, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %34, align 8
  br label %154

192:                                              ; preds = %154
  %193 = load i8*, i8** %32, align 8
  store i8* %193, i8** %52, align 8
  %194 = load i32, i32* %36, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %50, align 4
  br label %196

196:                                              ; preds = %245, %192
  %197 = load i32, i32* %50, align 4
  %198 = load i32, i32* %37, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %248

200:                                              ; preds = %196
  %201 = load i32, i32* %21, align 4
  %202 = load i8*, i8** %32, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %205 = load i8*, i8** %32, align 8
  store i8* %205, i8** %34, align 8
  br label %206

206:                                              ; preds = %237, %200
  %207 = load i32, i32* %30, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %244

210:                                              ; preds = %206
  %211 = load i32, i32* %22, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %210
  %214 = load i8*, i8** %34, align 8
  %215 = call i64 @__GLU_SWAP_2_BYTES(i8* %214)
  store i64 %215, i64* %54, align 8
  %216 = bitcast i64* %54 to float*
  %217 = load float, float* %216, align 8
  %218 = load float, float* %41, align 4
  %219 = fmul float %217, %218
  %220 = load i32, i32* %30, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %221
  %223 = load float, float* %222, align 4
  %224 = fadd float %223, %219
  store float %224, float* %222, align 4
  br label %236

225:                                              ; preds = %210
  %226 = load i8*, i8** %34, align 8
  %227 = bitcast i8* %226 to float*
  %228 = load float, float* %227, align 4
  %229 = load float, float* %41, align 4
  %230 = fmul float %228, %229
  %231 = load i32, i32* %30, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %232
  %234 = load float, float* %233, align 4
  %235 = fadd float %234, %230
  store float %235, float* %233, align 4
  br label %236

236:                                              ; preds = %225, %213
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %30, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %30, align 4
  %240 = load i32, i32* %19, align 4
  %241 = load i8*, i8** %34, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8* %243, i8** %34, align 8
  br label %206

244:                                              ; preds = %206
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %50, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %50, align 4
  br label %196

248:                                              ; preds = %196
  %249 = load i32, i32* %21, align 4
  %250 = load i8*, i8** %32, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %32, align 8
  %253 = load i8*, i8** %32, align 8
  store i8* %253, i8** %53, align 8
  %254 = load float, float* %41, align 4
  %255 = load float, float* %43, align 4
  %256 = fmul float %254, %255
  store float %256, float* %25, align 4
  store i32 0, i32* %30, align 4
  %257 = load i8*, i8** %32, align 8
  store i8* %257, i8** %34, align 8
  br label %258

258:                                              ; preds = %289, %248
  %259 = load i32, i32* %30, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %296

262:                                              ; preds = %258
  %263 = load i32, i32* %22, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %262
  %266 = load i8*, i8** %34, align 8
  %267 = call i64 @__GLU_SWAP_2_BYTES(i8* %266)
  store i64 %267, i64* %54, align 8
  %268 = bitcast i64* %54 to float*
  %269 = load float, float* %268, align 8
  %270 = load float, float* %25, align 4
  %271 = fmul float %269, %270
  %272 = load i32, i32* %30, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %273
  %275 = load float, float* %274, align 4
  %276 = fadd float %275, %271
  store float %276, float* %274, align 4
  br label %288

277:                                              ; preds = %262
  %278 = load i8*, i8** %34, align 8
  %279 = bitcast i8* %278 to float*
  %280 = load float, float* %279, align 4
  %281 = load float, float* %25, align 4
  %282 = fmul float %280, %281
  %283 = load i32, i32* %30, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %284
  %286 = load float, float* %285, align 4
  %287 = fadd float %286, %282
  store float %287, float* %285, align 4
  br label %288

288:                                              ; preds = %277, %265
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %30, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %30, align 4
  %292 = load i32, i32* %19, align 4
  %293 = load i8*, i8** %34, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** %34, align 8
  br label %258

296:                                              ; preds = %258
  %297 = load float, float* %45, align 4
  store float %297, float* %41, align 4
  %298 = load float, float* %41, align 4
  %299 = load float, float* %42, align 4
  %300 = fsub float 1.000000e+00, %299
  %301 = fmul float %298, %300
  store float %301, float* %25, align 4
  %302 = load float*, float** %15, align 8
  %303 = bitcast float* %302 to i8*
  %304 = load i32, i32* %31, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  %307 = load i32, i32* %39, align 4
  %308 = load i32, i32* %20, align 4
  %309 = mul nsw i32 %307, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %306, i64 %310
  store i8* %311, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %312 = load i8*, i8** %32, align 8
  store i8* %312, i8** %34, align 8
  br label %313

313:                                              ; preds = %344, %296
  %314 = load i32, i32* %30, align 4
  %315 = load i32, i32* %12, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %351

317:                                              ; preds = %313
  %318 = load i32, i32* %22, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %317
  %321 = load i8*, i8** %34, align 8
  %322 = call i64 @__GLU_SWAP_2_BYTES(i8* %321)
  store i64 %322, i64* %54, align 8
  %323 = bitcast i64* %54 to float*
  %324 = load float, float* %323, align 8
  %325 = load float, float* %25, align 4
  %326 = fmul float %324, %325
  %327 = load i32, i32* %30, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %328
  %330 = load float, float* %329, align 4
  %331 = fadd float %330, %326
  store float %331, float* %329, align 4
  br label %343

332:                                              ; preds = %317
  %333 = load i8*, i8** %34, align 8
  %334 = bitcast i8* %333 to float*
  %335 = load float, float* %334, align 4
  %336 = load float, float* %25, align 4
  %337 = fmul float %335, %336
  %338 = load i32, i32* %30, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %339
  %341 = load float, float* %340, align 4
  %342 = fadd float %341, %337
  store float %342, float* %340, align 4
  br label %343

343:                                              ; preds = %332, %320
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %30, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %30, align 4
  %347 = load i32, i32* %19, align 4
  %348 = load i8*, i8** %34, align 8
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i8, i8* %348, i64 %349
  store i8* %350, i8** %34, align 8
  br label %313

351:                                              ; preds = %313
  %352 = load i32, i32* %36, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %50, align 4
  br label %354

354:                                              ; preds = %403, %351
  %355 = load i32, i32* %50, align 4
  %356 = load i32, i32* %37, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %406

358:                                              ; preds = %354
  %359 = load i32, i32* %21, align 4
  %360 = load i8*, i8** %32, align 8
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i8, i8* %360, i64 %361
  store i8* %362, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %363 = load i8*, i8** %32, align 8
  store i8* %363, i8** %34, align 8
  br label %364

364:                                              ; preds = %395, %358
  %365 = load i32, i32* %30, align 4
  %366 = load i32, i32* %12, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %402

368:                                              ; preds = %364
  %369 = load i32, i32* %22, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %383

371:                                              ; preds = %368
  %372 = load i8*, i8** %34, align 8
  %373 = call i64 @__GLU_SWAP_2_BYTES(i8* %372)
  store i64 %373, i64* %54, align 8
  %374 = bitcast i64* %54 to float*
  %375 = load float, float* %374, align 8
  %376 = load float, float* %41, align 4
  %377 = fmul float %375, %376
  %378 = load i32, i32* %30, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %379
  %381 = load float, float* %380, align 4
  %382 = fadd float %381, %377
  store float %382, float* %380, align 4
  br label %394

383:                                              ; preds = %368
  %384 = load i8*, i8** %34, align 8
  %385 = bitcast i8* %384 to float*
  %386 = load float, float* %385, align 4
  %387 = load float, float* %41, align 4
  %388 = fmul float %386, %387
  %389 = load i32, i32* %30, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %390
  %392 = load float, float* %391, align 4
  %393 = fadd float %392, %388
  store float %393, float* %391, align 4
  br label %394

394:                                              ; preds = %383, %371
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %30, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %30, align 4
  %398 = load i32, i32* %19, align 4
  %399 = load i8*, i8** %34, align 8
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i8, i8* %399, i64 %400
  store i8* %401, i8** %34, align 8
  br label %364

402:                                              ; preds = %364
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %50, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %50, align 4
  br label %354

406:                                              ; preds = %354
  %407 = load i32, i32* %21, align 4
  %408 = load i8*, i8** %32, align 8
  %409 = sext i32 %407 to i64
  %410 = getelementptr inbounds i8, i8* %408, i64 %409
  store i8* %410, i8** %32, align 8
  %411 = load float, float* %41, align 4
  %412 = load float, float* %43, align 4
  %413 = fmul float %411, %412
  store float %413, float* %25, align 4
  store i32 0, i32* %30, align 4
  %414 = load i8*, i8** %32, align 8
  store i8* %414, i8** %34, align 8
  br label %415

415:                                              ; preds = %446, %406
  %416 = load i32, i32* %30, align 4
  %417 = load i32, i32* %12, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %453

419:                                              ; preds = %415
  %420 = load i32, i32* %22, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %434

422:                                              ; preds = %419
  %423 = load i8*, i8** %34, align 8
  %424 = call i64 @__GLU_SWAP_2_BYTES(i8* %423)
  store i64 %424, i64* %54, align 8
  %425 = bitcast i64* %54 to float*
  %426 = load float, float* %425, align 8
  %427 = load float, float* %25, align 4
  %428 = fmul float %426, %427
  %429 = load i32, i32* %30, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %430
  %432 = load float, float* %431, align 4
  %433 = fadd float %432, %428
  store float %433, float* %431, align 4
  br label %445

434:                                              ; preds = %419
  %435 = load i8*, i8** %34, align 8
  %436 = bitcast i8* %435 to float*
  %437 = load float, float* %436, align 4
  %438 = load float, float* %25, align 4
  %439 = fmul float %437, %438
  %440 = load i32, i32* %30, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %441
  %443 = load float, float* %442, align 4
  %444 = fadd float %443, %439
  store float %444, float* %442, align 4
  br label %445

445:                                              ; preds = %434, %422
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %30, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %30, align 4
  %449 = load i32, i32* %19, align 4
  %450 = load i8*, i8** %34, align 8
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds i8, i8* %450, i64 %451
  store i8* %452, i8** %34, align 8
  br label %415

453:                                              ; preds = %415
  %454 = load i32, i32* %38, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %51, align 4
  br label %456

456:                                              ; preds = %531, %453
  %457 = load i32, i32* %51, align 4
  %458 = load i32, i32* %39, align 4
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %460, label %534

460:                                              ; preds = %456
  %461 = load i32, i32* %20, align 4
  %462 = load i8*, i8** %52, align 8
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds i8, i8* %462, i64 %463
  store i8* %464, i8** %52, align 8
  %465 = load i32, i32* %20, align 4
  %466 = load i8*, i8** %53, align 8
  %467 = sext i32 %465 to i64
  %468 = getelementptr inbounds i8, i8* %466, i64 %467
  store i8* %468, i8** %53, align 8
  store i32 0, i32* %30, align 4
  br label %469

469:                                              ; preds = %519, %460
  %470 = load i32, i32* %30, align 4
  %471 = load i32, i32* %12, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %530

473:                                              ; preds = %469
  %474 = load i32, i32* %22, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %500

476:                                              ; preds = %473
  %477 = load i8*, i8** %52, align 8
  %478 = call i64 @__GLU_SWAP_2_BYTES(i8* %477)
  store i64 %478, i64* %54, align 8
  %479 = bitcast i64* %54 to float*
  %480 = load float, float* %479, align 8
  %481 = load float, float* %42, align 4
  %482 = fsub float 1.000000e+00, %481
  %483 = fmul float %480, %482
  %484 = load i32, i32* %30, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %485
  %487 = load float, float* %486, align 4
  %488 = fadd float %487, %483
  store float %488, float* %486, align 4
  %489 = load i8*, i8** %53, align 8
  %490 = call i64 @__GLU_SWAP_2_BYTES(i8* %489)
  store i64 %490, i64* %54, align 8
  %491 = bitcast i64* %54 to float*
  %492 = load float, float* %491, align 8
  %493 = load float, float* %43, align 4
  %494 = fmul float %492, %493
  %495 = load i32, i32* %30, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %496
  %498 = load float, float* %497, align 4
  %499 = fadd float %498, %494
  store float %499, float* %497, align 4
  br label %518

500:                                              ; preds = %473
  %501 = load i8*, i8** %52, align 8
  %502 = bitcast i8* %501 to float*
  %503 = load float, float* %502, align 4
  %504 = load float, float* %42, align 4
  %505 = fsub float 1.000000e+00, %504
  %506 = fmul float %503, %505
  %507 = load i8*, i8** %53, align 8
  %508 = bitcast i8* %507 to float*
  %509 = load float, float* %508, align 4
  %510 = load float, float* %43, align 4
  %511 = fmul float %509, %510
  %512 = fadd float %506, %511
  %513 = load i32, i32* %30, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %514
  %516 = load float, float* %515, align 4
  %517 = fadd float %516, %512
  store float %517, float* %515, align 4
  br label %518

518:                                              ; preds = %500, %476
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %30, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %30, align 4
  %522 = load i32, i32* %19, align 4
  %523 = load i8*, i8** %52, align 8
  %524 = sext i32 %522 to i64
  %525 = getelementptr inbounds i8, i8* %523, i64 %524
  store i8* %525, i8** %52, align 8
  %526 = load i32, i32* %19, align 4
  %527 = load i8*, i8** %53, align 8
  %528 = sext i32 %526 to i64
  %529 = getelementptr inbounds i8, i8* %527, i64 %528
  store i8* %529, i8** %53, align 8
  br label %469

530:                                              ; preds = %469
  br label %531

531:                                              ; preds = %530
  %532 = load i32, i32* %51, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %51, align 4
  br label %456

534:                                              ; preds = %456
  br label %923

535:                                              ; preds = %132, %121
  %536 = load i32, i32* %39, align 4
  %537 = load i32, i32* %38, align 4
  %538 = icmp sgt i32 %536, %537
  br i1 %538, label %539, label %699

539:                                              ; preds = %535
  %540 = load float, float* %43, align 4
  %541 = load float, float* %42, align 4
  %542 = fsub float %540, %541
  store float %542, float* %40, align 4
  %543 = load float, float* %44, align 4
  %544 = fsub float 1.000000e+00, %543
  %545 = load float, float* %40, align 4
  %546 = fmul float %544, %545
  store float %546, float* %25, align 4
  %547 = load float*, float** %15, align 8
  %548 = bitcast float* %547 to i8*
  %549 = load i32, i32* %31, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, i8* %548, i64 %550
  %552 = load i32, i32* %38, align 4
  %553 = load i32, i32* %20, align 4
  %554 = mul nsw i32 %552, %553
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8, i8* %551, i64 %555
  store i8* %556, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %557 = load i8*, i8** %32, align 8
  store i8* %557, i8** %34, align 8
  br label %558

558:                                              ; preds = %589, %539
  %559 = load i32, i32* %30, align 4
  %560 = load i32, i32* %12, align 4
  %561 = icmp slt i32 %559, %560
  br i1 %561, label %562, label %596

562:                                              ; preds = %558
  %563 = load i32, i32* %22, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %577

565:                                              ; preds = %562
  %566 = load i8*, i8** %34, align 8
  %567 = call i64 @__GLU_SWAP_2_BYTES(i8* %566)
  store i64 %567, i64* %54, align 8
  %568 = bitcast i64* %54 to float*
  %569 = load float, float* %568, align 8
  %570 = load float, float* %25, align 4
  %571 = fmul float %569, %570
  %572 = load i32, i32* %30, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %573
  %575 = load float, float* %574, align 4
  %576 = fadd float %575, %571
  store float %576, float* %574, align 4
  br label %588

577:                                              ; preds = %562
  %578 = load i8*, i8** %34, align 8
  %579 = bitcast i8* %578 to float*
  %580 = load float, float* %579, align 4
  %581 = load float, float* %25, align 4
  %582 = fmul float %580, %581
  %583 = load i32, i32* %30, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %584
  %586 = load float, float* %585, align 4
  %587 = fadd float %586, %582
  store float %587, float* %585, align 4
  br label %588

588:                                              ; preds = %577, %565
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* %30, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %30, align 4
  %592 = load i32, i32* %19, align 4
  %593 = load i8*, i8** %34, align 8
  %594 = sext i32 %592 to i64
  %595 = getelementptr inbounds i8, i8* %593, i64 %594
  store i8* %595, i8** %34, align 8
  br label %558

596:                                              ; preds = %558
  %597 = load i32, i32* %38, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %51, align 4
  br label %599

599:                                              ; preds = %648, %596
  %600 = load i32, i32* %51, align 4
  %601 = load i32, i32* %39, align 4
  %602 = icmp slt i32 %600, %601
  br i1 %602, label %603, label %651

603:                                              ; preds = %599
  %604 = load i32, i32* %20, align 4
  %605 = load i8*, i8** %32, align 8
  %606 = sext i32 %604 to i64
  %607 = getelementptr inbounds i8, i8* %605, i64 %606
  store i8* %607, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %608 = load i8*, i8** %32, align 8
  store i8* %608, i8** %34, align 8
  br label %609

609:                                              ; preds = %640, %603
  %610 = load i32, i32* %30, align 4
  %611 = load i32, i32* %12, align 4
  %612 = icmp slt i32 %610, %611
  br i1 %612, label %613, label %647

613:                                              ; preds = %609
  %614 = load i32, i32* %22, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %628

616:                                              ; preds = %613
  %617 = load i8*, i8** %34, align 8
  %618 = call i64 @__GLU_SWAP_2_BYTES(i8* %617)
  store i64 %618, i64* %54, align 8
  %619 = bitcast i64* %54 to float*
  %620 = load float, float* %619, align 8
  %621 = load float, float* %40, align 4
  %622 = fmul float %620, %621
  %623 = load i32, i32* %30, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %624
  %626 = load float, float* %625, align 4
  %627 = fadd float %626, %622
  store float %627, float* %625, align 4
  br label %639

628:                                              ; preds = %613
  %629 = load i8*, i8** %34, align 8
  %630 = bitcast i8* %629 to float*
  %631 = load float, float* %630, align 4
  %632 = load float, float* %40, align 4
  %633 = fmul float %631, %632
  %634 = load i32, i32* %30, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %635
  %637 = load float, float* %636, align 4
  %638 = fadd float %637, %633
  store float %638, float* %636, align 4
  br label %639

639:                                              ; preds = %628, %616
  br label %640

640:                                              ; preds = %639
  %641 = load i32, i32* %30, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %30, align 4
  %643 = load i32, i32* %19, align 4
  %644 = load i8*, i8** %34, align 8
  %645 = sext i32 %643 to i64
  %646 = getelementptr inbounds i8, i8* %644, i64 %645
  store i8* %646, i8** %34, align 8
  br label %609

647:                                              ; preds = %609
  br label %648

648:                                              ; preds = %647
  %649 = load i32, i32* %51, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %51, align 4
  br label %599

651:                                              ; preds = %599
  %652 = load float, float* %40, align 4
  %653 = load float, float* %45, align 4
  %654 = fmul float %652, %653
  store float %654, float* %25, align 4
  %655 = load i32, i32* %20, align 4
  %656 = load i8*, i8** %32, align 8
  %657 = sext i32 %655 to i64
  %658 = getelementptr inbounds i8, i8* %656, i64 %657
  store i8* %658, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %659 = load i8*, i8** %32, align 8
  store i8* %659, i8** %34, align 8
  br label %660

660:                                              ; preds = %691, %651
  %661 = load i32, i32* %30, align 4
  %662 = load i32, i32* %12, align 4
  %663 = icmp slt i32 %661, %662
  br i1 %663, label %664, label %698

664:                                              ; preds = %660
  %665 = load i32, i32* %22, align 4
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %679

667:                                              ; preds = %664
  %668 = load i8*, i8** %34, align 8
  %669 = call i64 @__GLU_SWAP_2_BYTES(i8* %668)
  store i64 %669, i64* %54, align 8
  %670 = bitcast i64* %54 to float*
  %671 = load float, float* %670, align 8
  %672 = load float, float* %25, align 4
  %673 = fmul float %671, %672
  %674 = load i32, i32* %30, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %675
  %677 = load float, float* %676, align 4
  %678 = fadd float %677, %673
  store float %678, float* %676, align 4
  br label %690

679:                                              ; preds = %664
  %680 = load i8*, i8** %34, align 8
  %681 = bitcast i8* %680 to float*
  %682 = load float, float* %681, align 4
  %683 = load float, float* %25, align 4
  %684 = fmul float %682, %683
  %685 = load i32, i32* %30, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %686
  %688 = load float, float* %687, align 4
  %689 = fadd float %688, %684
  store float %689, float* %687, align 4
  br label %690

690:                                              ; preds = %679, %667
  br label %691

691:                                              ; preds = %690
  %692 = load i32, i32* %30, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %30, align 4
  %694 = load i32, i32* %19, align 4
  %695 = load i8*, i8** %34, align 8
  %696 = sext i32 %694 to i64
  %697 = getelementptr inbounds i8, i8* %695, i64 %696
  store i8* %697, i8** %34, align 8
  br label %660

698:                                              ; preds = %660
  br label %922

699:                                              ; preds = %535
  %700 = load i32, i32* %37, align 4
  %701 = load i32, i32* %36, align 4
  %702 = icmp sgt i32 %700, %701
  br i1 %702, label %703, label %863

703:                                              ; preds = %699
  %704 = load float, float* %45, align 4
  %705 = load float, float* %44, align 4
  %706 = fsub float %704, %705
  store float %706, float* %41, align 4
  %707 = load float, float* %42, align 4
  %708 = fsub float 1.000000e+00, %707
  %709 = load float, float* %41, align 4
  %710 = fmul float %708, %709
  store float %710, float* %25, align 4
  %711 = load float*, float** %15, align 8
  %712 = bitcast float* %711 to i8*
  %713 = load i32, i32* %31, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i8, i8* %712, i64 %714
  %716 = load i32, i32* %38, align 4
  %717 = load i32, i32* %20, align 4
  %718 = mul nsw i32 %716, %717
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds i8, i8* %715, i64 %719
  store i8* %720, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %721 = load i8*, i8** %32, align 8
  store i8* %721, i8** %34, align 8
  br label %722

722:                                              ; preds = %753, %703
  %723 = load i32, i32* %30, align 4
  %724 = load i32, i32* %12, align 4
  %725 = icmp slt i32 %723, %724
  br i1 %725, label %726, label %760

726:                                              ; preds = %722
  %727 = load i32, i32* %22, align 4
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %741

729:                                              ; preds = %726
  %730 = load i8*, i8** %34, align 8
  %731 = call i64 @__GLU_SWAP_2_BYTES(i8* %730)
  store i64 %731, i64* %54, align 8
  %732 = bitcast i64* %54 to float*
  %733 = load float, float* %732, align 8
  %734 = load float, float* %25, align 4
  %735 = fmul float %733, %734
  %736 = load i32, i32* %30, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %737
  %739 = load float, float* %738, align 4
  %740 = fadd float %739, %735
  store float %740, float* %738, align 4
  br label %752

741:                                              ; preds = %726
  %742 = load i8*, i8** %34, align 8
  %743 = bitcast i8* %742 to float*
  %744 = load float, float* %743, align 4
  %745 = load float, float* %25, align 4
  %746 = fmul float %744, %745
  %747 = load i32, i32* %30, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %748
  %750 = load float, float* %749, align 4
  %751 = fadd float %750, %746
  store float %751, float* %749, align 4
  br label %752

752:                                              ; preds = %741, %729
  br label %753

753:                                              ; preds = %752
  %754 = load i32, i32* %30, align 4
  %755 = add nsw i32 %754, 1
  store i32 %755, i32* %30, align 4
  %756 = load i32, i32* %19, align 4
  %757 = load i8*, i8** %34, align 8
  %758 = sext i32 %756 to i64
  %759 = getelementptr inbounds i8, i8* %757, i64 %758
  store i8* %759, i8** %34, align 8
  br label %722

760:                                              ; preds = %722
  %761 = load i32, i32* %36, align 4
  %762 = add nsw i32 %761, 1
  store i32 %762, i32* %50, align 4
  br label %763

763:                                              ; preds = %812, %760
  %764 = load i32, i32* %50, align 4
  %765 = load i32, i32* %37, align 4
  %766 = icmp slt i32 %764, %765
  br i1 %766, label %767, label %815

767:                                              ; preds = %763
  %768 = load i32, i32* %21, align 4
  %769 = load i8*, i8** %32, align 8
  %770 = sext i32 %768 to i64
  %771 = getelementptr inbounds i8, i8* %769, i64 %770
  store i8* %771, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %772 = load i8*, i8** %32, align 8
  store i8* %772, i8** %34, align 8
  br label %773

773:                                              ; preds = %804, %767
  %774 = load i32, i32* %30, align 4
  %775 = load i32, i32* %12, align 4
  %776 = icmp slt i32 %774, %775
  br i1 %776, label %777, label %811

777:                                              ; preds = %773
  %778 = load i32, i32* %22, align 4
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %780, label %792

780:                                              ; preds = %777
  %781 = load i8*, i8** %34, align 8
  %782 = call i64 @__GLU_SWAP_2_BYTES(i8* %781)
  store i64 %782, i64* %54, align 8
  %783 = bitcast i64* %54 to float*
  %784 = load float, float* %783, align 8
  %785 = load float, float* %41, align 4
  %786 = fmul float %784, %785
  %787 = load i32, i32* %30, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %788
  %790 = load float, float* %789, align 4
  %791 = fadd float %790, %786
  store float %791, float* %789, align 4
  br label %803

792:                                              ; preds = %777
  %793 = load i8*, i8** %34, align 8
  %794 = bitcast i8* %793 to float*
  %795 = load float, float* %794, align 4
  %796 = load float, float* %41, align 4
  %797 = fmul float %795, %796
  %798 = load i32, i32* %30, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %799
  %801 = load float, float* %800, align 4
  %802 = fadd float %801, %797
  store float %802, float* %800, align 4
  br label %803

803:                                              ; preds = %792, %780
  br label %804

804:                                              ; preds = %803
  %805 = load i32, i32* %30, align 4
  %806 = add nsw i32 %805, 1
  store i32 %806, i32* %30, align 4
  %807 = load i32, i32* %19, align 4
  %808 = load i8*, i8** %34, align 8
  %809 = sext i32 %807 to i64
  %810 = getelementptr inbounds i8, i8* %808, i64 %809
  store i8* %810, i8** %34, align 8
  br label %773

811:                                              ; preds = %773
  br label %812

812:                                              ; preds = %811
  %813 = load i32, i32* %50, align 4
  %814 = add nsw i32 %813, 1
  store i32 %814, i32* %50, align 4
  br label %763

815:                                              ; preds = %763
  %816 = load i32, i32* %21, align 4
  %817 = load i8*, i8** %32, align 8
  %818 = sext i32 %816 to i64
  %819 = getelementptr inbounds i8, i8* %817, i64 %818
  store i8* %819, i8** %32, align 8
  %820 = load float, float* %41, align 4
  %821 = load float, float* %43, align 4
  %822 = fmul float %820, %821
  store float %822, float* %25, align 4
  store i32 0, i32* %30, align 4
  %823 = load i8*, i8** %32, align 8
  store i8* %823, i8** %34, align 8
  br label %824

824:                                              ; preds = %855, %815
  %825 = load i32, i32* %30, align 4
  %826 = load i32, i32* %12, align 4
  %827 = icmp slt i32 %825, %826
  br i1 %827, label %828, label %862

828:                                              ; preds = %824
  %829 = load i32, i32* %22, align 4
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %843

831:                                              ; preds = %828
  %832 = load i8*, i8** %34, align 8
  %833 = call i64 @__GLU_SWAP_2_BYTES(i8* %832)
  store i64 %833, i64* %54, align 8
  %834 = bitcast i64* %54 to float*
  %835 = load float, float* %834, align 8
  %836 = load float, float* %25, align 4
  %837 = fmul float %835, %836
  %838 = load i32, i32* %30, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %839
  %841 = load float, float* %840, align 4
  %842 = fadd float %841, %837
  store float %842, float* %840, align 4
  br label %854

843:                                              ; preds = %828
  %844 = load i8*, i8** %34, align 8
  %845 = bitcast i8* %844 to float*
  %846 = load float, float* %845, align 4
  %847 = load float, float* %25, align 4
  %848 = fmul float %846, %847
  %849 = load i32, i32* %30, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %850
  %852 = load float, float* %851, align 4
  %853 = fadd float %852, %848
  store float %853, float* %851, align 4
  br label %854

854:                                              ; preds = %843, %831
  br label %855

855:                                              ; preds = %854
  %856 = load i32, i32* %30, align 4
  %857 = add nsw i32 %856, 1
  store i32 %857, i32* %30, align 4
  %858 = load i32, i32* %19, align 4
  %859 = load i8*, i8** %34, align 8
  %860 = sext i32 %858 to i64
  %861 = getelementptr inbounds i8, i8* %859, i64 %860
  store i8* %861, i8** %34, align 8
  br label %824

862:                                              ; preds = %824
  br label %921

863:                                              ; preds = %699
  %864 = load float, float* %45, align 4
  %865 = load float, float* %44, align 4
  %866 = fsub float %864, %865
  %867 = load float, float* %43, align 4
  %868 = load float, float* %42, align 4
  %869 = fsub float %867, %868
  %870 = fmul float %866, %869
  store float %870, float* %25, align 4
  %871 = load float*, float** %15, align 8
  %872 = bitcast float* %871 to i8*
  %873 = load i32, i32* %31, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds i8, i8* %872, i64 %874
  %876 = load i32, i32* %38, align 4
  %877 = load i32, i32* %20, align 4
  %878 = mul nsw i32 %876, %877
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i8, i8* %875, i64 %879
  store i8* %880, i8** %32, align 8
  store i32 0, i32* %30, align 4
  %881 = load i8*, i8** %32, align 8
  store i8* %881, i8** %34, align 8
  br label %882

882:                                              ; preds = %913, %863
  %883 = load i32, i32* %30, align 4
  %884 = load i32, i32* %12, align 4
  %885 = icmp slt i32 %883, %884
  br i1 %885, label %886, label %920

886:                                              ; preds = %882
  %887 = load i32, i32* %22, align 4
  %888 = icmp ne i32 %887, 0
  br i1 %888, label %889, label %901

889:                                              ; preds = %886
  %890 = load i8*, i8** %34, align 8
  %891 = call i64 @__GLU_SWAP_2_BYTES(i8* %890)
  store i64 %891, i64* %54, align 8
  %892 = bitcast i64* %54 to float*
  %893 = load float, float* %892, align 8
  %894 = load float, float* %25, align 4
  %895 = fmul float %893, %894
  %896 = load i32, i32* %30, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %897
  %899 = load float, float* %898, align 4
  %900 = fadd float %899, %895
  store float %900, float* %898, align 4
  br label %912

901:                                              ; preds = %886
  %902 = load i8*, i8** %34, align 8
  %903 = bitcast i8* %902 to float*
  %904 = load float, float* %903, align 4
  %905 = load float, float* %25, align 4
  %906 = fmul float %904, %905
  %907 = load i32, i32* %30, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %908
  %910 = load float, float* %909, align 4
  %911 = fadd float %910, %906
  store float %911, float* %909, align 4
  br label %912

912:                                              ; preds = %901, %889
  br label %913

913:                                              ; preds = %912
  %914 = load i32, i32* %30, align 4
  %915 = add nsw i32 %914, 1
  store i32 %915, i32* %30, align 4
  %916 = load i32, i32* %19, align 4
  %917 = load i8*, i8** %34, align 8
  %918 = sext i32 %916 to i64
  %919 = getelementptr inbounds i8, i8* %917, i64 %918
  store i8* %919, i8** %34, align 8
  br label %882

920:                                              ; preds = %882
  br label %921

921:                                              ; preds = %920, %862
  br label %922

922:                                              ; preds = %921, %698
  br label %923

923:                                              ; preds = %922, %534
  %924 = load float*, float** %15, align 8
  %925 = bitcast float* %924 to i8*
  %926 = load i32, i32* %31, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds i8, i8* %925, i64 %927
  %929 = load i32, i32* %21, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i8, i8* %928, i64 %930
  %932 = load i32, i32* %38, align 4
  %933 = add nsw i32 %932, 1
  %934 = load i32, i32* %20, align 4
  %935 = mul nsw i32 %933, %934
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i8, i8* %931, i64 %936
  store i8* %937, i8** %33, align 8
  %938 = load i32, i32* %38, align 4
  %939 = add nsw i32 %938, 1
  store i32 %939, i32* %51, align 4
  br label %940

940:                                              ; preds = %1001, %923
  %941 = load i32, i32* %51, align 4
  %942 = load i32, i32* %39, align 4
  %943 = icmp slt i32 %941, %942
  br i1 %943, label %944, label %1004

944:                                              ; preds = %940
  %945 = load i8*, i8** %33, align 8
  store i8* %945, i8** %32, align 8
  %946 = load i32, i32* %36, align 4
  %947 = add nsw i32 %946, 1
  store i32 %947, i32* %50, align 4
  br label %948

948:                                              ; preds = %993, %944
  %949 = load i32, i32* %50, align 4
  %950 = load i32, i32* %37, align 4
  %951 = icmp slt i32 %949, %950
  br i1 %951, label %952, label %996

952:                                              ; preds = %948
  store i32 0, i32* %30, align 4
  %953 = load i8*, i8** %32, align 8
  store i8* %953, i8** %34, align 8
  br label %954

954:                                              ; preds = %981, %952
  %955 = load i32, i32* %30, align 4
  %956 = load i32, i32* %12, align 4
  %957 = icmp slt i32 %955, %956
  br i1 %957, label %958, label %988

958:                                              ; preds = %954
  %959 = load i32, i32* %22, align 4
  %960 = icmp ne i32 %959, 0
  br i1 %960, label %961, label %971

961:                                              ; preds = %958
  %962 = load i8*, i8** %34, align 8
  %963 = call i64 @__GLU_SWAP_2_BYTES(i8* %962)
  store i64 %963, i64* %54, align 8
  %964 = bitcast i64* %54 to float*
  %965 = load float, float* %964, align 8
  %966 = load i32, i32* %30, align 4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %967
  %969 = load float, float* %968, align 4
  %970 = fadd float %969, %965
  store float %970, float* %968, align 4
  br label %980

971:                                              ; preds = %958
  %972 = load i8*, i8** %34, align 8
  %973 = bitcast i8* %972 to float*
  %974 = load float, float* %973, align 4
  %975 = load i32, i32* %30, align 4
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %976
  %978 = load float, float* %977, align 4
  %979 = fadd float %978, %974
  store float %979, float* %977, align 4
  br label %980

980:                                              ; preds = %971, %961
  br label %981

981:                                              ; preds = %980
  %982 = load i32, i32* %30, align 4
  %983 = add nsw i32 %982, 1
  store i32 %983, i32* %30, align 4
  %984 = load i32, i32* %19, align 4
  %985 = load i8*, i8** %34, align 8
  %986 = sext i32 %984 to i64
  %987 = getelementptr inbounds i8, i8* %985, i64 %986
  store i8* %987, i8** %34, align 8
  br label %954

988:                                              ; preds = %954
  %989 = load i32, i32* %21, align 4
  %990 = load i8*, i8** %32, align 8
  %991 = sext i32 %989 to i64
  %992 = getelementptr inbounds i8, i8* %990, i64 %991
  store i8* %992, i8** %32, align 8
  br label %993

993:                                              ; preds = %988
  %994 = load i32, i32* %50, align 4
  %995 = add nsw i32 %994, 1
  store i32 %995, i32* %50, align 4
  br label %948

996:                                              ; preds = %948
  %997 = load i32, i32* %20, align 4
  %998 = load i8*, i8** %33, align 8
  %999 = sext i32 %997 to i64
  %1000 = getelementptr inbounds i8, i8* %998, i64 %999
  store i8* %1000, i8** %33, align 8
  br label %1001

1001:                                             ; preds = %996
  %1002 = load i32, i32* %51, align 4
  %1003 = add nsw i32 %1002, 1
  store i32 %1003, i32* %51, align 4
  br label %940

1004:                                             ; preds = %940
  %1005 = load i32, i32* %29, align 4
  %1006 = load i32, i32* %28, align 4
  %1007 = load i32, i32* %16, align 4
  %1008 = mul nsw i32 %1006, %1007
  %1009 = add nsw i32 %1005, %1008
  %1010 = load i32, i32* %12, align 4
  %1011 = mul nsw i32 %1009, %1010
  store i32 %1011, i32* %35, align 4
  store i32 0, i32* %30, align 4
  br label %1012

1012:                                             ; preds = %1029, %1004
  %1013 = load i32, i32* %30, align 4
  %1014 = load i32, i32* %12, align 4
  %1015 = icmp slt i32 %1013, %1014
  br i1 %1015, label %1016, label %1032

1016:                                             ; preds = %1012
  %1017 = load i32, i32* %30, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 %1018
  %1020 = load float, float* %1019, align 4
  %1021 = load float, float* %27, align 4
  %1022 = fdiv float %1020, %1021
  %1023 = load float*, float** %18, align 8
  %1024 = load i32, i32* %35, align 4
  %1025 = load i32, i32* %30, align 4
  %1026 = add nsw i32 %1024, %1025
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds float, float* %1023, i64 %1027
  store float %1022, float* %1028, align 4
  br label %1029

1029:                                             ; preds = %1016
  %1030 = load i32, i32* %30, align 4
  %1031 = add nsw i32 %1030, 1
  store i32 %1031, i32* %30, align 4
  br label %1012

1032:                                             ; preds = %1012
  %1033 = load i32, i32* %37, align 4
  store i32 %1033, i32* %36, align 4
  %1034 = load float, float* %43, align 4
  store float %1034, float* %42, align 4
  %1035 = load i32, i32* %49, align 4
  %1036 = load i32, i32* %37, align 4
  %1037 = add nsw i32 %1036, %1035
  store i32 %1037, i32* %37, align 4
  %1038 = load float, float* %47, align 4
  %1039 = load float, float* %43, align 4
  %1040 = fadd float %1039, %1038
  store float %1040, float* %43, align 4
  %1041 = load float, float* %43, align 4
  %1042 = fcmp ogt float %1041, 1.000000e+00
  br i1 %1042, label %1043, label %1050

1043:                                             ; preds = %1032
  %1044 = load float, float* %43, align 4
  %1045 = fpext float %1044 to double
  %1046 = fsub double %1045, 1.000000e+00
  %1047 = fptrunc double %1046 to float
  store float %1047, float* %43, align 4
  %1048 = load i32, i32* %37, align 4
  %1049 = add nsw i32 %1048, 1
  store i32 %1049, i32* %37, align 4
  br label %1050

1050:                                             ; preds = %1043, %1032
  br label %1051

1051:                                             ; preds = %1050
  %1052 = load i32, i32* %29, align 4
  %1053 = add nsw i32 %1052, 1
  store i32 %1053, i32* %29, align 4
  br label %117

1054:                                             ; preds = %117
  %1055 = load i32, i32* %39, align 4
  store i32 %1055, i32* %38, align 4
  %1056 = load float, float* %45, align 4
  store float %1056, float* %44, align 4
  %1057 = load i32, i32* %48, align 4
  %1058 = load i32, i32* %39, align 4
  %1059 = add nsw i32 %1058, %1057
  store i32 %1059, i32* %39, align 4
  %1060 = load float, float* %46, align 4
  %1061 = load float, float* %45, align 4
  %1062 = fadd float %1061, %1060
  store float %1062, float* %45, align 4
  %1063 = load float, float* %45, align 4
  %1064 = fcmp ogt float %1063, 1.000000e+00
  br i1 %1064, label %1065, label %1072

1065:                                             ; preds = %1054
  %1066 = load float, float* %45, align 4
  %1067 = fpext float %1066 to double
  %1068 = fsub double %1067, 1.000000e+00
  %1069 = fptrunc double %1068 to float
  store float %1069, float* %45, align 4
  %1070 = load i32, i32* %39, align 4
  %1071 = add nsw i32 %1070, 1
  store i32 %1071, i32* %39, align 4
  br label %1072

1072:                                             ; preds = %1065, %1054
  br label %1073

1073:                                             ; preds = %1072
  %1074 = load i32, i32* %28, align 4
  %1075 = add nsw i32 %1074, 1
  store i32 %1075, i32* %28, align 4
  br label %103

1076:                                             ; preds = %64, %103
  ret void
}

declare dso_local i32 @halveImage_short(i32, i32, i32, float*, float*, i32, i32, i32, i32) #1

declare dso_local i32 @floor(float) #1

declare dso_local i64 @__GLU_SWAP_2_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
