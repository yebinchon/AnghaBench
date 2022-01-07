; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_getPixelInterpolateWeight.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_getPixelInterpolateWeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, double*, double*, double*, double* }

@gdAlphaMax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, double, double, i32)* @getPixelInterpolateWeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPixelInterpolateWeight(%struct.TYPE_5__* %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load double, double* %6, align 8
  %28 = fptosi double %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load double, double* %7, align 8
  %30 = fptosi double %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load double, double* %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sitofp i32 %32 to double
  %34 = fsub double %31, %33
  store double %34, double* %11, align 8
  %35 = load double, double* %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sitofp i32 %36 to double
  %38 = fsub double %35, %37
  store double %38, double* %12, align 8
  %39 = load double, double* %11, align 8
  %40 = fsub double 1.000000e+00, %39
  store double %40, double* %13, align 8
  %41 = load double, double* %12, align 8
  %42 = fsub double 1.000000e+00, %41
  store double %42, double* %14, align 8
  %43 = load double, double* %11, align 8
  %44 = load double, double* %12, align 8
  %45 = fmul double %43, %44
  store double %45, double* %15, align 8
  %46 = load double, double* %13, align 8
  %47 = load double, double* %12, align 8
  %48 = fmul double %46, %47
  store double %48, double* %16, align 8
  %49 = load double, double* %11, align 8
  %50 = load double, double* %14, align 8
  %51 = fmul double %49, %50
  store double %51, double* %17, align 8
  %52 = load double, double* %13, align 8
  %53 = load double, double* %14, align 8
  %54 = fmul double %52, %53
  store double %54, double* %18, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @getPixelOverflowTC(%struct.TYPE_5__* %60, i32 %61, i32 %62, i32 %63)
  br label %71

65:                                               ; preds = %4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @getPixelOverflowPalette(%struct.TYPE_5__* %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i32 [ %64, %59 ], [ %70, %65 ]
  store i32 %72, i32* %19, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @getPixelOverflowTC(%struct.TYPE_5__* %78, i32 %80, i32 %81, i32 %82)
  br label %91

84:                                               ; preds = %71
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @getPixelOverflowPalette(%struct.TYPE_5__* %85, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %77
  %92 = phi i32 [ %83, %77 ], [ %90, %84 ]
  store i32 %92, i32* %20, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @getPixelOverflowTC(%struct.TYPE_5__* %98, i32 %99, i32 %101, i32 %102)
  br label %111

104:                                              ; preds = %91
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @getPixelOverflowPalette(%struct.TYPE_5__* %105, i32 %106, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  %112 = phi i32 [ %103, %97 ], [ %110, %104 ]
  store i32 %112, i32* %21, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @getPixelOverflowTC(%struct.TYPE_5__* %118, i32 %120, i32 %122, i32 %123)
  br label %132

125:                                              ; preds = %111
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @getPixelOverflowPalette(%struct.TYPE_5__* %126, i32 %127, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %117
  %133 = phi i32 [ %124, %117 ], [ %131, %125 ]
  store i32 %133, i32* %22, align 4
  %134 = load double, double* %6, align 8
  %135 = fcmp olt double %134, 0.000000e+00
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = load double, double* %7, align 8
  %141 = fcmp olt double %140, 0.000000e+00
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %231

150:                                              ; preds = %145
  %151 = load double, double* %15, align 8
  %152 = load i32, i32* %19, align 4
  %153 = call double @gdTrueColorGetRed(i32 %152)
  %154 = fmul double %151, %153
  %155 = load double, double* %16, align 8
  %156 = load i32, i32* %20, align 4
  %157 = call double @gdTrueColorGetRed(i32 %156)
  %158 = fmul double %155, %157
  %159 = fadd double %154, %158
  %160 = load double, double* %17, align 8
  %161 = load i32, i32* %21, align 4
  %162 = call double @gdTrueColorGetRed(i32 %161)
  %163 = fmul double %160, %162
  %164 = fadd double %159, %163
  %165 = load double, double* %18, align 8
  %166 = load i32, i32* %22, align 4
  %167 = call double @gdTrueColorGetRed(i32 %166)
  %168 = fmul double %165, %167
  %169 = fadd double %164, %168
  %170 = fptosi double %169 to i32
  store i32 %170, i32* %23, align 4
  %171 = load double, double* %15, align 8
  %172 = load i32, i32* %19, align 4
  %173 = call double @gdTrueColorGetGreen(i32 %172)
  %174 = fmul double %171, %173
  %175 = load double, double* %16, align 8
  %176 = load i32, i32* %20, align 4
  %177 = call double @gdTrueColorGetGreen(i32 %176)
  %178 = fmul double %175, %177
  %179 = fadd double %174, %178
  %180 = load double, double* %17, align 8
  %181 = load i32, i32* %21, align 4
  %182 = call double @gdTrueColorGetGreen(i32 %181)
  %183 = fmul double %180, %182
  %184 = fadd double %179, %183
  %185 = load double, double* %18, align 8
  %186 = load i32, i32* %22, align 4
  %187 = call double @gdTrueColorGetGreen(i32 %186)
  %188 = fmul double %185, %187
  %189 = fadd double %184, %188
  %190 = fptosi double %189 to i32
  store i32 %190, i32* %24, align 4
  %191 = load double, double* %15, align 8
  %192 = load i32, i32* %19, align 4
  %193 = call double @gdTrueColorGetBlue(i32 %192)
  %194 = fmul double %191, %193
  %195 = load double, double* %16, align 8
  %196 = load i32, i32* %20, align 4
  %197 = call double @gdTrueColorGetBlue(i32 %196)
  %198 = fmul double %195, %197
  %199 = fadd double %194, %198
  %200 = load double, double* %17, align 8
  %201 = load i32, i32* %21, align 4
  %202 = call double @gdTrueColorGetBlue(i32 %201)
  %203 = fmul double %200, %202
  %204 = fadd double %199, %203
  %205 = load double, double* %18, align 8
  %206 = load i32, i32* %22, align 4
  %207 = call double @gdTrueColorGetBlue(i32 %206)
  %208 = fmul double %205, %207
  %209 = fadd double %204, %208
  %210 = fptosi double %209 to i32
  store i32 %210, i32* %25, align 4
  %211 = load double, double* %15, align 8
  %212 = load i32, i32* %19, align 4
  %213 = call double @gdTrueColorGetAlpha(i32 %212)
  %214 = fmul double %211, %213
  %215 = load double, double* %16, align 8
  %216 = load i32, i32* %20, align 4
  %217 = call double @gdTrueColorGetAlpha(i32 %216)
  %218 = fmul double %215, %217
  %219 = fadd double %214, %218
  %220 = load double, double* %17, align 8
  %221 = load i32, i32* %21, align 4
  %222 = call double @gdTrueColorGetAlpha(i32 %221)
  %223 = fmul double %220, %222
  %224 = fadd double %219, %223
  %225 = load double, double* %18, align 8
  %226 = load i32, i32* %22, align 4
  %227 = call double @gdTrueColorGetAlpha(i32 %226)
  %228 = fmul double %225, %227
  %229 = fadd double %224, %228
  %230 = fptosi double %229 to i32
  store i32 %230, i32* %26, align 4
  br label %392

231:                                              ; preds = %145
  %232 = load double, double* %15, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load double*, double** %234, align 8
  %236 = load i32, i32* %19, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double, double* %235, i64 %237
  %239 = load double, double* %238, align 8
  %240 = fmul double %232, %239
  %241 = load double, double* %16, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load double*, double** %243, align 8
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, double* %244, i64 %246
  %248 = load double, double* %247, align 8
  %249 = fmul double %241, %248
  %250 = fadd double %240, %249
  %251 = load double, double* %17, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load double*, double** %253, align 8
  %255 = load i32, i32* %21, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds double, double* %254, i64 %256
  %258 = load double, double* %257, align 8
  %259 = fmul double %251, %258
  %260 = fadd double %250, %259
  %261 = load double, double* %18, align 8
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load double*, double** %263, align 8
  %265 = load i32, i32* %22, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double, double* %264, i64 %266
  %268 = load double, double* %267, align 8
  %269 = fmul double %261, %268
  %270 = fadd double %260, %269
  %271 = fptosi double %270 to i32
  store i32 %271, i32* %23, align 4
  %272 = load double, double* %15, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 2
  %275 = load double*, double** %274, align 8
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = load double, double* %278, align 8
  %280 = fmul double %272, %279
  %281 = load double, double* %16, align 8
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 2
  %284 = load double*, double** %283, align 8
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds double, double* %284, i64 %286
  %288 = load double, double* %287, align 8
  %289 = fmul double %281, %288
  %290 = fadd double %280, %289
  %291 = load double, double* %17, align 8
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 2
  %294 = load double*, double** %293, align 8
  %295 = load i32, i32* %21, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds double, double* %294, i64 %296
  %298 = load double, double* %297, align 8
  %299 = fmul double %291, %298
  %300 = fadd double %290, %299
  %301 = load double, double* %18, align 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 2
  %304 = load double*, double** %303, align 8
  %305 = load i32, i32* %22, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double, double* %304, i64 %306
  %308 = load double, double* %307, align 8
  %309 = fmul double %301, %308
  %310 = fadd double %300, %309
  %311 = fptosi double %310 to i32
  store i32 %311, i32* %24, align 4
  %312 = load double, double* %15, align 8
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 3
  %315 = load double*, double** %314, align 8
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, double* %315, i64 %317
  %319 = load double, double* %318, align 8
  %320 = fmul double %312, %319
  %321 = load double, double* %16, align 8
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 3
  %324 = load double*, double** %323, align 8
  %325 = load i32, i32* %20, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds double, double* %324, i64 %326
  %328 = load double, double* %327, align 8
  %329 = fmul double %321, %328
  %330 = fadd double %320, %329
  %331 = load double, double* %17, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 3
  %334 = load double*, double** %333, align 8
  %335 = load i32, i32* %21, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %334, i64 %336
  %338 = load double, double* %337, align 8
  %339 = fmul double %331, %338
  %340 = fadd double %330, %339
  %341 = load double, double* %18, align 8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 3
  %344 = load double*, double** %343, align 8
  %345 = load i32, i32* %22, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds double, double* %344, i64 %346
  %348 = load double, double* %347, align 8
  %349 = fmul double %341, %348
  %350 = fadd double %340, %349
  %351 = fptosi double %350 to i32
  store i32 %351, i32* %25, align 4
  %352 = load double, double* %15, align 8
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 4
  %355 = load double*, double** %354, align 8
  %356 = load i32, i32* %19, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %355, i64 %357
  %359 = load double, double* %358, align 8
  %360 = fmul double %352, %359
  %361 = load double, double* %16, align 8
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 4
  %364 = load double*, double** %363, align 8
  %365 = load i32, i32* %20, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, double* %364, i64 %366
  %368 = load double, double* %367, align 8
  %369 = fmul double %361, %368
  %370 = fadd double %360, %369
  %371 = load double, double* %17, align 8
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 4
  %374 = load double*, double** %373, align 8
  %375 = load i32, i32* %21, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds double, double* %374, i64 %376
  %378 = load double, double* %377, align 8
  %379 = fmul double %371, %378
  %380 = fadd double %370, %379
  %381 = load double, double* %18, align 8
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 4
  %384 = load double*, double** %383, align 8
  %385 = load i32, i32* %22, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %384, i64 %386
  %388 = load double, double* %387, align 8
  %389 = fmul double %381, %388
  %390 = fadd double %380, %389
  %391 = fptosi double %390 to i32
  store i32 %391, i32* %26, align 4
  br label %392

392:                                              ; preds = %231, %150
  %393 = load i32, i32* %23, align 4
  %394 = call i32 @CLAMP(i32 %393, i32 0, i32 255)
  store i32 %394, i32* %23, align 4
  %395 = load i32, i32* %24, align 4
  %396 = call i32 @CLAMP(i32 %395, i32 0, i32 255)
  store i32 %396, i32* %24, align 4
  %397 = load i32, i32* %25, align 4
  %398 = call i32 @CLAMP(i32 %397, i32 0, i32 255)
  store i32 %398, i32* %25, align 4
  %399 = load i32, i32* %26, align 4
  %400 = load i32, i32* @gdAlphaMax, align 4
  %401 = call i32 @CLAMP(i32 %399, i32 0, i32 %400)
  store i32 %401, i32* %26, align 4
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* %24, align 4
  %404 = load i32, i32* %25, align 4
  %405 = load i32, i32* %26, align 4
  %406 = call i32 @gdTrueColorAlpha(i32 %402, i32 %403, i32 %404, i32 %405)
  ret i32 %406
}

declare dso_local i32 @getPixelOverflowTC(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @getPixelOverflowPalette(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local double @gdTrueColorGetRed(i32) #1

declare dso_local double @gdTrueColorGetGreen(i32) #1

declare dso_local double @gdTrueColorGetBlue(i32) #1

declare dso_local double @gdTrueColorGetAlpha(i32) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
