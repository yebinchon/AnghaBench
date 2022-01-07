; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyResampled.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyResampled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@gdAlphaMax = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageCopyResampled(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %10
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @gdImageCopyResized(%struct.TYPE_8__* %46, %struct.TYPE_8__* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  br label %340

57:                                               ; preds = %10
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %22, align 4
  br label %59

59:                                               ; preds = %337, %57
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %340

65:                                               ; preds = %59
  %66 = load i32, i32* %22, align 4
  %67 = sitofp i32 %66 to double
  %68 = load i32, i32* %14, align 4
  %69 = sitofp i32 %68 to double
  %70 = fsub double %67, %69
  %71 = load i32, i32* %20, align 4
  %72 = sitofp i32 %71 to double
  %73 = fmul double %70, %72
  %74 = load i32, i32* %18, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %73, %75
  store double %76, double* %23, align 8
  %77 = load i32, i32* %22, align 4
  %78 = add nsw i32 %77, 1
  %79 = sitofp i32 %78 to double
  %80 = load i32, i32* %14, align 4
  %81 = sitofp i32 %80 to double
  %82 = fsub double %79, %81
  %83 = load i32, i32* %20, align 4
  %84 = sitofp i32 %83 to double
  %85 = fmul double %82, %84
  %86 = load i32, i32* %18, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %85, %87
  store double %88, double* %24, align 8
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %21, align 4
  br label %90

90:                                               ; preds = %333, %65
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %92, %93
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %336

96:                                               ; preds = %90
  store double 0.000000e+00, double* %29, align 8
  store double 0.000000e+00, double* %30, align 8
  store double 0.000000e+00, double* %31, align 8
  store double 0.000000e+00, double* %32, align 8
  store double 0.000000e+00, double* %33, align 8
  store double 0.000000e+00, double* %35, align 8
  store double 0.000000e+00, double* %36, align 8
  %97 = load i32, i32* %21, align 4
  %98 = sitofp i32 %97 to double
  %99 = load i32, i32* %13, align 4
  %100 = sitofp i32 %99 to double
  %101 = fsub double %98, %100
  %102 = load i32, i32* %19, align 4
  %103 = sitofp i32 %102 to double
  %104 = fmul double %101, %103
  %105 = load i32, i32* %17, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %104, %106
  store double %107, double* %25, align 8
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  %110 = sitofp i32 %109 to double
  %111 = load i32, i32* %13, align 4
  %112 = sitofp i32 %111 to double
  %113 = fsub double %110, %112
  %114 = load i32, i32* %19, align 4
  %115 = sitofp i32 %114 to double
  %116 = fmul double %113, %115
  %117 = load i32, i32* %17, align 4
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %116, %118
  store double %119, double* %26, align 8
  %120 = load double, double* %23, align 8
  store double %120, double* %28, align 8
  br label %121

121:                                              ; preds = %259, %96
  %122 = load double, double* %28, align 8
  %123 = call double @floor_cast(double %122)
  %124 = load double, double* %23, align 8
  %125 = call double @floor_cast(double %124)
  %126 = fcmp oeq double %123, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %121
  %128 = load double, double* %28, align 8
  %129 = load double, double* %28, align 8
  %130 = call double @floor_cast(double %129)
  %131 = fsub double %128, %130
  %132 = fsub double 1.000000e+00, %131
  store double %132, double* %37, align 8
  %133 = load double, double* %37, align 8
  %134 = load double, double* %24, align 8
  %135 = load double, double* %23, align 8
  %136 = fsub double %134, %135
  %137 = fcmp ogt double %133, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %127
  %139 = load double, double* %24, align 8
  %140 = load double, double* %23, align 8
  %141 = fsub double %139, %140
  store double %141, double* %37, align 8
  br label %142

142:                                              ; preds = %138, %127
  %143 = load double, double* %28, align 8
  %144 = call double @floor_cast(double %143)
  store double %144, double* %28, align 8
  br label %157

145:                                              ; preds = %121
  %146 = load double, double* %28, align 8
  %147 = load double, double* %24, align 8
  %148 = call double @floorf(double %147)
  %149 = fcmp oeq double %146, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load double, double* %24, align 8
  %152 = load double, double* %24, align 8
  %153 = call double @floor_cast(double %152)
  %154 = fsub double %151, %153
  store double %154, double* %37, align 8
  br label %156

155:                                              ; preds = %145
  store double 1.000000e+00, double* %37, align 8
  br label %156

156:                                              ; preds = %155, %150
  br label %157

157:                                              ; preds = %156, %142
  %158 = load double, double* %25, align 8
  store double %158, double* %27, align 8
  br label %159

159:                                              ; preds = %252, %157
  %160 = load double, double* %27, align 8
  %161 = call double @floorf(double %160)
  %162 = load double, double* %25, align 8
  %163 = call double @floor_cast(double %162)
  %164 = fcmp oeq double %161, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %159
  %166 = load double, double* %27, align 8
  %167 = load double, double* %27, align 8
  %168 = call double @floor_cast(double %167)
  %169 = fsub double %166, %168
  %170 = fsub double 1.000000e+00, %169
  store double %170, double* %38, align 8
  %171 = load double, double* %38, align 8
  %172 = load double, double* %26, align 8
  %173 = load double, double* %25, align 8
  %174 = fsub double %172, %173
  %175 = fcmp ogt double %171, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load double, double* %26, align 8
  %178 = load double, double* %25, align 8
  %179 = fsub double %177, %178
  store double %179, double* %38, align 8
  br label %180

180:                                              ; preds = %176, %165
  %181 = load double, double* %27, align 8
  %182 = call double @floor_cast(double %181)
  store double %182, double* %27, align 8
  br label %195

183:                                              ; preds = %159
  %184 = load double, double* %27, align 8
  %185 = load double, double* %26, align 8
  %186 = call double @floorf(double %185)
  %187 = fcmp oeq double %184, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load double, double* %26, align 8
  %190 = load double, double* %26, align 8
  %191 = call double @floor_cast(double %190)
  %192 = fsub double %189, %191
  store double %192, double* %38, align 8
  br label %194

193:                                              ; preds = %183
  store double 1.000000e+00, double* %38, align 8
  br label %194

194:                                              ; preds = %193, %188
  br label %195

195:                                              ; preds = %194, %180
  %196 = load double, double* %38, align 8
  %197 = load double, double* %37, align 8
  %198 = fmul double %196, %197
  store double %198, double* %39, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %200 = load double, double* %27, align 8
  %201 = fptosi double %200 to i32
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %201, %202
  %204 = load double, double* %28, align 8
  %205 = fptosi double %204 to i32
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %205, %206
  %208 = call i32 @gdImageGetTrueColorPixel(%struct.TYPE_8__* %199, i32 %203, i32 %207)
  store i32 %208, i32* %40, align 4
  %209 = load double, double* @gdAlphaMax, align 8
  %210 = load i32, i32* %40, align 4
  %211 = call double @gdTrueColorGetAlpha(i32 %210)
  %212 = fsub double %209, %211
  %213 = load double, double* %39, align 8
  %214 = fmul double %212, %213
  store double %214, double* %34, align 8
  %215 = load i32, i32* %40, align 4
  %216 = call double @gdTrueColorGetRed(i32 %215)
  %217 = load double, double* %34, align 8
  %218 = fmul double %216, %217
  %219 = load double, double* %30, align 8
  %220 = fadd double %219, %218
  store double %220, double* %30, align 8
  %221 = load i32, i32* %40, align 4
  %222 = call double @gdTrueColorGetGreen(i32 %221)
  %223 = load double, double* %34, align 8
  %224 = fmul double %222, %223
  %225 = load double, double* %31, align 8
  %226 = fadd double %225, %224
  store double %226, double* %31, align 8
  %227 = load i32, i32* %40, align 4
  %228 = call double @gdTrueColorGetBlue(i32 %227)
  %229 = load double, double* %34, align 8
  %230 = fmul double %228, %229
  %231 = load double, double* %32, align 8
  %232 = fadd double %231, %230
  store double %232, double* %32, align 8
  %233 = load i32, i32* %40, align 4
  %234 = call double @gdTrueColorGetAlpha(i32 %233)
  %235 = load double, double* %39, align 8
  %236 = fmul double %234, %235
  %237 = load double, double* %33, align 8
  %238 = fadd double %237, %236
  store double %238, double* %33, align 8
  %239 = load double, double* %34, align 8
  %240 = load double, double* %35, align 8
  %241 = fadd double %240, %239
  store double %241, double* %35, align 8
  %242 = load double, double* %39, align 8
  %243 = load double, double* %36, align 8
  %244 = fadd double %243, %242
  store double %244, double* %36, align 8
  %245 = load double, double* %38, align 8
  %246 = load double, double* %37, align 8
  %247 = fmul double %245, %246
  %248 = load double, double* %29, align 8
  %249 = fadd double %248, %247
  store double %249, double* %29, align 8
  %250 = load double, double* %27, align 8
  %251 = fadd double %250, 1.000000e+00
  store double %251, double* %27, align 8
  br label %252

252:                                              ; preds = %195
  %253 = load double, double* %27, align 8
  %254 = load double, double* %26, align 8
  %255 = fcmp olt double %253, %254
  br i1 %255, label %159, label %256

256:                                              ; preds = %252
  %257 = load double, double* %28, align 8
  %258 = fadd double %257, 1.000000e+00
  store double %258, double* %28, align 8
  br label %259

259:                                              ; preds = %256
  %260 = load double, double* %28, align 8
  %261 = load double, double* %24, align 8
  %262 = fcmp olt double %260, %261
  br i1 %262, label %121, label %263

263:                                              ; preds = %259
  %264 = load double, double* %29, align 8
  %265 = fcmp une double %264, 0.000000e+00
  br i1 %265, label %266, label %281

266:                                              ; preds = %263
  %267 = load double, double* %29, align 8
  %268 = load double, double* %30, align 8
  %269 = fdiv double %268, %267
  store double %269, double* %30, align 8
  %270 = load double, double* %29, align 8
  %271 = load double, double* %31, align 8
  %272 = fdiv double %271, %270
  store double %272, double* %31, align 8
  %273 = load double, double* %29, align 8
  %274 = load double, double* %32, align 8
  %275 = fdiv double %274, %273
  store double %275, double* %32, align 8
  %276 = load double, double* %29, align 8
  %277 = load double, double* %33, align 8
  %278 = fdiv double %277, %276
  store double %278, double* %33, align 8
  %279 = load double, double* %33, align 8
  %280 = fadd double %279, 5.000000e-01
  store double %280, double* %33, align 8
  br label %281

281:                                              ; preds = %266, %263
  %282 = load double, double* %35, align 8
  %283 = fcmp une double %282, 0.000000e+00
  br i1 %283, label %284, label %301

284:                                              ; preds = %281
  %285 = load double, double* %36, align 8
  %286 = fcmp une double %285, 0.000000e+00
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load double, double* %36, align 8
  %289 = load double, double* %35, align 8
  %290 = fdiv double %289, %288
  store double %290, double* %35, align 8
  br label %291

291:                                              ; preds = %287, %284
  %292 = load double, double* %35, align 8
  %293 = load double, double* %30, align 8
  %294 = fdiv double %293, %292
  store double %294, double* %30, align 8
  %295 = load double, double* %35, align 8
  %296 = load double, double* %31, align 8
  %297 = fdiv double %296, %295
  store double %297, double* %31, align 8
  %298 = load double, double* %35, align 8
  %299 = load double, double* %32, align 8
  %300 = fdiv double %299, %298
  store double %300, double* %32, align 8
  br label %301

301:                                              ; preds = %291, %281
  %302 = load double, double* %30, align 8
  %303 = fcmp ogt double %302, 2.550000e+02
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  store double 2.550000e+02, double* %30, align 8
  br label %305

305:                                              ; preds = %304, %301
  %306 = load double, double* %31, align 8
  %307 = fcmp ogt double %306, 2.550000e+02
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store double 2.550000e+02, double* %31, align 8
  br label %309

309:                                              ; preds = %308, %305
  %310 = load double, double* %32, align 8
  %311 = fcmp ogt double %310, 2.550000e+02
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store double 2.550000e+02, double* %32, align 8
  br label %313

313:                                              ; preds = %312, %309
  %314 = load double, double* %33, align 8
  %315 = load double, double* @gdAlphaMax, align 8
  %316 = fcmp ogt double %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = load double, double* @gdAlphaMax, align 8
  store double %318, double* %33, align 8
  br label %319

319:                                              ; preds = %317, %313
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %321 = load i32, i32* %21, align 4
  %322 = load i32, i32* %22, align 4
  %323 = load double, double* %30, align 8
  %324 = fptosi double %323 to i32
  %325 = load double, double* %31, align 8
  %326 = fptosi double %325 to i32
  %327 = load double, double* %32, align 8
  %328 = fptosi double %327 to i32
  %329 = load double, double* %33, align 8
  %330 = fptosi double %329 to i32
  %331 = call i32 @gdTrueColorAlpha(i32 %324, i32 %326, i32 %328, i32 %330)
  %332 = call i32 @gdImageSetPixel(%struct.TYPE_8__* %320, i32 %321, i32 %322, i32 %331)
  br label %333

333:                                              ; preds = %319
  %334 = load i32, i32* %21, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %21, align 4
  br label %90

336:                                              ; preds = %90
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %22, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %22, align 4
  br label %59

340:                                              ; preds = %45, %59
  ret void
}

declare dso_local i32 @gdImageCopyResized(%struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local double @floor_cast(double) #1

declare dso_local double @floorf(double) #1

declare dso_local i32 @gdImageGetTrueColorPixel(%struct.TYPE_8__*, i32, i32) #1

declare dso_local double @gdTrueColorGetAlpha(i32) #1

declare dso_local double @gdTrueColorGetRed(i32) #1

declare dso_local double @gdTrueColorGetGreen(i32) #1

declare dso_local double @gdTrueColorGetBlue(i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
