; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__v_prefilter.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__v_prefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBTT_MAX_OVERSAMPLE = common dso_local global i32 0, align 4
@STBTT__OVER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @stbtt__v_prefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__v_prefilter(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @STBTT_MAX_OVERSAMPLE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @STBTT_MAX_OVERSAMPLE, align 4
  %25 = call i32 @STBTT_memset(i8* %20, i32 0, i32 %24)
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %332, %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %335

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @STBTT_memset(i8* %20, i32 0, i32 %31)
  store i32 0, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %238 [
    i32 2, label %34
    i32 3, label %85
    i32 4, label %136
    i32 5, label %187
  ]

34:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %81, %34
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @STBTT__OVER_MASK, align 4
  %50 = and i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %20, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %47, %54
  %56 = load i32, i32* %16, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %16, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %65, %66
  %68 = load i32, i32* @STBTT__OVER_MASK, align 4
  %69 = and i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %20, i64 %70
  store i8 %64, i8* %71, align 1
  %72 = load i32, i32* %16, align 4
  %73 = udiv i32 %72, 2
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8 %74, i8* %80, align 1
  br label %81

81:                                               ; preds = %39
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %35

84:                                               ; preds = %35
  br label %290

85:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %132, %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @STBTT__OVER_MASK, align 4
  %101 = and i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %20, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = sub nsw i32 %98, %105
  %107 = load i32, i32* %16, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %16, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %116, %117
  %119 = load i32, i32* @STBTT__OVER_MASK, align 4
  %120 = and i32 %118, %119
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %20, i64 %121
  store i8 %115, i8* %122, align 1
  %123 = load i32, i32* %16, align 4
  %124 = udiv i32 %123, 3
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %9, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  store i8 %125, i8* %131, align 1
  br label %132

132:                                              ; preds = %90
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %86

135:                                              ; preds = %86
  br label %290

136:                                              ; preds = %30
  store i32 0, i32* %15, align 4
  br label %137

137:                                              ; preds = %183, %136
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %186

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %9, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @STBTT__OVER_MASK, align 4
  %152 = and i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %20, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %149, %156
  %158 = load i32, i32* %16, align 4
  %159 = add i32 %158, %157
  store i32 %159, i32* %16, align 4
  %160 = load i8*, i8** %6, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %160, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %167, %168
  %170 = load i32, i32* @STBTT__OVER_MASK, align 4
  %171 = and i32 %169, %170
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %20, i64 %172
  store i8 %166, i8* %173, align 1
  %174 = load i32, i32* %16, align 4
  %175 = udiv i32 %174, 4
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %9, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %177, i64 %181
  store i8 %176, i8* %182, align 1
  br label %183

183:                                              ; preds = %141
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %15, align 4
  br label %137

186:                                              ; preds = %137
  br label %290

187:                                              ; preds = %30
  store i32 0, i32* %15, align 4
  br label %188

188:                                              ; preds = %234, %187
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %13, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %237

192:                                              ; preds = %188
  %193 = load i8*, i8** %6, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @STBTT__OVER_MASK, align 4
  %203 = and i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %20, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = sub nsw i32 %200, %207
  %209 = load i32, i32* %16, align 4
  %210 = add i32 %209, %208
  store i32 %210, i32* %16, align 4
  %211 = load i8*, i8** %6, align 8
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %9, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %10, align 4
  %220 = add i32 %218, %219
  %221 = load i32, i32* @STBTT__OVER_MASK, align 4
  %222 = and i32 %220, %221
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %20, i64 %223
  store i8 %217, i8* %224, align 1
  %225 = load i32, i32* %16, align 4
  %226 = udiv i32 %225, 5
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %6, align 8
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* %9, align 4
  %231 = mul nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %228, i64 %232
  store i8 %227, i8* %233, align 1
  br label %234

234:                                              ; preds = %192
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %15, align 4
  br label %188

237:                                              ; preds = %188
  br label %290

238:                                              ; preds = %30
  store i32 0, i32* %15, align 4
  br label %239

239:                                              ; preds = %286, %238
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %289

243:                                              ; preds = %239
  %244 = load i8*, i8** %6, align 8
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* %9, align 4
  %247 = mul nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %244, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* @STBTT__OVER_MASK, align 4
  %254 = and i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %20, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = sub nsw i32 %251, %258
  %260 = load i32, i32* %16, align 4
  %261 = add i32 %260, %259
  store i32 %261, i32* %16, align 4
  %262 = load i8*, i8** %6, align 8
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %9, align 4
  %265 = mul nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %262, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* %10, align 4
  %271 = add i32 %269, %270
  %272 = load i32, i32* @STBTT__OVER_MASK, align 4
  %273 = and i32 %271, %272
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %20, i64 %274
  store i8 %268, i8* %275, align 1
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* %10, align 4
  %278 = udiv i32 %276, %277
  %279 = trunc i32 %278 to i8
  %280 = load i8*, i8** %6, align 8
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %9, align 4
  %283 = mul nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %280, i64 %284
  store i8 %279, i8* %285, align 1
  br label %286

286:                                              ; preds = %243
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %15, align 4
  br label %239

289:                                              ; preds = %239
  br label %290

290:                                              ; preds = %289, %237, %186, %135, %84
  br label %291

291:                                              ; preds = %326, %290
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %329

295:                                              ; preds = %291
  %296 = load i8*, i8** %6, align 8
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* %9, align 4
  %299 = mul nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %296, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = icmp eq i32 %303, 0
  %305 = zext i1 %304 to i32
  %306 = call i32 @STBTT_assert(i32 %305)
  %307 = load i32, i32* %15, align 4
  %308 = load i32, i32* @STBTT__OVER_MASK, align 4
  %309 = and i32 %307, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %20, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = load i32, i32* %16, align 4
  %315 = sub i32 %314, %313
  store i32 %315, i32* %16, align 4
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* %10, align 4
  %318 = udiv i32 %316, %317
  %319 = trunc i32 %318 to i8
  %320 = load i8*, i8** %6, align 8
  %321 = load i32, i32* %15, align 4
  %322 = load i32, i32* %9, align 4
  %323 = mul nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %320, i64 %324
  store i8 %319, i8* %325, align 1
  br label %326

326:                                              ; preds = %295
  %327 = load i32, i32* %15, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  br label %291

329:                                              ; preds = %291
  %330 = load i8*, i8** %6, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 1
  store i8* %331, i8** %6, align 8
  br label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %14, align 4
  br label %26

335:                                              ; preds = %26
  %336 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %336)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STBTT_memset(i8*, i32, i32) #2

declare dso_local i32 @STBTT_assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
