; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_yuvjpeg.c_extend_edge.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_yuvjpeg.c_extend_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extend_edge(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %50, %8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %18, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %17, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %29, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %18, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %38, i64 %44
  store i8 %37, i8* %45, align 1
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %17, align 4
  br label %24

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  br label %19

53:                                               ; preds = %19
  store i32 0, i32* %18, align 4
  br label %54

54:                                               ; preds = %125, %53
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %128

58:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %121, %58
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %124

63:                                               ; preds = %59
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 %68, %69
  %71 = add nsw i32 %67, %70
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %64, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = sdiv i32 %81, 2
  %83 = load i32, i32* %18, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %80, %84
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %77, i64 %88
  store i8 %76, i8* %89, align 1
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %95, %96
  %98 = mul nsw i32 %94, %97
  %99 = add nsw i32 %93, %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %90, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = sdiv i32 %109, 2
  %111 = load i32, i32* %11, align 4
  %112 = sdiv i32 %111, 2
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %112, %113
  %115 = mul nsw i32 %110, %114
  %116 = add nsw i32 %108, %115
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %105, i64 %119
  store i8 %104, i8* %120, align 1
  br label %121

121:                                              ; preds = %63
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %59

124:                                              ; preds = %59
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %18, align 4
  br label %54

128:                                              ; preds = %54
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %162, %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %158, %133
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %18, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %17, align 4
  %145 = sub nsw i32 %144, 1
  %146 = add nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %140, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %18, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %150, i64 %156
  store i8 %149, i8* %157, align 1
  br label %158

158:                                              ; preds = %139
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %135

161:                                              ; preds = %135
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %18, align 4
  br label %129

165:                                              ; preds = %129
  store i32 0, i32* %18, align 4
  br label %166

166:                                              ; preds = %244, %165
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %247

170:                                              ; preds = %166
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %17, align 4
  br label %172

172:                                              ; preds = %240, %170
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %10, align 4
  %175 = sdiv i32 %174, 2
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %243

177:                                              ; preds = %172
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %10, align 4
  %183 = sdiv i32 %182, 2
  %184 = load i32, i32* %18, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %181, %185
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 %187, 1
  %189 = add nsw i32 %186, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %178, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %11, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %10, align 4
  %198 = sdiv i32 %197, 2
  %199 = load i32, i32* %18, align 4
  %200 = mul nsw i32 %198, %199
  %201 = add nsw i32 %196, %200
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %193, i64 %204
  store i8 %192, i8* %205, align 1
  %206 = load i8*, i8** %9, align 8
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %11, align 4
  %209 = mul nsw i32 %207, %208
  %210 = load i32, i32* %10, align 4
  %211 = sdiv i32 %210, 2
  %212 = load i32, i32* %11, align 4
  %213 = sdiv i32 %212, 2
  %214 = load i32, i32* %18, align 4
  %215 = add nsw i32 %213, %214
  %216 = mul nsw i32 %211, %215
  %217 = add nsw i32 %209, %216
  %218 = load i32, i32* %17, align 4
  %219 = sub nsw i32 %218, 1
  %220 = add nsw i32 %217, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %206, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = load i8*, i8** %9, align 8
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %11, align 4
  %227 = mul nsw i32 %225, %226
  %228 = load i32, i32* %10, align 4
  %229 = sdiv i32 %228, 2
  %230 = load i32, i32* %11, align 4
  %231 = sdiv i32 %230, 2
  %232 = load i32, i32* %18, align 4
  %233 = add nsw i32 %231, %232
  %234 = mul nsw i32 %229, %233
  %235 = add nsw i32 %227, %234
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %224, i64 %238
  store i8 %223, i8* %239, align 1
  br label %240

240:                                              ; preds = %177
  %241 = load i32, i32* %17, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %17, align 4
  br label %172

243:                                              ; preds = %172
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %18, align 4
  br label %166

247:                                              ; preds = %166
  store i32 0, i32* %17, align 4
  br label %248

248:                                              ; preds = %281, %247
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %284

252:                                              ; preds = %248
  %253 = load i32, i32* %14, align 4
  store i32 %253, i32* %18, align 4
  br label %254

254:                                              ; preds = %277, %252
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %280

258:                                              ; preds = %254
  %259 = load i8*, i8** %9, align 8
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %18, align 4
  %262 = sub nsw i32 %261, 1
  %263 = mul nsw i32 %260, %262
  %264 = load i32, i32* %17, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %259, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = load i8*, i8** %9, align 8
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %18, align 4
  %272 = mul nsw i32 %270, %271
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %269, i64 %275
  store i8 %268, i8* %276, align 1
  br label %277

277:                                              ; preds = %258
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %254

280:                                              ; preds = %254
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %17, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %17, align 4
  br label %248

284:                                              ; preds = %248
  store i32 0, i32* %17, align 4
  br label %285

285:                                              ; preds = %364, %284
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %10, align 4
  %288 = sdiv i32 %287, 2
  %289 = icmp slt i32 %286, %288
  br i1 %289, label %290, label %367

290:                                              ; preds = %285
  %291 = load i32, i32* %16, align 4
  store i32 %291, i32* %18, align 4
  br label %292

292:                                              ; preds = %360, %290
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %11, align 4
  %295 = sdiv i32 %294, 2
  %296 = icmp slt i32 %293, %295
  br i1 %296, label %297, label %363

297:                                              ; preds = %292
  %298 = load i8*, i8** %9, align 8
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %11, align 4
  %301 = mul nsw i32 %299, %300
  %302 = load i32, i32* %10, align 4
  %303 = sdiv i32 %302, 2
  %304 = load i32, i32* %18, align 4
  %305 = sub nsw i32 %304, 1
  %306 = mul nsw i32 %303, %305
  %307 = add nsw i32 %301, %306
  %308 = load i32, i32* %17, align 4
  %309 = add nsw i32 %307, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %298, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = load i8*, i8** %9, align 8
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %11, align 4
  %316 = mul nsw i32 %314, %315
  %317 = load i32, i32* %10, align 4
  %318 = sdiv i32 %317, 2
  %319 = load i32, i32* %18, align 4
  %320 = mul nsw i32 %318, %319
  %321 = add nsw i32 %316, %320
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %313, i64 %324
  store i8 %312, i8* %325, align 1
  %326 = load i8*, i8** %9, align 8
  %327 = load i32, i32* %10, align 4
  %328 = load i32, i32* %11, align 4
  %329 = mul nsw i32 %327, %328
  %330 = load i32, i32* %10, align 4
  %331 = sdiv i32 %330, 2
  %332 = load i32, i32* %11, align 4
  %333 = sdiv i32 %332, 2
  %334 = load i32, i32* %18, align 4
  %335 = sub nsw i32 %334, 1
  %336 = add nsw i32 %333, %335
  %337 = mul nsw i32 %331, %336
  %338 = add nsw i32 %329, %337
  %339 = load i32, i32* %17, align 4
  %340 = add nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %326, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = load i8*, i8** %9, align 8
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* %11, align 4
  %347 = mul nsw i32 %345, %346
  %348 = load i32, i32* %10, align 4
  %349 = sdiv i32 %348, 2
  %350 = load i32, i32* %11, align 4
  %351 = sdiv i32 %350, 2
  %352 = load i32, i32* %18, align 4
  %353 = add nsw i32 %351, %352
  %354 = mul nsw i32 %349, %353
  %355 = add nsw i32 %347, %354
  %356 = load i32, i32* %17, align 4
  %357 = add nsw i32 %355, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %344, i64 %358
  store i8 %343, i8* %359, align 1
  br label %360

360:                                              ; preds = %297
  %361 = load i32, i32* %18, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %18, align 4
  br label %292

363:                                              ; preds = %292
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %17, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %17, align 4
  br label %285

367:                                              ; preds = %285
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
