; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_hashfn.c_hash_any_extended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_hashfn.c_hash_any_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_ALIGN_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_any_extended(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = add i32 -1640531527, %14
  %16 = add i32 %15, 3923095
  store i32 %16, i32* %10, align 4
  store i32 %16, i32* %9, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 32
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @mix(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %3
  %32 = load i8*, i8** %5, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64, i64* @UINT32_ALIGN_MASK, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %159

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %12, align 8
  br label %40

40:                                               ; preds = %43, %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp sge i32 %41, 12
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @mix(i32 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32* %64, i32** %12, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 12
  store i32 %66, i32* %11, align 4
  br label %40

67:                                               ; preds = %40
  %68 = load i32*, i32** %12, align 8
  %69 = bitcast i32* %68 to i8*
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* %11, align 4
  switch i32 %70, label %158 [
    i32 11, label %71
    i32 10, label %79
    i32 9, label %87
    i32 8, label %95
    i32 7, label %106
    i32 6, label %114
    i32 5, label %122
    i32 4, label %129
    i32 3, label %135
    i32 2, label %143
    i32 1, label %151
  ]

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 10
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 24
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %67, %71
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 9
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 16
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %67, %79
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %67, %87
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %158

106:                                              ; preds = %67
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 6
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %67, %106
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 5
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %67, %114
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %67, %122
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %158

135:                                              ; preds = %67
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %139, 16
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %67, %135
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %67, %143
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %151, %67, %129, %95
  br label %333

159:                                              ; preds = %31
  br label %160

160:                                              ; preds = %163, %159
  %161 = load i32, i32* %11, align 4
  %162 = icmp sge i32 %161, 12
  br i1 %162, label %163, label %244

163:                                              ; preds = %160
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl i32 %171, 8
  %173 = add nsw i32 %167, %172
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 2
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 16
  %179 = add nsw i32 %173, %178
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl i32 %183, 24
  %185 = add nsw i32 %179, %184
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %8, align 4
  %188 = load i8*, i8** %5, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 4
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 5
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = shl i32 %195, 8
  %197 = add nsw i32 %191, %196
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 6
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = shl i32 %201, 16
  %203 = add nsw i32 %197, %202
  %204 = load i8*, i8** %5, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 7
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = shl i32 %207, 24
  %209 = add nsw i32 %203, %208
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %9, align 4
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 8
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 9
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = shl i32 %219, 8
  %221 = add nsw i32 %215, %220
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 10
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %225, 16
  %227 = add nsw i32 %221, %226
  %228 = load i8*, i8** %5, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 11
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = shl i32 %231, 24
  %233 = add nsw i32 %227, %232
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @mix(i32 %236, i32 %237, i32 %238)
  %240 = load i8*, i8** %5, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 12
  store i8* %241, i8** %5, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sub nsw i32 %242, 12
  store i32 %243, i32* %11, align 4
  br label %160

244:                                              ; preds = %160
  %245 = load i32, i32* %11, align 4
  switch i32 %245, label %332 [
    i32 11, label %246
    i32 10, label %254
    i32 9, label %262
    i32 8, label %270
    i32 7, label %278
    i32 6, label %286
    i32 5, label %294
    i32 4, label %301
    i32 3, label %309
    i32 2, label %317
    i32 1, label %325
  ]

246:                                              ; preds = %244
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 10
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = shl i32 %250, 24
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %10, align 4
  br label %254

254:                                              ; preds = %244, %246
  %255 = load i8*, i8** %5, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 9
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = shl i32 %258, 16
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %10, align 4
  br label %262

262:                                              ; preds = %244, %254
  %263 = load i8*, i8** %5, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 8
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = shl i32 %266, 8
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %10, align 4
  br label %270

270:                                              ; preds = %244, %262
  %271 = load i8*, i8** %5, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 7
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = shl i32 %274, 24
  %276 = load i32, i32* %9, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %9, align 4
  br label %278

278:                                              ; preds = %244, %270
  %279 = load i8*, i8** %5, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 6
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = shl i32 %282, 16
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %9, align 4
  br label %286

286:                                              ; preds = %244, %278
  %287 = load i8*, i8** %5, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 5
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = shl i32 %290, 8
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %9, align 4
  br label %294

294:                                              ; preds = %244, %286
  %295 = load i8*, i8** %5, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 4
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %9, align 4
  br label %301

301:                                              ; preds = %244, %294
  %302 = load i8*, i8** %5, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 3
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = shl i32 %305, 24
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %8, align 4
  br label %309

309:                                              ; preds = %244, %301
  %310 = load i8*, i8** %5, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 2
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = shl i32 %313, 16
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %8, align 4
  br label %317

317:                                              ; preds = %244, %309
  %318 = load i8*, i8** %5, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 1
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = shl i32 %321, 8
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %244, %317
  %326 = load i8*, i8** %5, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 0
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = load i32, i32* %8, align 4
  %331 = add nsw i32 %330, %329
  store i32 %331, i32* %8, align 4
  br label %332

332:                                              ; preds = %325, %244
  br label %333

333:                                              ; preds = %332, %158
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @final(i32 %334, i32 %335, i32 %336)
  %338 = load i32, i32* %9, align 4
  %339 = shl i32 %338, 32
  %340 = load i32, i32* %10, align 4
  %341 = or i32 %339, %340
  %342 = call i32 @PG_RETURN_UINT64(i32 %341)
  %343 = load i32, i32* %4, align 4
  ret i32 %343
}

declare dso_local i32 @mix(i32, i32, i32) #1

declare dso_local i32 @final(i32, i32, i32) #1

declare dso_local i32 @PG_RETURN_UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
