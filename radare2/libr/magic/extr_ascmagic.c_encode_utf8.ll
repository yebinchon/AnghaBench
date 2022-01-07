; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_encode_utf8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_encode_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i64, i32*, i64)* @encode_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @encode_utf8(i8** %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8** %14, i8*** %11, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %340, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %343

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 127
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load i8**, i8*** %11, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = ptrtoint i8** %26 to i64
  %29 = ptrtoint i8** %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = icmp slt i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i8** null, i8*** %5, align 8
  br label %345

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %6, align 8
  store i8* %40, i8** %41, align 8
  br label %339

43:                                               ; preds = %19
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 2047
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = load i8**, i8*** %11, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = ptrtoint i8** %50 to i64
  %53 = ptrtoint i8** %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = icmp slt i64 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i8** null, i8*** %5, align 8
  br label %345

58:                                               ; preds = %49
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 6
  %64 = add nsw i32 %63, 192
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %6, align 8
  store i8* %66, i8** %67, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 63
  %74 = add nsw i32 %73, 128
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8**, i8*** %6, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %6, align 8
  store i8* %76, i8** %77, align 8
  br label %338

79:                                               ; preds = %43
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 65535
  br i1 %84, label %85, label %126

85:                                               ; preds = %79
  %86 = load i8**, i8*** %11, align 8
  %87 = load i8**, i8*** %6, align 8
  %88 = ptrtoint i8** %86 to i64
  %89 = ptrtoint i8** %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = icmp slt i64 %91, 3
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i8** null, i8*** %5, align 8
  br label %345

94:                                               ; preds = %85
  %95 = load i32*, i32** %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 12
  %100 = add nsw i32 %99, 224
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8**, i8*** %6, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %6, align 8
  store i8* %102, i8** %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 6
  %110 = and i32 %109, 63
  %111 = add nsw i32 %110, 128
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8**, i8*** %6, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %6, align 8
  store i8* %113, i8** %114, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 63
  %121 = add nsw i32 %120, 128
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load i8**, i8*** %6, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %6, align 8
  store i8* %123, i8** %124, align 8
  br label %337

126:                                              ; preds = %79
  %127 = load i32*, i32** %8, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %130, 2097151
  br i1 %131, label %132, label %184

132:                                              ; preds = %126
  %133 = load i8**, i8*** %11, align 8
  %134 = load i8**, i8*** %6, align 8
  %135 = ptrtoint i8** %133 to i64
  %136 = ptrtoint i8** %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 8
  %139 = icmp slt i64 %138, 4
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i8** null, i8*** %5, align 8
  br label %345

141:                                              ; preds = %132
  %142 = load i32*, i32** %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 18
  %147 = add nsw i32 %146, 240
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load i8**, i8*** %6, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i32 1
  store i8** %151, i8*** %6, align 8
  store i8* %149, i8** %150, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 12
  %157 = and i32 %156, 63
  %158 = add nsw i32 %157, 128
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = load i8**, i8*** %6, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i32 1
  store i8** %162, i8*** %6, align 8
  store i8* %160, i8** %161, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %166, 6
  %168 = and i32 %167, 63
  %169 = add nsw i32 %168, 128
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = load i8**, i8*** %6, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %6, align 8
  store i8* %171, i8** %172, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load i64, i64* %10, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 63
  %179 = add nsw i32 %178, 128
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = load i8**, i8*** %6, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %6, align 8
  store i8* %181, i8** %182, align 8
  br label %336

184:                                              ; preds = %126
  %185 = load i32*, i32** %8, align 8
  %186 = load i64, i64* %10, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %188, 67108863
  br i1 %189, label %190, label %253

190:                                              ; preds = %184
  %191 = load i8**, i8*** %11, align 8
  %192 = load i8**, i8*** %6, align 8
  %193 = ptrtoint i8** %191 to i64
  %194 = ptrtoint i8** %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 8
  %197 = icmp slt i64 %196, 5
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  store i8** null, i8*** %5, align 8
  br label %345

199:                                              ; preds = %190
  %200 = load i32*, i32** %8, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 24
  %205 = add nsw i32 %204, 248
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = load i8**, i8*** %6, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i32 1
  store i8** %209, i8*** %6, align 8
  store i8* %207, i8** %208, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = load i64, i64* %10, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 18
  %215 = and i32 %214, 63
  %216 = add nsw i32 %215, 128
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = load i8**, i8*** %6, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i32 1
  store i8** %220, i8*** %6, align 8
  store i8* %218, i8** %219, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = load i64, i64* %10, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 12
  %226 = and i32 %225, 63
  %227 = add nsw i32 %226, 128
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = load i8**, i8*** %6, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i32 1
  store i8** %231, i8*** %6, align 8
  store i8* %229, i8** %230, align 8
  %232 = load i32*, i32** %8, align 8
  %233 = load i64, i64* %10, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %235, 6
  %237 = and i32 %236, 63
  %238 = add nsw i32 %237, 128
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = load i8**, i8*** %6, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i32 1
  store i8** %242, i8*** %6, align 8
  store i8* %240, i8** %241, align 8
  %243 = load i32*, i32** %8, align 8
  %244 = load i64, i64* %10, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 63
  %248 = add nsw i32 %247, 128
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = load i8**, i8*** %6, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i32 1
  store i8** %252, i8*** %6, align 8
  store i8* %250, i8** %251, align 8
  br label %335

253:                                              ; preds = %184
  %254 = load i32*, i32** %8, align 8
  %255 = load i64, i64* %10, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp sle i32 %257, 2147483647
  br i1 %258, label %259, label %333

259:                                              ; preds = %253
  %260 = load i8**, i8*** %11, align 8
  %261 = load i8**, i8*** %6, align 8
  %262 = ptrtoint i8** %260 to i64
  %263 = ptrtoint i8** %261 to i64
  %264 = sub i64 %262, %263
  %265 = sdiv exact i64 %264, 8
  %266 = icmp slt i64 %265, 6
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  store i8** null, i8*** %5, align 8
  br label %345

268:                                              ; preds = %259
  %269 = load i32*, i32** %8, align 8
  %270 = load i64, i64* %10, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = ashr i32 %272, 30
  %274 = add nsw i32 %273, 252
  %275 = sext i32 %274 to i64
  %276 = inttoptr i64 %275 to i8*
  %277 = load i8**, i8*** %6, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i32 1
  store i8** %278, i8*** %6, align 8
  store i8* %276, i8** %277, align 8
  %279 = load i32*, i32** %8, align 8
  %280 = load i64, i64* %10, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = ashr i32 %282, 24
  %284 = and i32 %283, 63
  %285 = add nsw i32 %284, 128
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = load i8**, i8*** %6, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i32 1
  store i8** %289, i8*** %6, align 8
  store i8* %287, i8** %288, align 8
  %290 = load i32*, i32** %8, align 8
  %291 = load i64, i64* %10, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = ashr i32 %293, 18
  %295 = and i32 %294, 63
  %296 = add nsw i32 %295, 128
  %297 = sext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  %299 = load i8**, i8*** %6, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i32 1
  store i8** %300, i8*** %6, align 8
  store i8* %298, i8** %299, align 8
  %301 = load i32*, i32** %8, align 8
  %302 = load i64, i64* %10, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = ashr i32 %304, 12
  %306 = and i32 %305, 63
  %307 = add nsw i32 %306, 128
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to i8*
  %310 = load i8**, i8*** %6, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i32 1
  store i8** %311, i8*** %6, align 8
  store i8* %309, i8** %310, align 8
  %312 = load i32*, i32** %8, align 8
  %313 = load i64, i64* %10, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = ashr i32 %315, 6
  %317 = and i32 %316, 63
  %318 = add nsw i32 %317, 128
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to i8*
  %321 = load i8**, i8*** %6, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i32 1
  store i8** %322, i8*** %6, align 8
  store i8* %320, i8** %321, align 8
  %323 = load i32*, i32** %8, align 8
  %324 = load i64, i64* %10, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = and i32 %326, 63
  %328 = add nsw i32 %327, 128
  %329 = sext i32 %328 to i64
  %330 = inttoptr i64 %329 to i8*
  %331 = load i8**, i8*** %6, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i32 1
  store i8** %332, i8*** %6, align 8
  store i8* %330, i8** %331, align 8
  br label %334

333:                                              ; preds = %253
  store i8** null, i8*** %5, align 8
  br label %345

334:                                              ; preds = %268
  br label %335

335:                                              ; preds = %334, %199
  br label %336

336:                                              ; preds = %335, %141
  br label %337

337:                                              ; preds = %336, %94
  br label %338

338:                                              ; preds = %337, %58
  br label %339

339:                                              ; preds = %338, %34
  br label %340

340:                                              ; preds = %339
  %341 = load i64, i64* %10, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %10, align 8
  br label %15

343:                                              ; preds = %15
  %344 = load i8**, i8*** %6, align 8
  store i8** %344, i8*** %5, align 8
  br label %345

345:                                              ; preds = %343, %333, %267, %198, %140, %93, %57, %33
  %346 = load i8**, i8*** %5, align 8
  ret i8** %346
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
