; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_scale_internal_ubyte.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_scale_internal_ubyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, float*, i32, i32, float*, i32, i32, i32)* @scale_internal_ubyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_internal_ubyte(i32 %0, i32 %1, i32 %2, float* %3, i32 %4, i32 %5, float* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca [4 x float], align 16
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i8*, align 8
  %51 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store float* %3, float** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store float* %6, float** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %53, 2
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %10
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %16, align 4
  %59 = mul nsw i32 %58, 2
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load float*, float** %14, align 8
  %66 = load float*, float** %17, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @halveImage_ubyte(i32 %62, i32 %63, i32 %64, float* %65, float* %66, i32 %67, i32 %68, i32 %69)
  br label %822

71:                                               ; preds = %56, %10
  %72 = load i32, i32* %13, align 4
  %73 = sitofp i32 %72 to float
  %74 = load i32, i32* %16, align 4
  %75 = sitofp i32 %74 to float
  %76 = fdiv float %73, %75
  store float %76, float* %22, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sitofp i32 %77 to float
  %79 = load i32, i32* %15, align 4
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %78, %80
  store float %81, float* %21, align 4
  %82 = load float, float* %22, align 4
  %83 = call i32 @floor(float %82)
  store i32 %83, i32* %46, align 4
  %84 = load float, float* %22, align 4
  %85 = load i32, i32* %46, align 4
  %86 = sitofp i32 %85 to float
  %87 = fsub float %84, %86
  store float %87, float* %44, align 4
  %88 = load float, float* %21, align 4
  %89 = call i32 @floor(float %88)
  store i32 %89, i32* %47, align 4
  %90 = load float, float* %21, align 4
  %91 = load i32, i32* %47, align 4
  %92 = sitofp i32 %91 to float
  %93 = fsub float %90, %92
  store float %93, float* %45, align 4
  %94 = load float, float* %21, align 4
  %95 = load float, float* %22, align 4
  %96 = fmul float %94, %95
  store float %96, float* %25, align 4
  store i32 0, i32* %36, align 4
  store float 0.000000e+00, float* %42, align 4
  %97 = load i32, i32* %46, align 4
  store i32 %97, i32* %37, align 4
  %98 = load float, float* %44, align 4
  store float %98, float* %43, align 4
  store i32 0, i32* %26, align 4
  br label %99

99:                                               ; preds = %819, %71
  %100 = load i32, i32* %26, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %822

103:                                              ; preds = %99
  %104 = load i32, i32* %37, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %37, align 4
  br label %110

110:                                              ; preds = %107, %103
  store i32 0, i32* %34, align 4
  store float 0.000000e+00, float* %40, align 4
  %111 = load i32, i32* %47, align 4
  store i32 %111, i32* %35, align 4
  %112 = load float, float* %45, align 4
  store float %112, float* %41, align 4
  store i32 0, i32* %27, align 4
  br label %113

113:                                              ; preds = %797, %110
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %800

117:                                              ; preds = %113
  %118 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 3
  store float 0.000000e+00, float* %118, align 4
  %119 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 2
  store float 0.000000e+00, float* %119, align 8
  %120 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 1
  store float 0.000000e+00, float* %120, align 4
  %121 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 0
  store float 0.000000e+00, float* %121, align 16
  %122 = load i32, i32* %34, align 4
  %123 = load i32, i32* %20, align 4
  %124 = mul nsw i32 %122, %123
  store i32 %124, i32* %29, align 4
  %125 = load i32, i32* %37, align 4
  %126 = load i32, i32* %36, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %407

128:                                              ; preds = %117
  %129 = load i32, i32* %35, align 4
  %130 = load i32, i32* %34, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %407

132:                                              ; preds = %128
  %133 = load float, float* %42, align 4
  %134 = fsub float 1.000000e+00, %133
  store float %134, float* %39, align 4
  %135 = load float*, float** %14, align 8
  %136 = bitcast float* %135 to i8*
  %137 = load i32, i32* %29, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %36, align 4
  %141 = load i32, i32* %19, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  store i8* %144, i8** %30, align 8
  %145 = load float, float* %39, align 4
  %146 = load float, float* %40, align 4
  %147 = fsub float 1.000000e+00, %146
  %148 = fmul float %145, %147
  store float %148, float* %23, align 4
  store i32 0, i32* %28, align 4
  %149 = load i8*, i8** %30, align 8
  store i8* %149, i8** %32, align 8
  br label %150

150:                                              ; preds = %165, %132
  %151 = load i32, i32* %28, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %150
  %155 = load i8*, i8** %32, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sitofp i8 %156 to float
  %158 = load float, float* %23, align 4
  %159 = fmul float %157, %158
  %160 = load i32, i32* %28, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fadd float %163, %159
  store float %164, float* %162, align 4
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %28, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %28, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i8*, i8** %32, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %32, align 8
  br label %150

172:                                              ; preds = %150
  %173 = load i8*, i8** %30, align 8
  store i8* %173, i8** %50, align 8
  %174 = load i32, i32* %34, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %48, align 4
  br label %176

176:                                              ; preds = %209, %172
  %177 = load i32, i32* %48, align 4
  %178 = load i32, i32* %35, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %212

180:                                              ; preds = %176
  %181 = load i32, i32* %20, align 4
  %182 = load i8*, i8** %30, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %185 = load i8*, i8** %30, align 8
  store i8* %185, i8** %32, align 8
  br label %186

186:                                              ; preds = %201, %180
  %187 = load i32, i32* %28, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %186
  %191 = load i8*, i8** %32, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sitofp i8 %192 to float
  %194 = load float, float* %39, align 4
  %195 = fmul float %193, %194
  %196 = load i32, i32* %28, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %197
  %199 = load float, float* %198, align 4
  %200 = fadd float %199, %195
  store float %200, float* %198, align 4
  br label %201

201:                                              ; preds = %190
  %202 = load i32, i32* %28, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %28, align 4
  %204 = load i32, i32* %18, align 4
  %205 = load i8*, i8** %32, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %32, align 8
  br label %186

208:                                              ; preds = %186
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %48, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %48, align 4
  br label %176

212:                                              ; preds = %176
  %213 = load i32, i32* %20, align 4
  %214 = load i8*, i8** %30, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %30, align 8
  %217 = load i8*, i8** %30, align 8
  store i8* %217, i8** %51, align 8
  %218 = load float, float* %39, align 4
  %219 = load float, float* %41, align 4
  %220 = fmul float %218, %219
  store float %220, float* %23, align 4
  store i32 0, i32* %28, align 4
  %221 = load i8*, i8** %30, align 8
  store i8* %221, i8** %32, align 8
  br label %222

222:                                              ; preds = %237, %212
  %223 = load i32, i32* %28, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %244

226:                                              ; preds = %222
  %227 = load i8*, i8** %32, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sitofp i8 %228 to float
  %230 = load float, float* %23, align 4
  %231 = fmul float %229, %230
  %232 = load i32, i32* %28, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %233
  %235 = load float, float* %234, align 4
  %236 = fadd float %235, %231
  store float %236, float* %234, align 4
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %28, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %28, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load i8*, i8** %32, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8* %243, i8** %32, align 8
  br label %222

244:                                              ; preds = %222
  %245 = load float, float* %43, align 4
  store float %245, float* %39, align 4
  %246 = load float, float* %39, align 4
  %247 = load float, float* %40, align 4
  %248 = fsub float 1.000000e+00, %247
  %249 = fmul float %246, %248
  store float %249, float* %23, align 4
  %250 = load float*, float** %14, align 8
  %251 = bitcast float* %250 to i8*
  %252 = load i32, i32* %29, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i32, i32* %37, align 4
  %256 = load i32, i32* %19, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %254, i64 %258
  store i8* %259, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %260 = load i8*, i8** %30, align 8
  store i8* %260, i8** %32, align 8
  br label %261

261:                                              ; preds = %276, %244
  %262 = load i32, i32* %28, align 4
  %263 = load i32, i32* %11, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %283

265:                                              ; preds = %261
  %266 = load i8*, i8** %32, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sitofp i8 %267 to float
  %269 = load float, float* %23, align 4
  %270 = fmul float %268, %269
  %271 = load i32, i32* %28, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %272
  %274 = load float, float* %273, align 4
  %275 = fadd float %274, %270
  store float %275, float* %273, align 4
  br label %276

276:                                              ; preds = %265
  %277 = load i32, i32* %28, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %28, align 4
  %279 = load i32, i32* %18, align 4
  %280 = load i8*, i8** %32, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %32, align 8
  br label %261

283:                                              ; preds = %261
  %284 = load i32, i32* %34, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %48, align 4
  br label %286

286:                                              ; preds = %319, %283
  %287 = load i32, i32* %48, align 4
  %288 = load i32, i32* %35, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %322

290:                                              ; preds = %286
  %291 = load i32, i32* %20, align 4
  %292 = load i8*, i8** %30, align 8
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i8, i8* %292, i64 %293
  store i8* %294, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %295 = load i8*, i8** %30, align 8
  store i8* %295, i8** %32, align 8
  br label %296

296:                                              ; preds = %311, %290
  %297 = load i32, i32* %28, align 4
  %298 = load i32, i32* %11, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %318

300:                                              ; preds = %296
  %301 = load i8*, i8** %32, align 8
  %302 = load i8, i8* %301, align 1
  %303 = sitofp i8 %302 to float
  %304 = load float, float* %39, align 4
  %305 = fmul float %303, %304
  %306 = load i32, i32* %28, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %307
  %309 = load float, float* %308, align 4
  %310 = fadd float %309, %305
  store float %310, float* %308, align 4
  br label %311

311:                                              ; preds = %300
  %312 = load i32, i32* %28, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %28, align 4
  %314 = load i32, i32* %18, align 4
  %315 = load i8*, i8** %32, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8* %317, i8** %32, align 8
  br label %296

318:                                              ; preds = %296
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %48, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %48, align 4
  br label %286

322:                                              ; preds = %286
  %323 = load i32, i32* %20, align 4
  %324 = load i8*, i8** %30, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  store i8* %326, i8** %30, align 8
  %327 = load float, float* %39, align 4
  %328 = load float, float* %41, align 4
  %329 = fmul float %327, %328
  store float %329, float* %23, align 4
  store i32 0, i32* %28, align 4
  %330 = load i8*, i8** %30, align 8
  store i8* %330, i8** %32, align 8
  br label %331

331:                                              ; preds = %346, %322
  %332 = load i32, i32* %28, align 4
  %333 = load i32, i32* %11, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %353

335:                                              ; preds = %331
  %336 = load i8*, i8** %32, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sitofp i8 %337 to float
  %339 = load float, float* %23, align 4
  %340 = fmul float %338, %339
  %341 = load i32, i32* %28, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %342
  %344 = load float, float* %343, align 4
  %345 = fadd float %344, %340
  store float %345, float* %343, align 4
  br label %346

346:                                              ; preds = %335
  %347 = load i32, i32* %28, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %28, align 4
  %349 = load i32, i32* %18, align 4
  %350 = load i8*, i8** %32, align 8
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i8, i8* %350, i64 %351
  store i8* %352, i8** %32, align 8
  br label %331

353:                                              ; preds = %331
  %354 = load i32, i32* %36, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %49, align 4
  br label %356

356:                                              ; preds = %403, %353
  %357 = load i32, i32* %49, align 4
  %358 = load i32, i32* %37, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %406

360:                                              ; preds = %356
  %361 = load i32, i32* %19, align 4
  %362 = load i8*, i8** %50, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i8, i8* %362, i64 %363
  store i8* %364, i8** %50, align 8
  %365 = load i32, i32* %19, align 4
  %366 = load i8*, i8** %51, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  store i8* %368, i8** %51, align 8
  store i32 0, i32* %28, align 4
  br label %369

369:                                              ; preds = %391, %360
  %370 = load i32, i32* %28, align 4
  %371 = load i32, i32* %11, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %402

373:                                              ; preds = %369
  %374 = load i8*, i8** %50, align 8
  %375 = load i8, i8* %374, align 1
  %376 = sitofp i8 %375 to float
  %377 = load float, float* %40, align 4
  %378 = fsub float 1.000000e+00, %377
  %379 = fmul float %376, %378
  %380 = load i8*, i8** %51, align 8
  %381 = load i8, i8* %380, align 1
  %382 = sitofp i8 %381 to float
  %383 = load float, float* %41, align 4
  %384 = fmul float %382, %383
  %385 = fadd float %379, %384
  %386 = load i32, i32* %28, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %387
  %389 = load float, float* %388, align 4
  %390 = fadd float %389, %385
  store float %390, float* %388, align 4
  br label %391

391:                                              ; preds = %373
  %392 = load i32, i32* %28, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %28, align 4
  %394 = load i32, i32* %18, align 4
  %395 = load i8*, i8** %50, align 8
  %396 = sext i32 %394 to i64
  %397 = getelementptr inbounds i8, i8* %395, i64 %396
  store i8* %397, i8** %50, align 8
  %398 = load i32, i32* %18, align 4
  %399 = load i8*, i8** %51, align 8
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i8, i8* %399, i64 %400
  store i8* %401, i8** %51, align 8
  br label %369

402:                                              ; preds = %369
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %49, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %49, align 4
  br label %356

406:                                              ; preds = %356
  br label %683

407:                                              ; preds = %128, %117
  %408 = load i32, i32* %37, align 4
  %409 = load i32, i32* %36, align 4
  %410 = icmp sgt i32 %408, %409
  br i1 %410, label %411, label %523

411:                                              ; preds = %407
  %412 = load float, float* %41, align 4
  %413 = load float, float* %40, align 4
  %414 = fsub float %412, %413
  store float %414, float* %38, align 4
  %415 = load float, float* %42, align 4
  %416 = fsub float 1.000000e+00, %415
  %417 = load float, float* %38, align 4
  %418 = fmul float %416, %417
  store float %418, float* %23, align 4
  %419 = load float*, float** %14, align 8
  %420 = bitcast float* %419 to i8*
  %421 = load i32, i32* %29, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, i8* %420, i64 %422
  %424 = load i32, i32* %36, align 4
  %425 = load i32, i32* %19, align 4
  %426 = mul nsw i32 %424, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %423, i64 %427
  store i8* %428, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %429 = load i8*, i8** %30, align 8
  store i8* %429, i8** %32, align 8
  br label %430

430:                                              ; preds = %445, %411
  %431 = load i32, i32* %28, align 4
  %432 = load i32, i32* %11, align 4
  %433 = icmp slt i32 %431, %432
  br i1 %433, label %434, label %452

434:                                              ; preds = %430
  %435 = load i8*, i8** %32, align 8
  %436 = load i8, i8* %435, align 1
  %437 = sitofp i8 %436 to float
  %438 = load float, float* %23, align 4
  %439 = fmul float %437, %438
  %440 = load i32, i32* %28, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %441
  %443 = load float, float* %442, align 4
  %444 = fadd float %443, %439
  store float %444, float* %442, align 4
  br label %445

445:                                              ; preds = %434
  %446 = load i32, i32* %28, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %28, align 4
  %448 = load i32, i32* %18, align 4
  %449 = load i8*, i8** %32, align 8
  %450 = sext i32 %448 to i64
  %451 = getelementptr inbounds i8, i8* %449, i64 %450
  store i8* %451, i8** %32, align 8
  br label %430

452:                                              ; preds = %430
  %453 = load i32, i32* %36, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %49, align 4
  br label %455

455:                                              ; preds = %488, %452
  %456 = load i32, i32* %49, align 4
  %457 = load i32, i32* %37, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %491

459:                                              ; preds = %455
  %460 = load i32, i32* %19, align 4
  %461 = load i8*, i8** %30, align 8
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds i8, i8* %461, i64 %462
  store i8* %463, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %464 = load i8*, i8** %30, align 8
  store i8* %464, i8** %32, align 8
  br label %465

465:                                              ; preds = %480, %459
  %466 = load i32, i32* %28, align 4
  %467 = load i32, i32* %11, align 4
  %468 = icmp slt i32 %466, %467
  br i1 %468, label %469, label %487

469:                                              ; preds = %465
  %470 = load i8*, i8** %32, align 8
  %471 = load i8, i8* %470, align 1
  %472 = sitofp i8 %471 to float
  %473 = load float, float* %38, align 4
  %474 = fmul float %472, %473
  %475 = load i32, i32* %28, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %476
  %478 = load float, float* %477, align 4
  %479 = fadd float %478, %474
  store float %479, float* %477, align 4
  br label %480

480:                                              ; preds = %469
  %481 = load i32, i32* %28, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %28, align 4
  %483 = load i32, i32* %18, align 4
  %484 = load i8*, i8** %32, align 8
  %485 = sext i32 %483 to i64
  %486 = getelementptr inbounds i8, i8* %484, i64 %485
  store i8* %486, i8** %32, align 8
  br label %465

487:                                              ; preds = %465
  br label %488

488:                                              ; preds = %487
  %489 = load i32, i32* %49, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %49, align 4
  br label %455

491:                                              ; preds = %455
  %492 = load float, float* %38, align 4
  %493 = load float, float* %43, align 4
  %494 = fmul float %492, %493
  store float %494, float* %23, align 4
  %495 = load i32, i32* %19, align 4
  %496 = load i8*, i8** %30, align 8
  %497 = sext i32 %495 to i64
  %498 = getelementptr inbounds i8, i8* %496, i64 %497
  store i8* %498, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %499 = load i8*, i8** %30, align 8
  store i8* %499, i8** %32, align 8
  br label %500

500:                                              ; preds = %515, %491
  %501 = load i32, i32* %28, align 4
  %502 = load i32, i32* %11, align 4
  %503 = icmp slt i32 %501, %502
  br i1 %503, label %504, label %522

504:                                              ; preds = %500
  %505 = load i8*, i8** %32, align 8
  %506 = load i8, i8* %505, align 1
  %507 = sitofp i8 %506 to float
  %508 = load float, float* %23, align 4
  %509 = fmul float %507, %508
  %510 = load i32, i32* %28, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %511
  %513 = load float, float* %512, align 4
  %514 = fadd float %513, %509
  store float %514, float* %512, align 4
  br label %515

515:                                              ; preds = %504
  %516 = load i32, i32* %28, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %28, align 4
  %518 = load i32, i32* %18, align 4
  %519 = load i8*, i8** %32, align 8
  %520 = sext i32 %518 to i64
  %521 = getelementptr inbounds i8, i8* %519, i64 %520
  store i8* %521, i8** %32, align 8
  br label %500

522:                                              ; preds = %500
  br label %682

523:                                              ; preds = %407
  %524 = load i32, i32* %35, align 4
  %525 = load i32, i32* %34, align 4
  %526 = icmp sgt i32 %524, %525
  br i1 %526, label %527, label %639

527:                                              ; preds = %523
  %528 = load float, float* %43, align 4
  %529 = load float, float* %42, align 4
  %530 = fsub float %528, %529
  store float %530, float* %39, align 4
  %531 = load float, float* %40, align 4
  %532 = fsub float 1.000000e+00, %531
  %533 = load float, float* %39, align 4
  %534 = fmul float %532, %533
  store float %534, float* %23, align 4
  %535 = load float*, float** %14, align 8
  %536 = bitcast float* %535 to i8*
  %537 = load i32, i32* %29, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, i8* %536, i64 %538
  %540 = load i32, i32* %36, align 4
  %541 = load i32, i32* %19, align 4
  %542 = mul nsw i32 %540, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8, i8* %539, i64 %543
  store i8* %544, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %545 = load i8*, i8** %30, align 8
  store i8* %545, i8** %32, align 8
  br label %546

546:                                              ; preds = %561, %527
  %547 = load i32, i32* %28, align 4
  %548 = load i32, i32* %11, align 4
  %549 = icmp slt i32 %547, %548
  br i1 %549, label %550, label %568

550:                                              ; preds = %546
  %551 = load i8*, i8** %32, align 8
  %552 = load i8, i8* %551, align 1
  %553 = sitofp i8 %552 to float
  %554 = load float, float* %23, align 4
  %555 = fmul float %553, %554
  %556 = load i32, i32* %28, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %557
  %559 = load float, float* %558, align 4
  %560 = fadd float %559, %555
  store float %560, float* %558, align 4
  br label %561

561:                                              ; preds = %550
  %562 = load i32, i32* %28, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %28, align 4
  %564 = load i32, i32* %18, align 4
  %565 = load i8*, i8** %32, align 8
  %566 = sext i32 %564 to i64
  %567 = getelementptr inbounds i8, i8* %565, i64 %566
  store i8* %567, i8** %32, align 8
  br label %546

568:                                              ; preds = %546
  %569 = load i32, i32* %34, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %48, align 4
  br label %571

571:                                              ; preds = %604, %568
  %572 = load i32, i32* %48, align 4
  %573 = load i32, i32* %35, align 4
  %574 = icmp slt i32 %572, %573
  br i1 %574, label %575, label %607

575:                                              ; preds = %571
  %576 = load i32, i32* %20, align 4
  %577 = load i8*, i8** %30, align 8
  %578 = sext i32 %576 to i64
  %579 = getelementptr inbounds i8, i8* %577, i64 %578
  store i8* %579, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %580 = load i8*, i8** %30, align 8
  store i8* %580, i8** %32, align 8
  br label %581

581:                                              ; preds = %596, %575
  %582 = load i32, i32* %28, align 4
  %583 = load i32, i32* %11, align 4
  %584 = icmp slt i32 %582, %583
  br i1 %584, label %585, label %603

585:                                              ; preds = %581
  %586 = load i8*, i8** %32, align 8
  %587 = load i8, i8* %586, align 1
  %588 = sitofp i8 %587 to float
  %589 = load float, float* %39, align 4
  %590 = fmul float %588, %589
  %591 = load i32, i32* %28, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %592
  %594 = load float, float* %593, align 4
  %595 = fadd float %594, %590
  store float %595, float* %593, align 4
  br label %596

596:                                              ; preds = %585
  %597 = load i32, i32* %28, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %28, align 4
  %599 = load i32, i32* %18, align 4
  %600 = load i8*, i8** %32, align 8
  %601 = sext i32 %599 to i64
  %602 = getelementptr inbounds i8, i8* %600, i64 %601
  store i8* %602, i8** %32, align 8
  br label %581

603:                                              ; preds = %581
  br label %604

604:                                              ; preds = %603
  %605 = load i32, i32* %48, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %48, align 4
  br label %571

607:                                              ; preds = %571
  %608 = load i32, i32* %20, align 4
  %609 = load i8*, i8** %30, align 8
  %610 = sext i32 %608 to i64
  %611 = getelementptr inbounds i8, i8* %609, i64 %610
  store i8* %611, i8** %30, align 8
  %612 = load float, float* %39, align 4
  %613 = load float, float* %41, align 4
  %614 = fmul float %612, %613
  store float %614, float* %23, align 4
  store i32 0, i32* %28, align 4
  %615 = load i8*, i8** %30, align 8
  store i8* %615, i8** %32, align 8
  br label %616

616:                                              ; preds = %631, %607
  %617 = load i32, i32* %28, align 4
  %618 = load i32, i32* %11, align 4
  %619 = icmp slt i32 %617, %618
  br i1 %619, label %620, label %638

620:                                              ; preds = %616
  %621 = load i8*, i8** %32, align 8
  %622 = load i8, i8* %621, align 1
  %623 = sitofp i8 %622 to float
  %624 = load float, float* %23, align 4
  %625 = fmul float %623, %624
  %626 = load i32, i32* %28, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %627
  %629 = load float, float* %628, align 4
  %630 = fadd float %629, %625
  store float %630, float* %628, align 4
  br label %631

631:                                              ; preds = %620
  %632 = load i32, i32* %28, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %28, align 4
  %634 = load i32, i32* %18, align 4
  %635 = load i8*, i8** %32, align 8
  %636 = sext i32 %634 to i64
  %637 = getelementptr inbounds i8, i8* %635, i64 %636
  store i8* %637, i8** %32, align 8
  br label %616

638:                                              ; preds = %616
  br label %681

639:                                              ; preds = %523
  %640 = load float, float* %43, align 4
  %641 = load float, float* %42, align 4
  %642 = fsub float %640, %641
  %643 = load float, float* %41, align 4
  %644 = load float, float* %40, align 4
  %645 = fsub float %643, %644
  %646 = fmul float %642, %645
  store float %646, float* %23, align 4
  %647 = load float*, float** %14, align 8
  %648 = bitcast float* %647 to i8*
  %649 = load i32, i32* %29, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i8, i8* %648, i64 %650
  %652 = load i32, i32* %36, align 4
  %653 = load i32, i32* %19, align 4
  %654 = mul nsw i32 %652, %653
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i8, i8* %651, i64 %655
  store i8* %656, i8** %30, align 8
  store i32 0, i32* %28, align 4
  %657 = load i8*, i8** %30, align 8
  store i8* %657, i8** %32, align 8
  br label %658

658:                                              ; preds = %673, %639
  %659 = load i32, i32* %28, align 4
  %660 = load i32, i32* %11, align 4
  %661 = icmp slt i32 %659, %660
  br i1 %661, label %662, label %680

662:                                              ; preds = %658
  %663 = load i8*, i8** %32, align 8
  %664 = load i8, i8* %663, align 1
  %665 = sitofp i8 %664 to float
  %666 = load float, float* %23, align 4
  %667 = fmul float %665, %666
  %668 = load i32, i32* %28, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %669
  %671 = load float, float* %670, align 4
  %672 = fadd float %671, %667
  store float %672, float* %670, align 4
  br label %673

673:                                              ; preds = %662
  %674 = load i32, i32* %28, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %28, align 4
  %676 = load i32, i32* %18, align 4
  %677 = load i8*, i8** %32, align 8
  %678 = sext i32 %676 to i64
  %679 = getelementptr inbounds i8, i8* %677, i64 %678
  store i8* %679, i8** %32, align 8
  br label %658

680:                                              ; preds = %658
  br label %681

681:                                              ; preds = %680, %638
  br label %682

682:                                              ; preds = %681, %522
  br label %683

683:                                              ; preds = %682, %406
  %684 = load float*, float** %14, align 8
  %685 = bitcast float* %684 to i8*
  %686 = load i32, i32* %29, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, i8* %685, i64 %687
  %689 = load i32, i32* %20, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i8, i8* %688, i64 %690
  %692 = load i32, i32* %36, align 4
  %693 = add nsw i32 %692, 1
  %694 = load i32, i32* %19, align 4
  %695 = mul nsw i32 %693, %694
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i8, i8* %691, i64 %696
  store i8* %697, i8** %31, align 8
  %698 = load i32, i32* %36, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %49, align 4
  br label %700

700:                                              ; preds = %747, %683
  %701 = load i32, i32* %49, align 4
  %702 = load i32, i32* %37, align 4
  %703 = icmp slt i32 %701, %702
  br i1 %703, label %704, label %750

704:                                              ; preds = %700
  %705 = load i8*, i8** %31, align 8
  store i8* %705, i8** %30, align 8
  %706 = load i32, i32* %34, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %48, align 4
  br label %708

708:                                              ; preds = %739, %704
  %709 = load i32, i32* %48, align 4
  %710 = load i32, i32* %35, align 4
  %711 = icmp slt i32 %709, %710
  br i1 %711, label %712, label %742

712:                                              ; preds = %708
  store i32 0, i32* %28, align 4
  %713 = load i8*, i8** %30, align 8
  store i8* %713, i8** %32, align 8
  br label %714

714:                                              ; preds = %727, %712
  %715 = load i32, i32* %28, align 4
  %716 = load i32, i32* %11, align 4
  %717 = icmp slt i32 %715, %716
  br i1 %717, label %718, label %734

718:                                              ; preds = %714
  %719 = load i8*, i8** %32, align 8
  %720 = load i8, i8* %719, align 1
  %721 = sitofp i8 %720 to float
  %722 = load i32, i32* %28, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %723
  %725 = load float, float* %724, align 4
  %726 = fadd float %725, %721
  store float %726, float* %724, align 4
  br label %727

727:                                              ; preds = %718
  %728 = load i32, i32* %28, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %28, align 4
  %730 = load i32, i32* %18, align 4
  %731 = load i8*, i8** %32, align 8
  %732 = sext i32 %730 to i64
  %733 = getelementptr inbounds i8, i8* %731, i64 %732
  store i8* %733, i8** %32, align 8
  br label %714

734:                                              ; preds = %714
  %735 = load i32, i32* %20, align 4
  %736 = load i8*, i8** %30, align 8
  %737 = sext i32 %735 to i64
  %738 = getelementptr inbounds i8, i8* %736, i64 %737
  store i8* %738, i8** %30, align 8
  br label %739

739:                                              ; preds = %734
  %740 = load i32, i32* %48, align 4
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %48, align 4
  br label %708

742:                                              ; preds = %708
  %743 = load i32, i32* %19, align 4
  %744 = load i8*, i8** %31, align 8
  %745 = sext i32 %743 to i64
  %746 = getelementptr inbounds i8, i8* %744, i64 %745
  store i8* %746, i8** %31, align 8
  br label %747

747:                                              ; preds = %742
  %748 = load i32, i32* %49, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %49, align 4
  br label %700

750:                                              ; preds = %700
  %751 = load i32, i32* %27, align 4
  %752 = load i32, i32* %26, align 4
  %753 = load i32, i32* %15, align 4
  %754 = mul nsw i32 %752, %753
  %755 = add nsw i32 %751, %754
  %756 = load i32, i32* %11, align 4
  %757 = mul nsw i32 %755, %756
  store i32 %757, i32* %33, align 4
  store i32 0, i32* %28, align 4
  br label %758

758:                                              ; preds = %775, %750
  %759 = load i32, i32* %28, align 4
  %760 = load i32, i32* %11, align 4
  %761 = icmp slt i32 %759, %760
  br i1 %761, label %762, label %778

762:                                              ; preds = %758
  %763 = load i32, i32* %28, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 %764
  %766 = load float, float* %765, align 4
  %767 = load float, float* %25, align 4
  %768 = fdiv float %766, %767
  %769 = load float*, float** %17, align 8
  %770 = load i32, i32* %33, align 4
  %771 = load i32, i32* %28, align 4
  %772 = add nsw i32 %770, %771
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds float, float* %769, i64 %773
  store float %768, float* %774, align 4
  br label %775

775:                                              ; preds = %762
  %776 = load i32, i32* %28, align 4
  %777 = add nsw i32 %776, 1
  store i32 %777, i32* %28, align 4
  br label %758

778:                                              ; preds = %758
  %779 = load i32, i32* %35, align 4
  store i32 %779, i32* %34, align 4
  %780 = load float, float* %41, align 4
  store float %780, float* %40, align 4
  %781 = load i32, i32* %47, align 4
  %782 = load i32, i32* %35, align 4
  %783 = add nsw i32 %782, %781
  store i32 %783, i32* %35, align 4
  %784 = load float, float* %45, align 4
  %785 = load float, float* %41, align 4
  %786 = fadd float %785, %784
  store float %786, float* %41, align 4
  %787 = load float, float* %41, align 4
  %788 = fcmp ogt float %787, 1.000000e+00
  br i1 %788, label %789, label %796

789:                                              ; preds = %778
  %790 = load float, float* %41, align 4
  %791 = fpext float %790 to double
  %792 = fsub double %791, 1.000000e+00
  %793 = fptrunc double %792 to float
  store float %793, float* %41, align 4
  %794 = load i32, i32* %35, align 4
  %795 = add nsw i32 %794, 1
  store i32 %795, i32* %35, align 4
  br label %796

796:                                              ; preds = %789, %778
  br label %797

797:                                              ; preds = %796
  %798 = load i32, i32* %27, align 4
  %799 = add nsw i32 %798, 1
  store i32 %799, i32* %27, align 4
  br label %113

800:                                              ; preds = %113
  %801 = load i32, i32* %37, align 4
  store i32 %801, i32* %36, align 4
  %802 = load float, float* %43, align 4
  store float %802, float* %42, align 4
  %803 = load i32, i32* %46, align 4
  %804 = load i32, i32* %37, align 4
  %805 = add nsw i32 %804, %803
  store i32 %805, i32* %37, align 4
  %806 = load float, float* %44, align 4
  %807 = load float, float* %43, align 4
  %808 = fadd float %807, %806
  store float %808, float* %43, align 4
  %809 = load float, float* %43, align 4
  %810 = fcmp ogt float %809, 1.000000e+00
  br i1 %810, label %811, label %818

811:                                              ; preds = %800
  %812 = load float, float* %43, align 4
  %813 = fpext float %812 to double
  %814 = fsub double %813, 1.000000e+00
  %815 = fptrunc double %814 to float
  store float %815, float* %43, align 4
  %816 = load i32, i32* %37, align 4
  %817 = add nsw i32 %816, 1
  store i32 %817, i32* %37, align 4
  br label %818

818:                                              ; preds = %811, %800
  br label %819

819:                                              ; preds = %818
  %820 = load i32, i32* %26, align 4
  %821 = add nsw i32 %820, 1
  store i32 %821, i32* %26, align 4
  br label %99

822:                                              ; preds = %61, %99
  ret void
}

declare dso_local i32 @halveImage_ubyte(i32, i32, i32, float*, float*, i32, i32, i32) #1

declare dso_local i32 @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
