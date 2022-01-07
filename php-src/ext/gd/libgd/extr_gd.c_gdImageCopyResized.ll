; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyResized.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopyResized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }

@gdMaxColors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageCopyResized(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %36 = load i32, i32* @gdMaxColors, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %28, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %29, align 8
  %40 = load i32, i32* %19, align 4
  %41 = call i64 @overflow2(i32 4, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %10
  store i32 1, i32* %32, align 4
  br label %331

44:                                               ; preds = %10
  %45 = load i32, i32* %20, align 4
  %46 = call i64 @overflow2(i32 4, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %32, align 4
  br label %331

49:                                               ; preds = %44
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @gdMalloc(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %30, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i64 @gdMalloc(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %31, align 8
  store i32 0, i32* %27, align 4
  br label %62

62:                                               ; preds = %83, %49
  %63 = load i32, i32* %27, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %27, align 4
  %69 = add nsw i32 %68, 1
  %70 = mul nsw i32 %67, %69
  %71 = load i32, i32* %19, align 4
  %72 = sdiv i32 %70, %71
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %27, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %19, align 4
  %77 = sdiv i32 %75, %76
  %78 = sub nsw i32 %72, %77
  %79 = load i32*, i32** %30, align 8
  %80 = load i32, i32* %27, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %27, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %27, align 4
  br label %62

86:                                               ; preds = %62
  store i32 0, i32* %27, align 4
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %27, align 4
  %94 = add nsw i32 %93, 1
  %95 = mul nsw i32 %92, %94
  %96 = load i32, i32* %20, align 4
  %97 = sdiv i32 %95, %96
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %27, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %20, align 4
  %102 = sdiv i32 %100, %101
  %103 = sub nsw i32 %97, %102
  %104 = load i32*, i32** %31, align 8
  %105 = load i32, i32* %27, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %91
  %109 = load i32, i32* %27, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %27, align 4
  br label %87

111:                                              ; preds = %87
  store i32 0, i32* %27, align 4
  br label %112

112:                                              ; preds = %120, %111
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* @gdMaxColors, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* %27, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %39, i64 %118
  store i32 -1, i32* %119, align 4
  br label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %27, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %27, align 4
  br label %112

123:                                              ; preds = %112
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %23, align 4
  br label %126

126:                                              ; preds = %323, %123
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %128, %129
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %326

132:                                              ; preds = %126
  store i32 0, i32* %26, align 4
  br label %133

133:                                              ; preds = %319, %132
  %134 = load i32, i32* %26, align 4
  %135 = load i32*, i32** %31, align 8
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %16, align 4
  %138 = sub nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %134, %141
  br i1 %142, label %143, label %322

143:                                              ; preds = %133
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %22, align 4
  br label %146

146:                                              ; preds = %313, %143
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %19, align 4
  %150 = add nsw i32 %148, %149
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %316

152:                                              ; preds = %146
  store i32 0, i32* %33, align 4
  %153 = load i32*, i32** %30, align 8
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  br label %313

162:                                              ; preds = %152
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %217

167:                                              ; preds = %162
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %196, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %23, align 4
  %176 = call i32 @gdImageGetPixel(%struct.TYPE_13__* %173, i32 %174, i32 %175)
  store i32 %176, i32* %35, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %23, align 4
  %180 = call i32 @gdImageGetTrueColorPixel(%struct.TYPE_13__* %177, i32 %178, i32 %179)
  store i32 %180, i32* %34, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %182 = call i32 @gdImageGetTransparent(%struct.TYPE_13__* %181)
  %183 = load i32, i32* %35, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %172
  %186 = load i32*, i32** %30, align 8
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* %15, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %24, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %24, align 4
  br label %313

195:                                              ; preds = %172
  br label %216

196:                                              ; preds = %167
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %23, align 4
  %200 = call i32 @gdImageGetTrueColorPixel(%struct.TYPE_13__* %197, i32 %198, i32 %199)
  store i32 %200, i32* %34, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %202 = call i32 @gdImageGetTransparent(%struct.TYPE_13__* %201)
  %203 = load i32, i32* %34, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %196
  %206 = load i32*, i32** %30, align 8
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %15, align 4
  %209 = sub nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %24, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %24, align 4
  br label %313

215:                                              ; preds = %196
  br label %216

216:                                              ; preds = %215, %195
  br label %290

217:                                              ; preds = %162
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* %23, align 4
  %221 = call i32 @gdImageGetPixel(%struct.TYPE_13__* %218, i32 %219, i32 %220)
  store i32 %221, i32* %21, align 4
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %223 = call i32 @gdImageGetTransparent(%struct.TYPE_13__* %222)
  %224 = load i32, i32* %21, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %217
  %227 = load i32*, i32** %30, align 8
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %24, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %24, align 4
  br label %313

236:                                              ; preds = %217
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %236
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %243 = load i32, i32* %21, align 4
  %244 = call i32 @gdTrueColorGetRed(i32 %243)
  %245 = load i32, i32* %21, align 4
  %246 = call i32 @gdTrueColorGetGreen(i32 %245)
  %247 = load i32, i32* %21, align 4
  %248 = call i32 @gdTrueColorGetBlue(i32 %247)
  %249 = load i32, i32* %21, align 4
  %250 = call i32 @gdTrueColorGetAlpha(i32 %249)
  %251 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_13__* %242, i32 %244, i32 %246, i32 %248, i32 %250)
  store i32 %251, i32* %34, align 4
  br label %289

252:                                              ; preds = %236
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %39, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %284

258:                                              ; preds = %252
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %261 = icmp eq %struct.TYPE_13__* %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* %21, align 4
  store i32 %263, i32* %33, align 4
  br label %279

264:                                              ; preds = %258
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %267 = load i32, i32* %21, align 4
  %268 = call i32 @gdImageRed(%struct.TYPE_13__* %266, i32 %267)
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %270 = load i32, i32* %21, align 4
  %271 = call i32 @gdImageGreen(%struct.TYPE_13__* %269, i32 %270)
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %273 = load i32, i32* %21, align 4
  %274 = call i32 @gdImageBlue(%struct.TYPE_13__* %272, i32 %273)
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %276 = load i32, i32* %21, align 4
  %277 = call i32 @gdImageAlpha(%struct.TYPE_13__* %275, i32 %276)
  %278 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_13__* %265, i32 %268, i32 %271, i32 %274, i32 %277)
  store i32 %278, i32* %33, align 4
  br label %279

279:                                              ; preds = %264, %262
  %280 = load i32, i32* %33, align 4
  %281 = load i32, i32* %21, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %39, i64 %282
  store i32 %280, i32* %283, align 4
  br label %284

284:                                              ; preds = %279, %252
  %285 = load i32, i32* %21, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %39, i64 %286
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %34, align 4
  br label %289

289:                                              ; preds = %284, %241
  br label %290

290:                                              ; preds = %289, %216
  store i32 0, i32* %27, align 4
  br label %291

291:                                              ; preds = %309, %290
  %292 = load i32, i32* %27, align 4
  %293 = load i32*, i32** %30, align 8
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* %15, align 4
  %296 = sub nsw i32 %294, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %293, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %292, %299
  br i1 %300, label %301, label %312

301:                                              ; preds = %291
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %303 = load i32, i32* %24, align 4
  %304 = load i32, i32* %25, align 4
  %305 = load i32, i32* %34, align 4
  %306 = call i32 @gdImageSetPixel(%struct.TYPE_13__* %302, i32 %303, i32 %304, i32 %305)
  %307 = load i32, i32* %24, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %24, align 4
  br label %309

309:                                              ; preds = %301
  %310 = load i32, i32* %27, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %27, align 4
  br label %291

312:                                              ; preds = %291
  br label %313

313:                                              ; preds = %312, %226, %205, %185, %161
  %314 = load i32, i32* %22, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %22, align 4
  br label %146

316:                                              ; preds = %146
  %317 = load i32, i32* %25, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %25, align 4
  br label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %26, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %26, align 4
  br label %133

322:                                              ; preds = %133
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %23, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %23, align 4
  br label %126

326:                                              ; preds = %126
  %327 = load i32*, i32** %30, align 8
  %328 = call i32 @gdFree(i32* %327)
  %329 = load i32*, i32** %31, align 8
  %330 = call i32 @gdFree(i32* %329)
  store i32 0, i32* %32, align 4
  br label %331

331:                                              ; preds = %326, %48, %43
  %332 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %32, align 4
  switch i32 %333, label %335 [
    i32 0, label %334
    i32 1, label %334
  ]

334:                                              ; preds = %331, %331
  ret void

335:                                              ; preds = %331
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @overflow2(i32, i32) #2

declare dso_local i64 @gdMalloc(i32) #2

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @gdImageGetTrueColorPixel(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @gdImageGetTransparent(%struct.TYPE_13__*) #2

declare dso_local i32 @gdImageColorResolveAlpha(%struct.TYPE_13__*, i32, i32, i32, i32) #2

declare dso_local i32 @gdTrueColorGetRed(i32) #2

declare dso_local i32 @gdTrueColorGetGreen(i32) #2

declare dso_local i32 @gdTrueColorGetBlue(i32) #2

declare dso_local i32 @gdTrueColorGetAlpha(i32) #2

declare dso_local i32 @gdImageRed(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @gdImageGreen(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @gdImageBlue(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @gdImageAlpha(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_13__*, i32, i32, i32) #2

declare dso_local i32 @gdFree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
