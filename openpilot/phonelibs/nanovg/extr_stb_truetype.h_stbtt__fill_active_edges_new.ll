; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__fill_active_edges_new.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__fill_active_edges_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float, float, i32, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32, %struct.TYPE_4__*, float)* @stbtt__fill_active_edges_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__fill_active_edges_new(float* %0, float* %1, i32 %2, %struct.TYPE_4__* %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store float %4, float* %10, align 4
  %39 = load float, float* %10, align 4
  %40 = fadd float %39, 1.000000e+00
  store float %40, float* %11, align 4
  br label %41

41:                                               ; preds = %609, %5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %613

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 8
  %48 = load float, float* %10, align 4
  %49 = fcmp oge float %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @STBTT_assert(i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = fcmp oeq float %54, 0.000000e+00
  br i1 %55, label %56, label %99

56:                                               ; preds = %44
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load float, float* %58, align 8
  store float %59, float* %12, align 4
  %60 = load float, float* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sitofp i32 %61 to float
  %63 = fcmp olt float %60, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %56
  %65 = load float, float* %12, align 4
  %66 = fcmp oge float %65, 0.000000e+00
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load float*, float** %6, align 8
  %69 = load float, float* %12, align 4
  %70 = fptosi float %69 to i32
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = load float, float* %12, align 4
  %73 = load float, float* %10, align 4
  %74 = load float, float* %12, align 4
  %75 = load float, float* %11, align 4
  %76 = call i32 @stbtt__handle_clipped_edge(float* %68, i32 %70, %struct.TYPE_4__* %71, float %72, float %73, float %74, float %75)
  %77 = load float*, float** %7, align 8
  %78 = getelementptr inbounds float, float* %77, i64 -1
  %79 = load float, float* %12, align 4
  %80 = fptosi float %79 to i32
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = load float, float* %12, align 4
  %84 = load float, float* %10, align 4
  %85 = load float, float* %12, align 4
  %86 = load float, float* %11, align 4
  %87 = call i32 @stbtt__handle_clipped_edge(float* %78, i32 %81, %struct.TYPE_4__* %82, float %83, float %84, float %85, float %86)
  br label %97

88:                                               ; preds = %64
  %89 = load float*, float** %7, align 8
  %90 = getelementptr inbounds float, float* %89, i64 -1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = load float, float* %12, align 4
  %93 = load float, float* %10, align 4
  %94 = load float, float* %12, align 4
  %95 = load float, float* %11, align 4
  %96 = call i32 @stbtt__handle_clipped_edge(float* %90, i32 0, %struct.TYPE_4__* %91, float %92, float %93, float %94, float %95)
  br label %97

97:                                               ; preds = %88, %67
  br label %98

98:                                               ; preds = %97, %56
  br label %609

99:                                               ; preds = %44
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load float, float* %101, align 8
  store float %102, float* %13, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load float, float* %104, align 4
  store float %105, float* %14, align 4
  %106 = load float, float* %13, align 4
  %107 = load float, float* %14, align 4
  %108 = fadd float %106, %107
  store float %108, float* %15, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load float, float* %110, align 4
  store float %111, float* %20, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load float, float* %113, align 8
  %115 = load float, float* %11, align 4
  %116 = fcmp ole float %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %99
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load float, float* %119, align 8
  %121 = load float, float* %10, align 4
  %122 = fcmp oge float %120, %121
  br label %123

123:                                              ; preds = %117, %99
  %124 = phi i1 [ false, %99 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @STBTT_assert(i32 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load float, float* %128, align 8
  %130 = load float, float* %10, align 4
  %131 = fcmp ogt float %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %123
  %133 = load float, float* %13, align 4
  %134 = load float, float* %14, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load float, float* %136, align 8
  %138 = load float, float* %10, align 4
  %139 = fsub float %137, %138
  %140 = fmul float %134, %139
  %141 = fadd float %133, %140
  store float %141, float* %16, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load float, float* %143, align 8
  store float %144, float* %18, align 4
  br label %148

145:                                              ; preds = %123
  %146 = load float, float* %13, align 4
  store float %146, float* %16, align 4
  %147 = load float, float* %10, align 4
  store float %147, float* %18, align 4
  br label %148

148:                                              ; preds = %145, %132
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load float, float* %150, align 8
  %152 = load float, float* %11, align 4
  %153 = fcmp olt float %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %148
  %155 = load float, float* %13, align 4
  %156 = load float, float* %14, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load float, float* %158, align 8
  %160 = load float, float* %10, align 4
  %161 = fsub float %159, %160
  %162 = fmul float %156, %161
  %163 = fadd float %155, %162
  store float %163, float* %17, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load float, float* %165, align 8
  store float %166, float* %19, align 4
  br label %170

167:                                              ; preds = %148
  %168 = load float, float* %15, align 4
  store float %168, float* %17, align 4
  %169 = load float, float* %11, align 4
  store float %169, float* %19, align 4
  br label %170

170:                                              ; preds = %167, %154
  %171 = load float, float* %16, align 4
  %172 = fcmp oge float %171, 0.000000e+00
  br i1 %172, label %173, label %393

173:                                              ; preds = %170
  %174 = load float, float* %17, align 4
  %175 = fcmp oge float %174, 0.000000e+00
  br i1 %175, label %176, label %393

176:                                              ; preds = %173
  %177 = load float, float* %16, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sitofp i32 %178 to float
  %180 = fcmp olt float %177, %179
  br i1 %180, label %181, label %393

181:                                              ; preds = %176
  %182 = load float, float* %17, align 4
  %183 = load i32, i32* %8, align 4
  %184 = sitofp i32 %183 to float
  %185 = fcmp olt float %182, %184
  br i1 %185, label %186, label %393

186:                                              ; preds = %181
  %187 = load float, float* %16, align 4
  %188 = fptosi float %187 to i32
  %189 = load float, float* %17, align 4
  %190 = fptosi float %189 to i32
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %244

192:                                              ; preds = %186
  %193 = load float, float* %16, align 4
  %194 = fptosi float %193 to i32
  store i32 %194, i32* %22, align 4
  %195 = load float, float* %19, align 4
  %196 = load float, float* %18, align 4
  %197 = fsub float %195, %196
  store float %197, float* %21, align 4
  %198 = load i32, i32* %22, align 4
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %192
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %201, %202
  br label %204

204:                                              ; preds = %200, %192
  %205 = phi i1 [ false, %192 ], [ %203, %200 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @STBTT_assert(i32 %206)
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = sitofp i32 %210 to float
  %212 = load float, float* %16, align 4
  %213 = load i32, i32* %22, align 4
  %214 = sitofp i32 %213 to float
  %215 = fsub float %212, %214
  %216 = load float, float* %17, align 4
  %217 = load i32, i32* %22, align 4
  %218 = sitofp i32 %217 to float
  %219 = fsub float %216, %218
  %220 = fadd float %215, %219
  %221 = fdiv float %220, 2.000000e+00
  %222 = fsub float 1.000000e+00, %221
  %223 = fmul float %211, %222
  %224 = load float, float* %21, align 4
  %225 = fmul float %223, %224
  %226 = load float*, float** %6, align 8
  %227 = load i32, i32* %22, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  %230 = load float, float* %229, align 4
  %231 = fadd float %230, %225
  store float %231, float* %229, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = sitofp i32 %234 to float
  %236 = load float, float* %21, align 4
  %237 = fmul float %235, %236
  %238 = load float*, float** %7, align 8
  %239 = load i32, i32* %22, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  %242 = load float, float* %241, align 4
  %243 = fadd float %242, %237
  store float %243, float* %241, align 4
  br label %392

244:                                              ; preds = %186
  %245 = load float, float* %16, align 4
  %246 = load float, float* %17, align 4
  %247 = fcmp ogt float %245, %246
  br i1 %247, label %248, label %272

248:                                              ; preds = %244
  %249 = load float, float* %11, align 4
  %250 = load float, float* %18, align 4
  %251 = load float, float* %10, align 4
  %252 = fsub float %250, %251
  %253 = fsub float %249, %252
  store float %253, float* %18, align 4
  %254 = load float, float* %11, align 4
  %255 = load float, float* %19, align 4
  %256 = load float, float* %10, align 4
  %257 = fsub float %255, %256
  %258 = fsub float %254, %257
  store float %258, float* %19, align 4
  %259 = load float, float* %18, align 4
  store float %259, float* %30, align 4
  %260 = load float, float* %19, align 4
  store float %260, float* %18, align 4
  %261 = load float, float* %30, align 4
  store float %261, float* %19, align 4
  %262 = load float, float* %17, align 4
  store float %262, float* %30, align 4
  %263 = load float, float* %16, align 4
  store float %263, float* %17, align 4
  %264 = load float, float* %30, align 4
  store float %264, float* %16, align 4
  %265 = load float, float* %14, align 4
  %266 = fneg float %265
  store float %266, float* %14, align 4
  %267 = load float, float* %20, align 4
  %268 = fneg float %267
  store float %268, float* %20, align 4
  %269 = load float, float* %13, align 4
  store float %269, float* %30, align 4
  %270 = load float, float* %15, align 4
  store float %270, float* %13, align 4
  %271 = load float, float* %30, align 4
  store float %271, float* %15, align 4
  br label %272

272:                                              ; preds = %248, %244
  %273 = load float, float* %16, align 4
  %274 = fptosi float %273 to i32
  store i32 %274, i32* %24, align 4
  %275 = load float, float* %17, align 4
  %276 = fptosi float %275 to i32
  store i32 %276, i32* %25, align 4
  %277 = load i32, i32* %24, align 4
  %278 = add nsw i32 %277, 1
  %279 = sitofp i32 %278 to float
  %280 = load float, float* %13, align 4
  %281 = fsub float %279, %280
  %282 = load float, float* %20, align 4
  %283 = fmul float %281, %282
  %284 = load float, float* %10, align 4
  %285 = fadd float %283, %284
  store float %285, float* %26, align 4
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = sitofp i32 %288 to float
  store float %289, float* %28, align 4
  %290 = load float, float* %28, align 4
  %291 = load float, float* %26, align 4
  %292 = load float, float* %18, align 4
  %293 = fsub float %291, %292
  %294 = fmul float %290, %293
  store float %294, float* %29, align 4
  %295 = load float, float* %29, align 4
  %296 = load float, float* %16, align 4
  %297 = load i32, i32* %24, align 4
  %298 = sitofp i32 %297 to float
  %299 = fsub float %296, %298
  %300 = load i32, i32* %24, align 4
  %301 = add nsw i32 %300, 1
  %302 = load i32, i32* %24, align 4
  %303 = sub nsw i32 %301, %302
  %304 = sitofp i32 %303 to float
  %305 = fadd float %299, %304
  %306 = fdiv float %305, 2.000000e+00
  %307 = fsub float 1.000000e+00, %306
  %308 = fmul float %295, %307
  %309 = load float*, float** %6, align 8
  %310 = load i32, i32* %24, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %309, i64 %311
  %313 = load float, float* %312, align 4
  %314 = fadd float %313, %308
  store float %314, float* %312, align 4
  %315 = load float, float* %28, align 4
  %316 = load float, float* %20, align 4
  %317 = fmul float %315, %316
  store float %317, float* %27, align 4
  %318 = load i32, i32* %24, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %23, align 4
  br label %320

320:                                              ; preds = %338, %272
  %321 = load i32, i32* %23, align 4
  %322 = load i32, i32* %25, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %341

324:                                              ; preds = %320
  %325 = load float, float* %29, align 4
  %326 = load float, float* %27, align 4
  %327 = fdiv float %326, 2.000000e+00
  %328 = fadd float %325, %327
  %329 = load float*, float** %6, align 8
  %330 = load i32, i32* %23, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %329, i64 %331
  %333 = load float, float* %332, align 4
  %334 = fadd float %333, %328
  store float %334, float* %332, align 4
  %335 = load float, float* %27, align 4
  %336 = load float, float* %29, align 4
  %337 = fadd float %336, %335
  store float %337, float* %29, align 4
  br label %338

338:                                              ; preds = %324
  %339 = load i32, i32* %23, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %23, align 4
  br label %320

341:                                              ; preds = %320
  %342 = load float, float* %20, align 4
  %343 = load i32, i32* %25, align 4
  %344 = load i32, i32* %24, align 4
  %345 = add nsw i32 %344, 1
  %346 = sub nsw i32 %343, %345
  %347 = sitofp i32 %346 to float
  %348 = fmul float %342, %347
  %349 = load float, float* %26, align 4
  %350 = fadd float %349, %348
  store float %350, float* %26, align 4
  %351 = load float, float* %29, align 4
  %352 = call float @fabs(float %351)
  %353 = fcmp ole float %352, 0x3FF028F5C0000000
  %354 = zext i1 %353 to i32
  %355 = call i32 @STBTT_assert(i32 %354)
  %356 = load float, float* %29, align 4
  %357 = load float, float* %28, align 4
  %358 = load i32, i32* %25, align 4
  %359 = load i32, i32* %25, align 4
  %360 = sub nsw i32 %358, %359
  %361 = sitofp i32 %360 to float
  %362 = load float, float* %17, align 4
  %363 = load i32, i32* %25, align 4
  %364 = sitofp i32 %363 to float
  %365 = fsub float %362, %364
  %366 = fadd float %361, %365
  %367 = fdiv float %366, 2.000000e+00
  %368 = fsub float 1.000000e+00, %367
  %369 = fmul float %357, %368
  %370 = load float, float* %19, align 4
  %371 = load float, float* %26, align 4
  %372 = fsub float %370, %371
  %373 = fmul float %369, %372
  %374 = fadd float %356, %373
  %375 = load float*, float** %6, align 8
  %376 = load i32, i32* %25, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds float, float* %375, i64 %377
  %379 = load float, float* %378, align 4
  %380 = fadd float %379, %374
  store float %380, float* %378, align 4
  %381 = load float, float* %28, align 4
  %382 = load float, float* %19, align 4
  %383 = load float, float* %18, align 4
  %384 = fsub float %382, %383
  %385 = fmul float %381, %384
  %386 = load float*, float** %7, align 8
  %387 = load i32, i32* %25, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds float, float* %386, i64 %388
  %390 = load float, float* %389, align 4
  %391 = fadd float %390, %385
  store float %391, float* %389, align 4
  br label %392

392:                                              ; preds = %341, %204
  br label %608

393:                                              ; preds = %181, %176, %173, %170
  store i32 0, i32* %31, align 4
  br label %394

394:                                              ; preds = %604, %393
  %395 = load i32, i32* %31, align 4
  %396 = load i32, i32* %8, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %607

398:                                              ; preds = %394
  %399 = load float, float* %10, align 4
  store float %399, float* %32, align 4
  %400 = load i32, i32* %31, align 4
  %401 = sitofp i32 %400 to float
  store float %401, float* %33, align 4
  %402 = load i32, i32* %31, align 4
  %403 = add nsw i32 %402, 1
  %404 = sitofp i32 %403 to float
  store float %404, float* %34, align 4
  %405 = load float, float* %15, align 4
  store float %405, float* %35, align 4
  %406 = load float, float* %11, align 4
  store float %406, float* %36, align 4
  %407 = load i32, i32* %31, align 4
  %408 = sitofp i32 %407 to float
  %409 = load float, float* %13, align 4
  %410 = fsub float %408, %409
  %411 = load float, float* %14, align 4
  %412 = fdiv float %410, %411
  %413 = load float, float* %10, align 4
  %414 = fadd float %412, %413
  store float %414, float* %37, align 4
  %415 = load i32, i32* %31, align 4
  %416 = add nsw i32 %415, 1
  %417 = sitofp i32 %416 to float
  %418 = load float, float* %13, align 4
  %419 = fsub float %417, %418
  %420 = load float, float* %14, align 4
  %421 = fdiv float %419, %420
  %422 = load float, float* %10, align 4
  %423 = fadd float %421, %422
  store float %423, float* %38, align 4
  %424 = load float, float* %13, align 4
  %425 = load float, float* %33, align 4
  %426 = fcmp olt float %424, %425
  br i1 %426, label %427, label %456

427:                                              ; preds = %398
  %428 = load float, float* %35, align 4
  %429 = load float, float* %34, align 4
  %430 = fcmp ogt float %428, %429
  br i1 %430, label %431, label %456

431:                                              ; preds = %427
  %432 = load float*, float** %6, align 8
  %433 = load i32, i32* %31, align 4
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %435 = load float, float* %13, align 4
  %436 = load float, float* %32, align 4
  %437 = load float, float* %33, align 4
  %438 = load float, float* %37, align 4
  %439 = call i32 @stbtt__handle_clipped_edge(float* %432, i32 %433, %struct.TYPE_4__* %434, float %435, float %436, float %437, float %438)
  %440 = load float*, float** %6, align 8
  %441 = load i32, i32* %31, align 4
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %443 = load float, float* %33, align 4
  %444 = load float, float* %37, align 4
  %445 = load float, float* %34, align 4
  %446 = load float, float* %38, align 4
  %447 = call i32 @stbtt__handle_clipped_edge(float* %440, i32 %441, %struct.TYPE_4__* %442, float %443, float %444, float %445, float %446)
  %448 = load float*, float** %6, align 8
  %449 = load i32, i32* %31, align 4
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %451 = load float, float* %34, align 4
  %452 = load float, float* %38, align 4
  %453 = load float, float* %35, align 4
  %454 = load float, float* %36, align 4
  %455 = call i32 @stbtt__handle_clipped_edge(float* %448, i32 %449, %struct.TYPE_4__* %450, float %451, float %452, float %453, float %454)
  br label %603

456:                                              ; preds = %427, %398
  %457 = load float, float* %35, align 4
  %458 = load float, float* %33, align 4
  %459 = fcmp olt float %457, %458
  br i1 %459, label %460, label %489

460:                                              ; preds = %456
  %461 = load float, float* %13, align 4
  %462 = load float, float* %34, align 4
  %463 = fcmp ogt float %461, %462
  br i1 %463, label %464, label %489

464:                                              ; preds = %460
  %465 = load float*, float** %6, align 8
  %466 = load i32, i32* %31, align 4
  %467 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %468 = load float, float* %13, align 4
  %469 = load float, float* %32, align 4
  %470 = load float, float* %34, align 4
  %471 = load float, float* %38, align 4
  %472 = call i32 @stbtt__handle_clipped_edge(float* %465, i32 %466, %struct.TYPE_4__* %467, float %468, float %469, float %470, float %471)
  %473 = load float*, float** %6, align 8
  %474 = load i32, i32* %31, align 4
  %475 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %476 = load float, float* %34, align 4
  %477 = load float, float* %38, align 4
  %478 = load float, float* %33, align 4
  %479 = load float, float* %37, align 4
  %480 = call i32 @stbtt__handle_clipped_edge(float* %473, i32 %474, %struct.TYPE_4__* %475, float %476, float %477, float %478, float %479)
  %481 = load float*, float** %6, align 8
  %482 = load i32, i32* %31, align 4
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %484 = load float, float* %33, align 4
  %485 = load float, float* %37, align 4
  %486 = load float, float* %35, align 4
  %487 = load float, float* %36, align 4
  %488 = call i32 @stbtt__handle_clipped_edge(float* %481, i32 %482, %struct.TYPE_4__* %483, float %484, float %485, float %486, float %487)
  br label %602

489:                                              ; preds = %460, %456
  %490 = load float, float* %13, align 4
  %491 = load float, float* %33, align 4
  %492 = fcmp olt float %490, %491
  br i1 %492, label %493, label %514

493:                                              ; preds = %489
  %494 = load float, float* %35, align 4
  %495 = load float, float* %33, align 4
  %496 = fcmp ogt float %494, %495
  br i1 %496, label %497, label %514

497:                                              ; preds = %493
  %498 = load float*, float** %6, align 8
  %499 = load i32, i32* %31, align 4
  %500 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %501 = load float, float* %13, align 4
  %502 = load float, float* %32, align 4
  %503 = load float, float* %33, align 4
  %504 = load float, float* %37, align 4
  %505 = call i32 @stbtt__handle_clipped_edge(float* %498, i32 %499, %struct.TYPE_4__* %500, float %501, float %502, float %503, float %504)
  %506 = load float*, float** %6, align 8
  %507 = load i32, i32* %31, align 4
  %508 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %509 = load float, float* %33, align 4
  %510 = load float, float* %37, align 4
  %511 = load float, float* %35, align 4
  %512 = load float, float* %36, align 4
  %513 = call i32 @stbtt__handle_clipped_edge(float* %506, i32 %507, %struct.TYPE_4__* %508, float %509, float %510, float %511, float %512)
  br label %601

514:                                              ; preds = %493, %489
  %515 = load float, float* %35, align 4
  %516 = load float, float* %33, align 4
  %517 = fcmp olt float %515, %516
  br i1 %517, label %518, label %539

518:                                              ; preds = %514
  %519 = load float, float* %13, align 4
  %520 = load float, float* %33, align 4
  %521 = fcmp ogt float %519, %520
  br i1 %521, label %522, label %539

522:                                              ; preds = %518
  %523 = load float*, float** %6, align 8
  %524 = load i32, i32* %31, align 4
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %526 = load float, float* %13, align 4
  %527 = load float, float* %32, align 4
  %528 = load float, float* %33, align 4
  %529 = load float, float* %37, align 4
  %530 = call i32 @stbtt__handle_clipped_edge(float* %523, i32 %524, %struct.TYPE_4__* %525, float %526, float %527, float %528, float %529)
  %531 = load float*, float** %6, align 8
  %532 = load i32, i32* %31, align 4
  %533 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %534 = load float, float* %33, align 4
  %535 = load float, float* %37, align 4
  %536 = load float, float* %35, align 4
  %537 = load float, float* %36, align 4
  %538 = call i32 @stbtt__handle_clipped_edge(float* %531, i32 %532, %struct.TYPE_4__* %533, float %534, float %535, float %536, float %537)
  br label %600

539:                                              ; preds = %518, %514
  %540 = load float, float* %13, align 4
  %541 = load float, float* %34, align 4
  %542 = fcmp olt float %540, %541
  br i1 %542, label %543, label %564

543:                                              ; preds = %539
  %544 = load float, float* %35, align 4
  %545 = load float, float* %34, align 4
  %546 = fcmp ogt float %544, %545
  br i1 %546, label %547, label %564

547:                                              ; preds = %543
  %548 = load float*, float** %6, align 8
  %549 = load i32, i32* %31, align 4
  %550 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %551 = load float, float* %13, align 4
  %552 = load float, float* %32, align 4
  %553 = load float, float* %34, align 4
  %554 = load float, float* %38, align 4
  %555 = call i32 @stbtt__handle_clipped_edge(float* %548, i32 %549, %struct.TYPE_4__* %550, float %551, float %552, float %553, float %554)
  %556 = load float*, float** %6, align 8
  %557 = load i32, i32* %31, align 4
  %558 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %559 = load float, float* %34, align 4
  %560 = load float, float* %38, align 4
  %561 = load float, float* %35, align 4
  %562 = load float, float* %36, align 4
  %563 = call i32 @stbtt__handle_clipped_edge(float* %556, i32 %557, %struct.TYPE_4__* %558, float %559, float %560, float %561, float %562)
  br label %599

564:                                              ; preds = %543, %539
  %565 = load float, float* %35, align 4
  %566 = load float, float* %34, align 4
  %567 = fcmp olt float %565, %566
  br i1 %567, label %568, label %589

568:                                              ; preds = %564
  %569 = load float, float* %13, align 4
  %570 = load float, float* %34, align 4
  %571 = fcmp ogt float %569, %570
  br i1 %571, label %572, label %589

572:                                              ; preds = %568
  %573 = load float*, float** %6, align 8
  %574 = load i32, i32* %31, align 4
  %575 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %576 = load float, float* %13, align 4
  %577 = load float, float* %32, align 4
  %578 = load float, float* %34, align 4
  %579 = load float, float* %38, align 4
  %580 = call i32 @stbtt__handle_clipped_edge(float* %573, i32 %574, %struct.TYPE_4__* %575, float %576, float %577, float %578, float %579)
  %581 = load float*, float** %6, align 8
  %582 = load i32, i32* %31, align 4
  %583 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %584 = load float, float* %34, align 4
  %585 = load float, float* %38, align 4
  %586 = load float, float* %35, align 4
  %587 = load float, float* %36, align 4
  %588 = call i32 @stbtt__handle_clipped_edge(float* %581, i32 %582, %struct.TYPE_4__* %583, float %584, float %585, float %586, float %587)
  br label %598

589:                                              ; preds = %568, %564
  %590 = load float*, float** %6, align 8
  %591 = load i32, i32* %31, align 4
  %592 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %593 = load float, float* %13, align 4
  %594 = load float, float* %32, align 4
  %595 = load float, float* %35, align 4
  %596 = load float, float* %36, align 4
  %597 = call i32 @stbtt__handle_clipped_edge(float* %590, i32 %591, %struct.TYPE_4__* %592, float %593, float %594, float %595, float %596)
  br label %598

598:                                              ; preds = %589, %572
  br label %599

599:                                              ; preds = %598, %547
  br label %600

600:                                              ; preds = %599, %522
  br label %601

601:                                              ; preds = %600, %497
  br label %602

602:                                              ; preds = %601, %464
  br label %603

603:                                              ; preds = %602, %431
  br label %604

604:                                              ; preds = %603
  %605 = load i32, i32* %31, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %31, align 4
  br label %394

607:                                              ; preds = %394
  br label %608

608:                                              ; preds = %607, %392
  br label %609

609:                                              ; preds = %608, %98
  %610 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %610, i32 0, i32 6
  %612 = load %struct.TYPE_4__*, %struct.TYPE_4__** %611, align 8
  store %struct.TYPE_4__* %612, %struct.TYPE_4__** %9, align 8
  br label %41

613:                                              ; preds = %41
  ret void
}

declare dso_local i32 @STBTT_assert(i32) #1

declare dso_local i32 @stbtt__handle_clipped_edge(float*, i32, %struct.TYPE_4__*, float, float, float, float) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
