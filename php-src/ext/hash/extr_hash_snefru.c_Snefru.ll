; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_snefru.c_Snefru.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_snefru.c_Snefru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Snefru.shifts = internal global [4 x i32] [i32 16, i32 8, i32 16, i32 24], align 16
@tables = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Snefru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Snefru(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  store i32* %0, i32** %2, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 9
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %20, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 11
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %21, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %22, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 13
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %23, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 14
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %24, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 15
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %298, %1
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %301

77:                                               ; preds = %74
  %78 = load i32**, i32*** @tables, align 8
  %79 = load i32, i32* %4, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %80, 0
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %78, i64 %82
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %7, align 8
  %85 = load i32**, i32*** @tables, align 8
  %86 = load i32, i32* %4, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %85, i64 %89
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %8, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %294, %77
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %297

95:                                               ; preds = %92
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @round(i32 %96, i32 %97, i32 %98, i32* %99)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @round(i32 %101, i32 %102, i32 %103, i32* %104)
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @round(i32 %106, i32 %107, i32 %108, i32* %109)
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @round(i32 %111, i32 %112, i32 %113, i32* %114)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @round(i32 %116, i32 %117, i32 %118, i32* %119)
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @round(i32 %121, i32 %122, i32 %123, i32* %124)
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @round(i32 %126, i32 %127, i32 %128, i32* %129)
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @round(i32 %131, i32 %132, i32 %133, i32* %134)
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %19, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @round(i32 %136, i32 %137, i32 %138, i32* %139)
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @round(i32 %141, i32 %142, i32 %143, i32* %144)
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @round(i32 %146, i32 %147, i32 %148, i32* %149)
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @round(i32 %151, i32 %152, i32 %153, i32* %154)
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @round(i32 %156, i32 %157, i32 %158, i32* %159)
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %24, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @round(i32 %161, i32 %162, i32 %163, i32* %164)
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %25, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @round(i32 %166, i32 %167, i32 %168, i32* %169)
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @round(i32 %171, i32 %172, i32 %173, i32* %174)
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* @Snefru.shifts, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = sub nsw i32 32, %180
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %5, align 4
  %184 = ashr i32 %182, %183
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %6, align 4
  %187 = shl i32 %185, %186
  %188 = or i32 %184, %187
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %5, align 4
  %191 = ashr i32 %189, %190
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %6, align 4
  %194 = shl i32 %192, %193
  %195 = or i32 %191, %194
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %5, align 4
  %198 = ashr i32 %196, %197
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %6, align 4
  %201 = shl i32 %199, %200
  %202 = or i32 %198, %201
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %5, align 4
  %205 = ashr i32 %203, %204
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %6, align 4
  %208 = shl i32 %206, %207
  %209 = or i32 %205, %208
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %5, align 4
  %212 = ashr i32 %210, %211
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %6, align 4
  %215 = shl i32 %213, %214
  %216 = or i32 %212, %215
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %5, align 4
  %219 = ashr i32 %217, %218
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %6, align 4
  %222 = shl i32 %220, %221
  %223 = or i32 %219, %222
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %5, align 4
  %226 = ashr i32 %224, %225
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %6, align 4
  %229 = shl i32 %227, %228
  %230 = or i32 %226, %229
  store i32 %230, i32* %16, align 4
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %5, align 4
  %233 = ashr i32 %231, %232
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %6, align 4
  %236 = shl i32 %234, %235
  %237 = or i32 %233, %236
  store i32 %237, i32* %17, align 4
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* %5, align 4
  %240 = ashr i32 %238, %239
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %6, align 4
  %243 = shl i32 %241, %242
  %244 = or i32 %240, %243
  store i32 %244, i32* %18, align 4
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* %5, align 4
  %247 = ashr i32 %245, %246
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %6, align 4
  %250 = shl i32 %248, %249
  %251 = or i32 %247, %250
  store i32 %251, i32* %19, align 4
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %5, align 4
  %254 = ashr i32 %252, %253
  %255 = load i32, i32* %20, align 4
  %256 = load i32, i32* %6, align 4
  %257 = shl i32 %255, %256
  %258 = or i32 %254, %257
  store i32 %258, i32* %20, align 4
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %5, align 4
  %261 = ashr i32 %259, %260
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* %6, align 4
  %264 = shl i32 %262, %263
  %265 = or i32 %261, %264
  store i32 %265, i32* %21, align 4
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* %5, align 4
  %268 = ashr i32 %266, %267
  %269 = load i32, i32* %22, align 4
  %270 = load i32, i32* %6, align 4
  %271 = shl i32 %269, %270
  %272 = or i32 %268, %271
  store i32 %272, i32* %22, align 4
  %273 = load i32, i32* %23, align 4
  %274 = load i32, i32* %5, align 4
  %275 = ashr i32 %273, %274
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* %6, align 4
  %278 = shl i32 %276, %277
  %279 = or i32 %275, %278
  store i32 %279, i32* %23, align 4
  %280 = load i32, i32* %24, align 4
  %281 = load i32, i32* %5, align 4
  %282 = ashr i32 %280, %281
  %283 = load i32, i32* %24, align 4
  %284 = load i32, i32* %6, align 4
  %285 = shl i32 %283, %284
  %286 = or i32 %282, %285
  store i32 %286, i32* %24, align 4
  %287 = load i32, i32* %25, align 4
  %288 = load i32, i32* %5, align 4
  %289 = ashr i32 %287, %288
  %290 = load i32, i32* %25, align 4
  %291 = load i32, i32* %6, align 4
  %292 = shl i32 %290, %291
  %293 = or i32 %289, %292
  store i32 %293, i32* %25, align 4
  br label %294

294:                                              ; preds = %95
  %295 = load i32, i32* %3, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %3, align 4
  br label %92

297:                                              ; preds = %92
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %4, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %4, align 4
  br label %74

301:                                              ; preds = %74
  %302 = load i32, i32* %25, align 4
  %303 = load i32*, i32** %2, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = xor i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load i32, i32* %24, align 4
  %308 = load i32*, i32** %2, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  %310 = load i32, i32* %309, align 4
  %311 = xor i32 %310, %307
  store i32 %311, i32* %309, align 4
  %312 = load i32, i32* %23, align 4
  %313 = load i32*, i32** %2, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  %315 = load i32, i32* %314, align 4
  %316 = xor i32 %315, %312
  store i32 %316, i32* %314, align 4
  %317 = load i32, i32* %22, align 4
  %318 = load i32*, i32** %2, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 3
  %320 = load i32, i32* %319, align 4
  %321 = xor i32 %320, %317
  store i32 %321, i32* %319, align 4
  %322 = load i32, i32* %21, align 4
  %323 = load i32*, i32** %2, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 4
  %325 = load i32, i32* %324, align 4
  %326 = xor i32 %325, %322
  store i32 %326, i32* %324, align 4
  %327 = load i32, i32* %20, align 4
  %328 = load i32*, i32** %2, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 5
  %330 = load i32, i32* %329, align 4
  %331 = xor i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load i32, i32* %19, align 4
  %333 = load i32*, i32** %2, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 6
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* %18, align 4
  %338 = load i32*, i32** %2, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 7
  %340 = load i32, i32* %339, align 4
  %341 = xor i32 %340, %337
  store i32 %341, i32* %339, align 4
  ret void
}

declare dso_local i32 @round(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
