; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_hashfn.c_hash_any.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_hashfn.c_hash_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_ALIGN_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_any(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add i32 -1640531527, %11
  %13 = add i32 %12, 3923095
  store i32 %13, i32* %7, align 4
  store i32 %13, i32* %6, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* @UINT32_ALIGN_MASK, align 8
  %17 = and i64 %15, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %141

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 12
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mix(i32 %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32* %46, i32** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 12
  store i32 %48, i32* %8, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load i32*, i32** %9, align 8
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %3, align 8
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %140 [
    i32 11, label %53
    i32 10, label %61
    i32 9, label %69
    i32 8, label %77
    i32 7, label %88
    i32 6, label %96
    i32 5, label %104
    i32 4, label %111
    i32 3, label %117
    i32 2, label %125
    i32 1, label %133
  ]

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 10
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 24
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %49, %53
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 9
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %49, %61
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %49, %69
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %140

88:                                               ; preds = %49
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 6
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %49, %88
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 5
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 %100, 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %49, %96
  %105 = load i8*, i8** %3, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %49, %104
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %140

117:                                              ; preds = %49
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %121, 16
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %49, %117
  %126 = load i8*, i8** %3, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %49, %125
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %133, %49, %111, %77
  br label %315

141:                                              ; preds = %2
  br label %142

142:                                              ; preds = %145, %141
  %143 = load i32, i32* %8, align 4
  %144 = icmp sge i32 %143, 12
  br i1 %144, label %145, label %226

145:                                              ; preds = %142
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8*, i8** %3, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl i32 %153, 8
  %155 = add nsw i32 %149, %154
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl i32 %159, 16
  %161 = add nsw i32 %155, %160
  %162 = load i8*, i8** %3, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 3
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl i32 %165, 24
  %167 = add nsw i32 %161, %166
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %5, align 4
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 4
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8*, i8** %3, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 5
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 8
  %179 = add nsw i32 %173, %178
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 6
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl i32 %183, 16
  %185 = add nsw i32 %179, %184
  %186 = load i8*, i8** %3, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 7
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = shl i32 %189, 24
  %191 = add nsw i32 %185, %190
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %6, align 4
  %194 = load i8*, i8** %3, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8*, i8** %3, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 9
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = shl i32 %201, 8
  %203 = add nsw i32 %197, %202
  %204 = load i8*, i8** %3, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 10
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = shl i32 %207, 16
  %209 = add nsw i32 %203, %208
  %210 = load i8*, i8** %3, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 11
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = shl i32 %213, 24
  %215 = add nsw i32 %209, %214
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @mix(i32 %218, i32 %219, i32 %220)
  %222 = load i8*, i8** %3, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 12
  store i8* %223, i8** %3, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sub nsw i32 %224, 12
  store i32 %225, i32* %8, align 4
  br label %142

226:                                              ; preds = %142
  %227 = load i32, i32* %8, align 4
  switch i32 %227, label %314 [
    i32 11, label %228
    i32 10, label %236
    i32 9, label %244
    i32 8, label %252
    i32 7, label %260
    i32 6, label %268
    i32 5, label %276
    i32 4, label %283
    i32 3, label %291
    i32 2, label %299
    i32 1, label %307
  ]

228:                                              ; preds = %226
  %229 = load i8*, i8** %3, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 10
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, 24
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %226, %228
  %237 = load i8*, i8** %3, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 9
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = shl i32 %240, 16
  %242 = load i32, i32* %7, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %226, %236
  %245 = load i8*, i8** %3, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 8
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = shl i32 %248, 8
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %226, %244
  %253 = load i8*, i8** %3, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 7
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = shl i32 %256, 24
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %6, align 4
  br label %260

260:                                              ; preds = %226, %252
  %261 = load i8*, i8** %3, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 6
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = shl i32 %264, 16
  %266 = load i32, i32* %6, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %6, align 4
  br label %268

268:                                              ; preds = %226, %260
  %269 = load i8*, i8** %3, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 5
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = shl i32 %272, 8
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %6, align 4
  br label %276

276:                                              ; preds = %226, %268
  %277 = load i8*, i8** %3, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 4
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %6, align 4
  br label %283

283:                                              ; preds = %226, %276
  %284 = load i8*, i8** %3, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 3
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = shl i32 %287, 24
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %226, %283
  %292 = load i8*, i8** %3, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 2
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl i32 %295, 16
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %5, align 4
  br label %299

299:                                              ; preds = %226, %291
  %300 = load i8*, i8** %3, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 1
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = shl i32 %303, 8
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %226, %299
  %308 = load i8*, i8** %3, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 0
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = load i32, i32* %5, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %5, align 4
  br label %314

314:                                              ; preds = %307, %226
  br label %315

315:                                              ; preds = %314, %140
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @final(i32 %316, i32 %317, i32 %318)
  %320 = load i32, i32* %7, align 4
  %321 = call i32 @UInt32GetDatum(i32 %320)
  ret i32 %321
}

declare dso_local i32 @mix(i32, i32, i32) #1

declare dso_local i32 @final(i32, i32, i32) #1

declare dso_local i32 @UInt32GetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
