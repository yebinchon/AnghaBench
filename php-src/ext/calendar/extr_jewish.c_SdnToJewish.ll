; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_SdnToJewish.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_SdnToJewish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JEWISH_SDN_OFFSET = common dso_local global i64 0, align 8
@JEWISH_SDN_MAX = common dso_local global i64 0, align 8
@HALAKIM_PER_LUNAR_CYCLE = common dso_local global i64 0, align 8
@monthsPerYear = common dso_local global i64* null, align 8
@HALAKIM_PER_DAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SdnToJewish(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @JEWISH_SDN_OFFSET, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @JEWISH_SDN_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %4
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 0, i32* %27, align 4
  br label %331

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @JEWISH_SDN_OFFSET, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @FindTishriMolad(i64 %32, i32* %12, i32* %13, i64* %10, i64* %11)
  %34 = load i32, i32* %13, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @Tishri1(i32 %34, i64 %35, i64 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sge i64 %38, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  %44 = mul nsw i32 %43, 19
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 59
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %42
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 30
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  store i32 1, i32* %61, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = add nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %78

69:                                               ; preds = %54
  %70 = load i32*, i32** %7, align 8
  store i32 2, i32* %70, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  %75 = sub nsw i64 %74, 29
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %60
  br label %331

79:                                               ; preds = %42
  %80 = load i64, i64* @HALAKIM_PER_LUNAR_CYCLE, align 8
  %81 = load i64*, i64** @monthsPerYear, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = mul nsw i64 %80, %85
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @HALAKIM_PER_DAY, align 8
  %91 = sdiv i64 %89, %90
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @HALAKIM_PER_DAY, align 8
  %96 = srem i64 %94, %95
  store i64 %96, i64* %11, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  %99 = srem i32 %98, 19
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @Tishri1(i32 %99, i64 %100, i64 %101)
  store i32 %102, i32* %15, align 4
  br label %290

103:                                              ; preds = %28
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %104, 19
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32*, i32** %6, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i64, i64* %9, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %110, 177
  %112 = sext i32 %111 to i64
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %203

114:                                              ; preds = %103
  %115 = load i64, i64* %9, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %116, 30
  %118 = sext i32 %117 to i64
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32*, i32** %7, align 8
  store i32 13, i32* %121, align 4
  %122 = load i64, i64* %9, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %122, %124
  %126 = add nsw i64 %125, 30
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  br label %202

129:                                              ; preds = %114
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %131, 60
  %133 = sext i32 %132 to i64
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load i32*, i32** %7, align 8
  store i32 12, i32* %136, align 4
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %137, %139
  %141 = add nsw i64 %140, 60
  %142 = trunc i64 %141 to i32
  %143 = load i32*, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  br label %201

144:                                              ; preds = %129
  %145 = load i64, i64* %9, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %146, 89
  %148 = sext i32 %147 to i64
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load i32*, i32** %7, align 8
  store i32 11, i32* %151, align 4
  %152 = load i64, i64* %9, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %152, %154
  %156 = add nsw i64 %155, 89
  %157 = trunc i64 %156 to i32
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  br label %200

159:                                              ; preds = %144
  %160 = load i64, i64* %9, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sub nsw i32 %161, 119
  %163 = sext i32 %162 to i64
  %164 = icmp sgt i64 %160, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load i32*, i32** %7, align 8
  store i32 10, i32* %166, align 4
  %167 = load i64, i64* %9, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %167, %169
  %171 = add nsw i64 %170, 119
  %172 = trunc i64 %171 to i32
  %173 = load i32*, i32** %8, align 8
  store i32 %172, i32* %173, align 4
  br label %199

174:                                              ; preds = %159
  %175 = load i64, i64* %9, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %176, 148
  %178 = sext i32 %177 to i64
  %179 = icmp sgt i64 %175, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %174
  %181 = load i32*, i32** %7, align 8
  store i32 9, i32* %181, align 4
  %182 = load i64, i64* %9, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %182, %184
  %186 = add nsw i64 %185, 148
  %187 = trunc i64 %186 to i32
  %188 = load i32*, i32** %8, align 8
  store i32 %187, i32* %188, align 4
  br label %198

189:                                              ; preds = %174
  %190 = load i32*, i32** %7, align 8
  store i32 8, i32* %190, align 4
  %191 = load i64, i64* %9, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = sub nsw i64 %191, %193
  %195 = add nsw i64 %194, 178
  %196 = trunc i64 %195 to i32
  %197 = load i32*, i32** %8, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %189, %180
  br label %199

199:                                              ; preds = %198, %165
  br label %200

200:                                              ; preds = %199, %150
  br label %201

201:                                              ; preds = %200, %135
  br label %202

202:                                              ; preds = %201, %120
  br label %331

203:                                              ; preds = %103
  %204 = load i64*, i64** @monthsPerYear, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = srem i32 %207, 19
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %204, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 13
  br i1 %212, label %213, label %244

213:                                              ; preds = %203
  %214 = load i32*, i32** %7, align 8
  store i32 7, i32* %214, align 4
  %215 = load i64, i64* %9, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = sub nsw i64 %215, %217
  %219 = add nsw i64 %218, 207
  %220 = trunc i64 %219 to i32
  %221 = load i32*, i32** %8, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %213
  br label %331

226:                                              ; preds = %213
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %227, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 30
  store i32 %232, i32* %230, align 4
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* %233, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  br label %331

237:                                              ; preds = %226
  %238 = load i32*, i32** %7, align 8
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %238, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 30
  store i32 %243, i32* %241, align 4
  br label %264

244:                                              ; preds = %203
  %245 = load i32*, i32** %7, align 8
  store i32 7, i32* %245, align 4
  %246 = load i64, i64* %9, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = sub nsw i64 %246, %248
  %250 = add nsw i64 %249, 207
  %251 = trunc i64 %250 to i32
  %252 = load i32*, i32** %8, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i32*, i32** %8, align 8
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  br label %331

257:                                              ; preds = %244
  %258 = load i32*, i32** %7, align 8
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %259, 2
  store i32 %260, i32* %258, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 30
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %257, %237
  %265 = load i32*, i32** %8, align 8
  %266 = load i32, i32* %265, align 4
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  br label %331

269:                                              ; preds = %264
  %270 = load i32*, i32** %7, align 8
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %270, align 4
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 29
  store i32 %275, i32* %273, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %269
  br label %331

280:                                              ; preds = %269
  %281 = load i32, i32* %14, align 4
  store i32 %281, i32* %15, align 4
  %282 = load i64, i64* %10, align 8
  %283 = sub nsw i64 %282, 365
  %284 = call i32 @FindTishriMolad(i64 %283, i32* %12, i32* %13, i64* %10, i64* %11)
  %285 = load i32, i32* %13, align 4
  %286 = load i64, i64* %10, align 8
  %287 = load i64, i64* %11, align 8
  %288 = call i32 @Tishri1(i32 %285, i64 %286, i64 %287)
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %280
  br label %290

290:                                              ; preds = %289, %79
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %14, align 4
  %293 = sub nsw i32 %291, %292
  store i32 %293, i32* %16, align 4
  %294 = load i64, i64* %9, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = sub nsw i64 %294, %296
  %298 = sub nsw i64 %297, 29
  store i64 %298, i64* %10, align 8
  %299 = load i32, i32* %16, align 4
  %300 = icmp eq i32 %299, 355
  br i1 %300, label %304, label %301

301:                                              ; preds = %290
  %302 = load i32, i32* %16, align 4
  %303 = icmp eq i32 %302, 385
  br i1 %303, label %304, label %315

304:                                              ; preds = %301, %290
  %305 = load i64, i64* %10, align 8
  %306 = icmp sle i64 %305, 30
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = load i32*, i32** %7, align 8
  store i32 2, i32* %308, align 4
  %309 = load i64, i64* %10, align 8
  %310 = trunc i64 %309 to i32
  %311 = load i32*, i32** %8, align 8
  store i32 %310, i32* %311, align 4
  br label %331

312:                                              ; preds = %304
  %313 = load i64, i64* %10, align 8
  %314 = sub nsw i64 %313, 30
  store i64 %314, i64* %10, align 8
  br label %326

315:                                              ; preds = %301
  %316 = load i64, i64* %10, align 8
  %317 = icmp sle i64 %316, 29
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i32*, i32** %7, align 8
  store i32 2, i32* %319, align 4
  %320 = load i64, i64* %10, align 8
  %321 = trunc i64 %320 to i32
  %322 = load i32*, i32** %8, align 8
  store i32 %321, i32* %322, align 4
  br label %331

323:                                              ; preds = %315
  %324 = load i64, i64* %10, align 8
  %325 = sub nsw i64 %324, 29
  store i64 %325, i64* %10, align 8
  br label %326

326:                                              ; preds = %323, %312
  %327 = load i32*, i32** %7, align 8
  store i32 3, i32* %327, align 4
  %328 = load i64, i64* %10, align 8
  %329 = trunc i64 %328 to i32
  %330 = load i32*, i32** %8, align 8
  store i32 %329, i32* %330, align 4
  br label %331

331:                                              ; preds = %326, %318, %307, %279, %268, %256, %236, %225, %202, %78, %24
  ret void
}

declare dso_local i32 @FindTishriMolad(i64, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @Tishri1(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
