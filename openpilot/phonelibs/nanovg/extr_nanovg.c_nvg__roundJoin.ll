; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__roundJoin.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__roundJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, i32, float, float }

@NVG_PT_LEFT = common dso_local global i32 0, align 4
@NVG_PR_INNERBEVEL = common dso_local global i32 0, align 4
@NVG_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, float, float, float, float, i32, float)* @nvg__roundJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvg__roundJoin(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, float %3, float %4, float %5, float %6, i32 %7, float %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
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
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %12, align 8
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store i32 %7, i32* %17, align 4
  store float %8, float* %18, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  store float %47, float* %21, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fneg float %50
  store float %51, float* %22, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  store float %54, float* %23, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = fneg float %57
  store float %58, float* %24, align 4
  %59 = load float, float* %18, align 4
  %60 = call i32 @NVG_NOTUSED(float %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NVG_PT_LEFT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %217

67:                                               ; preds = %9
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = load float, float* %13, align 4
  %76 = call i32 @nvg__chooseBevel(i32 %72, %struct.TYPE_6__* %73, %struct.TYPE_6__* %74, float %75, float* %25, float* %26, float* %27, float* %28)
  %77 = load float, float* %22, align 4
  %78 = fneg float %77
  %79 = load float, float* %21, align 4
  %80 = fneg float %79
  %81 = call float @atan2f(float %78, float %80) #3
  store float %81, float* %29, align 4
  %82 = load float, float* %24, align 4
  %83 = fneg float %82
  %84 = load float, float* %23, align 4
  %85 = fneg float %84
  %86 = call float @atan2f(float %83, float %85) #3
  store float %86, float* %30, align 4
  %87 = load float, float* %30, align 4
  %88 = load float, float* %29, align 4
  %89 = fcmp ogt float %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %67
  %91 = load i32, i32* @NVG_PI, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sitofp i32 %92 to float
  %94 = load float, float* %30, align 4
  %95 = fsub float %94, %93
  store float %95, float* %30, align 4
  br label %96

96:                                               ; preds = %90, %67
  %97 = load i32*, i32** %10, align 8
  %98 = load float, float* %25, align 4
  %99 = load float, float* %26, align 4
  %100 = load float, float* %15, align 4
  %101 = call i32 @nvg__vset(i32* %97, float %98, float %99, float %100, i32 1)
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %10, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load float, float* %106, align 4
  %108 = load float, float* %21, align 4
  %109 = load float, float* %14, align 4
  %110 = fmul float %108, %109
  %111 = fsub float %107, %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load float, float* %113, align 4
  %115 = load float, float* %22, align 4
  %116 = load float, float* %14, align 4
  %117 = fmul float %115, %116
  %118 = fsub float %114, %117
  %119 = load float, float* %16, align 4
  %120 = call i32 @nvg__vset(i32* %104, float %111, float %118, float %119, i32 1)
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %10, align 8
  %123 = load float, float* %29, align 4
  %124 = load float, float* %30, align 4
  %125 = fsub float %123, %124
  %126 = load i32, i32* @NVG_PI, align 4
  %127 = sitofp i32 %126 to float
  %128 = fdiv float %125, %127
  %129 = load i32, i32* %17, align 4
  %130 = sitofp i32 %129 to float
  %131 = fmul float %128, %130
  %132 = call i64 @ceilf(float %131)
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @nvg__clampi(i32 %133, i32 2, i32 %134)
  store i32 %135, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %136

136:                                              ; preds = %187, %96
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %190

140:                                              ; preds = %136
  %141 = load i32, i32* %19, align 4
  %142 = sitofp i32 %141 to float
  %143 = load i32, i32* %20, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sitofp i32 %144 to float
  %146 = fdiv float %142, %145
  store float %146, float* %31, align 4
  %147 = load float, float* %29, align 4
  %148 = load float, float* %31, align 4
  %149 = load float, float* %30, align 4
  %150 = load float, float* %29, align 4
  %151 = fsub float %149, %150
  %152 = fmul float %148, %151
  %153 = fadd float %147, %152
  store float %153, float* %32, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load float, float* %155, align 4
  %157 = load float, float* %32, align 4
  %158 = call float @cosf(float %157) #3
  %159 = load float, float* %14, align 4
  %160 = fmul float %158, %159
  %161 = fadd float %156, %160
  store float %161, float* %33, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load float, float* %163, align 4
  %165 = load float, float* %32, align 4
  %166 = call float @sinf(float %165) #3
  %167 = load float, float* %14, align 4
  %168 = fmul float %166, %167
  %169 = fadd float %164, %168
  store float %169, float* %34, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load float, float* %172, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load float, float* %175, align 4
  %177 = call i32 @nvg__vset(i32* %170, float %173, float %176, float 5.000000e-01, i32 1)
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %10, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load float, float* %33, align 4
  %182 = load float, float* %34, align 4
  %183 = load float, float* %16, align 4
  %184 = call i32 @nvg__vset(i32* %180, float %181, float %182, float %183, i32 1)
  %185 = load i32*, i32** %10, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %10, align 8
  br label %187

187:                                              ; preds = %140
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %19, align 4
  br label %136

190:                                              ; preds = %136
  %191 = load i32*, i32** %10, align 8
  %192 = load float, float* %27, align 4
  %193 = load float, float* %28, align 4
  %194 = load float, float* %15, align 4
  %195 = call i32 @nvg__vset(i32* %191, float %192, float %193, float %194, i32 1)
  %196 = load i32*, i32** %10, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %10, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  %201 = load float, float* %200, align 4
  %202 = load float, float* %23, align 4
  %203 = load float, float* %14, align 4
  %204 = fmul float %202, %203
  %205 = fsub float %201, %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 4
  %208 = load float, float* %207, align 4
  %209 = load float, float* %24, align 4
  %210 = load float, float* %14, align 4
  %211 = fmul float %209, %210
  %212 = fsub float %208, %211
  %213 = load float, float* %16, align 4
  %214 = call i32 @nvg__vset(i32* %198, float %205, float %212, float %213, i32 1)
  %215 = load i32*, i32** %10, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %10, align 8
  br label %364

217:                                              ; preds = %9
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %222 = and i32 %220, %221
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %225 = load float, float* %14, align 4
  %226 = fneg float %225
  %227 = call i32 @nvg__chooseBevel(i32 %222, %struct.TYPE_6__* %223, %struct.TYPE_6__* %224, float %226, float* %35, float* %36, float* %37, float* %38)
  %228 = load float, float* %22, align 4
  %229 = load float, float* %21, align 4
  %230 = call float @atan2f(float %228, float %229) #3
  store float %230, float* %39, align 4
  %231 = load float, float* %24, align 4
  %232 = load float, float* %23, align 4
  %233 = call float @atan2f(float %231, float %232) #3
  store float %233, float* %40, align 4
  %234 = load float, float* %40, align 4
  %235 = load float, float* %39, align 4
  %236 = fcmp olt float %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %217
  %238 = load i32, i32* @NVG_PI, align 4
  %239 = mul nsw i32 %238, 2
  %240 = sitofp i32 %239 to float
  %241 = load float, float* %40, align 4
  %242 = fadd float %241, %240
  store float %242, float* %40, align 4
  br label %243

243:                                              ; preds = %237, %217
  %244 = load i32*, i32** %10, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 3
  %247 = load float, float* %246, align 4
  %248 = load float, float* %21, align 4
  %249 = load float, float* %14, align 4
  %250 = fmul float %248, %249
  %251 = fadd float %247, %250
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 4
  %254 = load float, float* %253, align 4
  %255 = load float, float* %22, align 4
  %256 = load float, float* %14, align 4
  %257 = fmul float %255, %256
  %258 = fadd float %254, %257
  %259 = load float, float* %15, align 4
  %260 = call i32 @nvg__vset(i32* %244, float %251, float %258, float %259, i32 1)
  %261 = load i32*, i32** %10, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %10, align 8
  %263 = load i32*, i32** %10, align 8
  %264 = load float, float* %35, align 4
  %265 = load float, float* %36, align 4
  %266 = load float, float* %16, align 4
  %267 = call i32 @nvg__vset(i32* %263, float %264, float %265, float %266, i32 1)
  %268 = load i32*, i32** %10, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %10, align 8
  %270 = load float, float* %40, align 4
  %271 = load float, float* %39, align 4
  %272 = fsub float %270, %271
  %273 = load i32, i32* @NVG_PI, align 4
  %274 = sitofp i32 %273 to float
  %275 = fdiv float %272, %274
  %276 = load i32, i32* %17, align 4
  %277 = sitofp i32 %276 to float
  %278 = fmul float %275, %277
  %279 = call i64 @ceilf(float %278)
  %280 = trunc i64 %279 to i32
  %281 = load i32, i32* %17, align 4
  %282 = call i32 @nvg__clampi(i32 %280, i32 2, i32 %281)
  store i32 %282, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %283

283:                                              ; preds = %334, %243
  %284 = load i32, i32* %19, align 4
  %285 = load i32, i32* %20, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %337

287:                                              ; preds = %283
  %288 = load i32, i32* %19, align 4
  %289 = sitofp i32 %288 to float
  %290 = load i32, i32* %20, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sitofp i32 %291 to float
  %293 = fdiv float %289, %292
  store float %293, float* %41, align 4
  %294 = load float, float* %39, align 4
  %295 = load float, float* %41, align 4
  %296 = load float, float* %40, align 4
  %297 = load float, float* %39, align 4
  %298 = fsub float %296, %297
  %299 = fmul float %295, %298
  %300 = fadd float %294, %299
  store float %300, float* %42, align 4
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 3
  %303 = load float, float* %302, align 4
  %304 = load float, float* %42, align 4
  %305 = call float @cosf(float %304) #3
  %306 = load float, float* %13, align 4
  %307 = fmul float %305, %306
  %308 = fadd float %303, %307
  store float %308, float* %43, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 4
  %311 = load float, float* %310, align 4
  %312 = load float, float* %42, align 4
  %313 = call float @sinf(float %312) #3
  %314 = load float, float* %13, align 4
  %315 = fmul float %313, %314
  %316 = fadd float %311, %315
  store float %316, float* %44, align 4
  %317 = load i32*, i32** %10, align 8
  %318 = load float, float* %43, align 4
  %319 = load float, float* %44, align 4
  %320 = load float, float* %15, align 4
  %321 = call i32 @nvg__vset(i32* %317, float %318, float %319, float %320, i32 1)
  %322 = load i32*, i32** %10, align 8
  %323 = getelementptr inbounds i32, i32* %322, i32 1
  store i32* %323, i32** %10, align 8
  %324 = load i32*, i32** %10, align 8
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 3
  %327 = load float, float* %326, align 4
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 4
  %330 = load float, float* %329, align 4
  %331 = call i32 @nvg__vset(i32* %324, float %327, float %330, float 5.000000e-01, i32 1)
  %332 = load i32*, i32** %10, align 8
  %333 = getelementptr inbounds i32, i32* %332, i32 1
  store i32* %333, i32** %10, align 8
  br label %334

334:                                              ; preds = %287
  %335 = load i32, i32* %19, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %19, align 4
  br label %283

337:                                              ; preds = %283
  %338 = load i32*, i32** %10, align 8
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 3
  %341 = load float, float* %340, align 4
  %342 = load float, float* %23, align 4
  %343 = load float, float* %14, align 4
  %344 = fmul float %342, %343
  %345 = fadd float %341, %344
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 4
  %348 = load float, float* %347, align 4
  %349 = load float, float* %24, align 4
  %350 = load float, float* %14, align 4
  %351 = fmul float %349, %350
  %352 = fadd float %348, %351
  %353 = load float, float* %15, align 4
  %354 = call i32 @nvg__vset(i32* %338, float %345, float %352, float %353, i32 1)
  %355 = load i32*, i32** %10, align 8
  %356 = getelementptr inbounds i32, i32* %355, i32 1
  store i32* %356, i32** %10, align 8
  %357 = load i32*, i32** %10, align 8
  %358 = load float, float* %37, align 4
  %359 = load float, float* %38, align 4
  %360 = load float, float* %16, align 4
  %361 = call i32 @nvg__vset(i32* %357, float %358, float %359, float %360, i32 1)
  %362 = load i32*, i32** %10, align 8
  %363 = getelementptr inbounds i32, i32* %362, i32 1
  store i32* %363, i32** %10, align 8
  br label %364

364:                                              ; preds = %337, %190
  %365 = load i32*, i32** %10, align 8
  ret i32* %365
}

declare dso_local i32 @NVG_NOTUSED(float) #1

declare dso_local i32 @nvg__chooseBevel(i32, %struct.TYPE_6__*, %struct.TYPE_6__*, float, float*, float*, float*, float*) #1

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #2

declare dso_local i32 @nvg__vset(i32*, float, float, float, i32) #1

declare dso_local i32 @nvg__clampi(i32, i32, i32) #1

declare dso_local i64 @ceilf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
