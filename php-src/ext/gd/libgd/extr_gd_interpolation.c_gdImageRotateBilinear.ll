; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageRotateBilinear.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageRotateBilinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32** }
%struct.TYPE_10__ = type { i32, i32 }

@M_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @gdImageRotateBilinear(%struct.TYPE_11__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca %struct.TYPE_10__, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i8, align 1
  %64 = alloca i8, align 1
  %65 = alloca i8, align 1
  %66 = alloca i8, align 1
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %67 = load float, float* %6, align 4
  %68 = fneg float %67
  %69 = fdiv float %68, 1.800000e+02
  %70 = load float, float* @M_PI, align 4
  %71 = fmul float %69, %70
  store float %71, float* %8, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = call i32 @gdImageSX(%struct.TYPE_11__* %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = call i32 @gdImageSY(%struct.TYPE_11__* %74)
  store i32 %75, i32* %10, align 4
  %76 = call i64 @gd_ftofx(float 5.000000e-01)
  store i64 %76, i64* %13, align 8
  %77 = load i32, i32* %10, align 4
  %78 = udiv i32 %77, 2
  %79 = call i64 @gd_itofx(i32 %78)
  store i64 %79, i64* %14, align 8
  %80 = load i32, i32* %9, align 4
  %81 = udiv i32 %80, 2
  %82 = call i64 @gd_itofx(i32 %81)
  store i64 %82, i64* %15, align 8
  %83 = load float, float* %8, align 4
  %84 = fneg float %83
  %85 = call float @cos(float %84)
  %86 = call i64 @gd_ftofx(float %85)
  store i64 %86, i64* %16, align 8
  %87 = load float, float* %8, align 4
  %88 = fneg float %87
  %89 = call float @sin(float %88)
  %90 = call i64 @gd_ftofx(float %89)
  store i64 %90, i64* %17, align 8
  %91 = call i64 @gd_itofx(i32 1)
  store i64 %91, i64* %18, align 8
  store i32 0, i32* %21, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = load float, float* %6, align 4
  %94 = call i32 @gdRotatedImageSize(%struct.TYPE_11__* %92, float %93, %struct.TYPE_10__* %25)
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call %struct.TYPE_11__* @gdImageCreateTrueColor(i32 %99, i32 %100)
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %24, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %103 = icmp eq %struct.TYPE_11__* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %455

105:                                              ; preds = %3
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %450, %105
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %453

112:                                              ; preds = %108
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  br label %113

113:                                              ; preds = %444, %112
  %114 = load i32, i32* %26, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %447

117:                                              ; preds = %113
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sdiv i32 %119, 2
  %121 = sub nsw i32 %118, %120
  %122 = call i64 @gd_itofx(i32 %121)
  store i64 %122, i64* %27, align 8
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sdiv i32 %124, 2
  %126 = sub nsw i32 %123, %125
  %127 = call i64 @gd_itofx(i32 %126)
  store i64 %127, i64* %28, align 8
  %128 = load i64, i64* %28, align 8
  %129 = load i64, i64* %17, align 8
  %130 = call i64 @gd_mulfx(i64 %128, i64 %129)
  %131 = load i64, i64* %27, align 8
  %132 = load i64, i64* %16, align 8
  %133 = call i64 @gd_mulfx(i64 %131, i64 %132)
  %134 = add nsw i64 %130, %133
  %135 = load i64, i64* %13, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i64, i64* %14, align 8
  %138 = add nsw i64 %136, %137
  store i64 %138, i64* %29, align 8
  %139 = load i64, i64* %28, align 8
  %140 = load i64, i64* %16, align 8
  %141 = call i64 @gd_mulfx(i64 %139, i64 %140)
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %17, align 8
  %144 = call i64 @gd_mulfx(i64 %142, i64 %143)
  %145 = sub nsw i64 %141, %144
  %146 = load i64, i64* %13, align 8
  %147 = add nsw i64 %145, %146
  %148 = load i64, i64* %15, align 8
  %149 = add nsw i64 %147, %148
  store i64 %149, i64* %30, align 8
  %150 = load i64, i64* %29, align 8
  %151 = call i32 @gd_fxtoi(i64 %150)
  store i32 %151, i32* %31, align 4
  %152 = load i64, i64* %30, align 8
  %153 = call i32 @gd_fxtoi(i64 %152)
  store i32 %153, i32* %32, align 4
  %154 = load i32, i32* %31, align 4
  %155 = icmp uge i32 %154, 0
  br i1 %155, label %156, label %430

156:                                              ; preds = %117
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub i32 %158, 1
  %160 = icmp ult i32 %157, %159
  br i1 %160, label %161, label %430

161:                                              ; preds = %156
  %162 = load i32, i32* %32, align 4
  %163 = icmp uge i32 %162, 0
  br i1 %163, label %164, label %430

164:                                              ; preds = %161
  %165 = load i32, i32* %32, align 4
  %166 = load i32, i32* %9, align 4
  %167 = sub i32 %166, 1
  %168 = icmp ult i32 %165, %167
  br i1 %168, label %169, label %430

169:                                              ; preds = %164
  %170 = load i64, i64* %29, align 8
  %171 = load i32, i32* %31, align 4
  %172 = call i64 @gd_itofx(i32 %171)
  %173 = sub nsw i64 %170, %172
  store i64 %173, i64* %33, align 8
  %174 = load i64, i64* %30, align 8
  %175 = load i32, i32* %32, align 4
  %176 = call i64 @gd_itofx(i32 %175)
  %177 = sub nsw i64 %174, %176
  store i64 %177, i64* %34, align 8
  %178 = load i64, i64* %18, align 8
  %179 = load i64, i64* %33, align 8
  %180 = sub nsw i64 %178, %179
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %34, align 8
  %183 = sub nsw i64 %181, %182
  %184 = call i64 @gd_mulfx(i64 %180, i64 %183)
  store i64 %184, i64* %35, align 8
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* %33, align 8
  %187 = sub nsw i64 %185, %186
  %188 = load i64, i64* %34, align 8
  %189 = call i64 @gd_mulfx(i64 %187, i64 %188)
  store i64 %189, i64* %36, align 8
  %190 = load i64, i64* %33, align 8
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* %34, align 8
  %193 = sub nsw i64 %191, %192
  %194 = call i64 @gd_mulfx(i64 %190, i64 %193)
  store i64 %194, i64* %37, align 8
  %195 = load i64, i64* %33, align 8
  %196 = load i64, i64* %34, align 8
  %197 = call i64 @gd_mulfx(i64 %195, i64 %196)
  store i64 %197, i64* %38, align 8
  %198 = load i32, i32* %31, align 4
  %199 = load i32, i32* %10, align 4
  %200 = sub i32 %199, 1
  %201 = icmp ult i32 %198, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %169
  %203 = load i32, i32* %32, align 4
  store i32 %203, i32* %22, align 4
  %204 = load i32, i32* %31, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %23, align 4
  br label %206

206:                                              ; preds = %202, %169
  %207 = load i32, i32* %32, align 4
  %208 = load i32, i32* %9, align 4
  %209 = sub i32 %208, 1
  %210 = icmp uge i32 %207, %209
  br i1 %210, label %221, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %31, align 4
  %213 = load i32, i32* %10, align 4
  %214 = sub i32 %213, 1
  %215 = icmp uge i32 %212, %214
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %32, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %22, align 4
  %219 = load i32, i32* %31, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %23, align 4
  br label %221

221:                                              ; preds = %216, %211, %206
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32, i32* %23, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %22, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %39, align 4
  %233 = load i32, i32* %23, align 4
  %234 = add i32 %233, 1
  %235 = load i32, i32* %10, align 4
  %236 = icmp uge i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %221
  %238 = load i32, i32* %39, align 4
  store i32 %238, i32* %40, align 4
  %239 = load i32, i32* %39, align 4
  store i32 %239, i32* %41, align 4
  %240 = load i32, i32* %39, align 4
  store i32 %240, i32* %42, align 4
  br label %289

241:                                              ; preds = %221
  %242 = load i32, i32* %22, align 4
  %243 = add i32 %242, 1
  %244 = load i32, i32* %9, align 4
  %245 = icmp uge i32 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32, i32* %39, align 4
  store i32 %247, i32* %40, align 4
  %248 = load i32, i32* %39, align 4
  store i32 %248, i32* %41, align 4
  %249 = load i32, i32* %39, align 4
  store i32 %249, i32* %42, align 4
  br label %288

250:                                              ; preds = %241
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32**, i32*** %252, align 8
  %254 = load i32, i32* %23, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %22, align 4
  %259 = add i32 %258, 1
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %40, align 4
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32**, i32*** %264, align 8
  %266 = load i32, i32* %23, align 4
  %267 = add i32 %266, 1
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %265, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %22, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %41, align 4
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %23, align 4
  %279 = add i32 %278, 1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %277, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %22, align 4
  %284 = add i32 %283, 1
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %42, align 4
  br label %288

288:                                              ; preds = %250, %246
  br label %289

289:                                              ; preds = %288, %237
  %290 = load i32, i32* %39, align 4
  %291 = call i32 @gdTrueColorGetRed(i32 %290)
  %292 = call i64 @gd_itofx(i32 %291)
  store i64 %292, i64* %43, align 8
  %293 = load i32, i32* %40, align 4
  %294 = call i32 @gdTrueColorGetRed(i32 %293)
  %295 = call i64 @gd_itofx(i32 %294)
  store i64 %295, i64* %44, align 8
  %296 = load i32, i32* %41, align 4
  %297 = call i32 @gdTrueColorGetRed(i32 %296)
  %298 = call i64 @gd_itofx(i32 %297)
  store i64 %298, i64* %45, align 8
  %299 = load i32, i32* %42, align 4
  %300 = call i32 @gdTrueColorGetRed(i32 %299)
  %301 = call i64 @gd_itofx(i32 %300)
  store i64 %301, i64* %46, align 8
  %302 = load i32, i32* %39, align 4
  %303 = call i32 @gdTrueColorGetGreen(i32 %302)
  %304 = call i64 @gd_itofx(i32 %303)
  store i64 %304, i64* %47, align 8
  %305 = load i32, i32* %40, align 4
  %306 = call i32 @gdTrueColorGetGreen(i32 %305)
  %307 = call i64 @gd_itofx(i32 %306)
  store i64 %307, i64* %48, align 8
  %308 = load i32, i32* %41, align 4
  %309 = call i32 @gdTrueColorGetGreen(i32 %308)
  %310 = call i64 @gd_itofx(i32 %309)
  store i64 %310, i64* %49, align 8
  %311 = load i32, i32* %42, align 4
  %312 = call i32 @gdTrueColorGetGreen(i32 %311)
  %313 = call i64 @gd_itofx(i32 %312)
  store i64 %313, i64* %50, align 8
  %314 = load i32, i32* %39, align 4
  %315 = call i32 @gdTrueColorGetBlue(i32 %314)
  %316 = call i64 @gd_itofx(i32 %315)
  store i64 %316, i64* %51, align 8
  %317 = load i32, i32* %40, align 4
  %318 = call i32 @gdTrueColorGetBlue(i32 %317)
  %319 = call i64 @gd_itofx(i32 %318)
  store i64 %319, i64* %52, align 8
  %320 = load i32, i32* %41, align 4
  %321 = call i32 @gdTrueColorGetBlue(i32 %320)
  %322 = call i64 @gd_itofx(i32 %321)
  store i64 %322, i64* %53, align 8
  %323 = load i32, i32* %42, align 4
  %324 = call i32 @gdTrueColorGetBlue(i32 %323)
  %325 = call i64 @gd_itofx(i32 %324)
  store i64 %325, i64* %54, align 8
  %326 = load i32, i32* %39, align 4
  %327 = call i32 @gdTrueColorGetAlpha(i32 %326)
  %328 = call i64 @gd_itofx(i32 %327)
  store i64 %328, i64* %55, align 8
  %329 = load i32, i32* %40, align 4
  %330 = call i32 @gdTrueColorGetAlpha(i32 %329)
  %331 = call i64 @gd_itofx(i32 %330)
  store i64 %331, i64* %56, align 8
  %332 = load i32, i32* %41, align 4
  %333 = call i32 @gdTrueColorGetAlpha(i32 %332)
  %334 = call i64 @gd_itofx(i32 %333)
  store i64 %334, i64* %57, align 8
  %335 = load i32, i32* %42, align 4
  %336 = call i32 @gdTrueColorGetAlpha(i32 %335)
  %337 = call i64 @gd_itofx(i32 %336)
  store i64 %337, i64* %58, align 8
  %338 = load i64, i64* %35, align 8
  %339 = load i64, i64* %43, align 8
  %340 = call i64 @gd_mulfx(i64 %338, i64 %339)
  %341 = load i64, i64* %36, align 8
  %342 = load i64, i64* %44, align 8
  %343 = call i64 @gd_mulfx(i64 %341, i64 %342)
  %344 = add nsw i64 %340, %343
  %345 = load i64, i64* %37, align 8
  %346 = load i64, i64* %45, align 8
  %347 = call i64 @gd_mulfx(i64 %345, i64 %346)
  %348 = add nsw i64 %344, %347
  %349 = load i64, i64* %38, align 8
  %350 = load i64, i64* %46, align 8
  %351 = call i64 @gd_mulfx(i64 %349, i64 %350)
  %352 = add nsw i64 %348, %351
  store i64 %352, i64* %59, align 8
  %353 = load i64, i64* %35, align 8
  %354 = load i64, i64* %47, align 8
  %355 = call i64 @gd_mulfx(i64 %353, i64 %354)
  %356 = load i64, i64* %36, align 8
  %357 = load i64, i64* %48, align 8
  %358 = call i64 @gd_mulfx(i64 %356, i64 %357)
  %359 = add nsw i64 %355, %358
  %360 = load i64, i64* %37, align 8
  %361 = load i64, i64* %49, align 8
  %362 = call i64 @gd_mulfx(i64 %360, i64 %361)
  %363 = add nsw i64 %359, %362
  %364 = load i64, i64* %38, align 8
  %365 = load i64, i64* %50, align 8
  %366 = call i64 @gd_mulfx(i64 %364, i64 %365)
  %367 = add nsw i64 %363, %366
  store i64 %367, i64* %60, align 8
  %368 = load i64, i64* %35, align 8
  %369 = load i64, i64* %51, align 8
  %370 = call i64 @gd_mulfx(i64 %368, i64 %369)
  %371 = load i64, i64* %36, align 8
  %372 = load i64, i64* %52, align 8
  %373 = call i64 @gd_mulfx(i64 %371, i64 %372)
  %374 = add nsw i64 %370, %373
  %375 = load i64, i64* %37, align 8
  %376 = load i64, i64* %53, align 8
  %377 = call i64 @gd_mulfx(i64 %375, i64 %376)
  %378 = add nsw i64 %374, %377
  %379 = load i64, i64* %38, align 8
  %380 = load i64, i64* %54, align 8
  %381 = call i64 @gd_mulfx(i64 %379, i64 %380)
  %382 = add nsw i64 %378, %381
  store i64 %382, i64* %61, align 8
  %383 = load i64, i64* %35, align 8
  %384 = load i64, i64* %55, align 8
  %385 = call i64 @gd_mulfx(i64 %383, i64 %384)
  %386 = load i64, i64* %36, align 8
  %387 = load i64, i64* %56, align 8
  %388 = call i64 @gd_mulfx(i64 %386, i64 %387)
  %389 = add nsw i64 %385, %388
  %390 = load i64, i64* %37, align 8
  %391 = load i64, i64* %57, align 8
  %392 = call i64 @gd_mulfx(i64 %390, i64 %391)
  %393 = add nsw i64 %389, %392
  %394 = load i64, i64* %38, align 8
  %395 = load i64, i64* %58, align 8
  %396 = call i64 @gd_mulfx(i64 %394, i64 %395)
  %397 = add nsw i64 %393, %396
  store i64 %397, i64* %62, align 8
  %398 = load i64, i64* %59, align 8
  %399 = call i32 @gd_fxtoi(i64 %398)
  %400 = call i64 @CLAMP(i32 %399, i32 0, i32 255)
  %401 = trunc i64 %400 to i8
  store i8 %401, i8* %63, align 1
  %402 = load i64, i64* %60, align 8
  %403 = call i32 @gd_fxtoi(i64 %402)
  %404 = call i64 @CLAMP(i32 %403, i32 0, i32 255)
  %405 = trunc i64 %404 to i8
  store i8 %405, i8* %64, align 1
  %406 = load i64, i64* %61, align 8
  %407 = call i32 @gd_fxtoi(i64 %406)
  %408 = call i64 @CLAMP(i32 %407, i32 0, i32 255)
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %65, align 1
  %410 = load i64, i64* %62, align 8
  %411 = call i32 @gd_fxtoi(i64 %410)
  %412 = call i64 @CLAMP(i32 %411, i32 0, i32 127)
  %413 = trunc i64 %412 to i8
  store i8 %413, i8* %66, align 1
  %414 = load i8, i8* %63, align 1
  %415 = load i8, i8* %64, align 1
  %416 = load i8, i8* %65, align 1
  %417 = load i8, i8* %66, align 1
  %418 = call i32 @gdTrueColorAlpha(i8 zeroext %414, i8 zeroext %415, i8 zeroext %416, i8 zeroext %417)
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 1
  %421 = load i32**, i32*** %420, align 8
  %422 = load i32, i32* %21, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i32*, i32** %421, i64 %423
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %20, align 4
  %427 = add i32 %426, 1
  store i32 %427, i32* %20, align 4
  %428 = zext i32 %426 to i64
  %429 = getelementptr inbounds i32, i32* %425, i64 %428
  store i32 %418, i32* %429, align 4
  br label %443

430:                                              ; preds = %164, %161, %156, %117
  %431 = load i32, i32* %7, align 4
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 1
  %434 = load i32**, i32*** %433, align 8
  %435 = load i32, i32* %21, align 4
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds i32*, i32** %434, i64 %436
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %20, align 4
  %440 = add i32 %439, 1
  store i32 %440, i32* %20, align 4
  %441 = zext i32 %439 to i64
  %442 = getelementptr inbounds i32, i32* %438, i64 %441
  store i32 %431, i32* %442, align 4
  br label %443

443:                                              ; preds = %430, %289
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %26, align 4
  %446 = add i32 %445, 1
  store i32 %446, i32* %26, align 4
  br label %113

447:                                              ; preds = %113
  %448 = load i32, i32* %21, align 4
  %449 = add i32 %448, 1
  store i32 %449, i32* %21, align 4
  br label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %19, align 4
  %452 = add i32 %451, 1
  store i32 %452, i32* %19, align 4
  br label %108

453:                                              ; preds = %108
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %454, %struct.TYPE_11__** %4, align 8
  br label %455

455:                                              ; preds = %453, %104
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %456
}

declare dso_local i32 @gdImageSX(%struct.TYPE_11__*) #1

declare dso_local i32 @gdImageSY(%struct.TYPE_11__*) #1

declare dso_local i64 @gd_ftofx(float) #1

declare dso_local i64 @gd_itofx(i32) #1

declare dso_local float @cos(float) #1

declare dso_local float @sin(float) #1

declare dso_local i32 @gdRotatedImageSize(%struct.TYPE_11__*, float, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i64 @gd_mulfx(i64, i64) #1

declare dso_local i32 @gd_fxtoi(i64) #1

declare dso_local i32 @gdTrueColorGetRed(i32) #1

declare dso_local i32 @gdTrueColorGetGreen(i32) #1

declare dso_local i32 @gdTrueColorGetBlue(i32) #1

declare dso_local i32 @gdTrueColorGetAlpha(i32) #1

declare dso_local i64 @CLAMP(i32, i32, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
