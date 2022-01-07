; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpDivide.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpDivide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIBITMASK = common dso_local global i32 0, align 4
@BITS_PER_DIGIT = common dso_local global i32 0, align 4
@MAX_DIGIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*, i32)* @mpDivide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpDivide(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
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
  %24 = alloca [2 x i32], align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mpSetZero(i32* %27, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @mpSetZero(i32* %30, i32 %31)
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @mpSizeof(i32* %33, i32 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @mpSizeof(i32* %37, i32 %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %322

47:                                               ; preds = %6
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mpShortDiv(i32* %51, i32* %52, i32 %55, i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %7, align 4
  br label %322

60:                                               ; preds = %47
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @mpSetEqual(i32* %64, i32* %65, i32 %66)
  store i32 0, i32* %7, align 4
  br label %322

68:                                               ; preds = %60
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @mpCompare(i32* %72, i32* %73, i32 %74)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @mpSetEqual(i32* %79, i32* %80, i32 %81)
  store i32 0, i32* %7, align 4
  br label %322

83:                                               ; preds = %71
  %84 = load i32, i32* %19, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @mpSetDigit(i32* %87, i32 1, i32 %88)
  store i32 0, i32* %7, align 4
  br label %322

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32, i32* @HIBITMASK, align 4
  store i32 %93, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %112, %92
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @BITS_PER_DIGIT, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %20, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %115

109:                                              ; preds = %98
  %110 = load i32, i32* %20, align 4
  %111 = ashr i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %94

115:                                              ; preds = %108, %94
  %116 = load i32*, i32** %12, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @mpShiftLeft(i32* %116, i32* %117, i32 %118, i32 %119)
  store i32 %120, i32* %21, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @mpShiftLeft(i32* %121, i32* %122, i32 %123, i32 %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32*, i32** %9, align 8
  store i32* %128, i32** %25, align 8
  %129 = load i32, i32* %21, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %292, %115
  %133 = load i32, i32* %17, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %295

135:                                              ; preds = %132
  store i32 0, i32* %18, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 %137, i32* %138, align 4
  %139 = load i32*, i32** %25, align 8
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %140, %141
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @spDivide(i32* %22, i32* %23, i32* %148, i32 %154)
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %21, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %135
  %159 = load i32, i32* @MAX_DIGIT, align 4
  store i32 %159, i32* %22, align 4
  %160 = load i32*, i32** %25, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %161, %162
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %23, align 4
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %23, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %23, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %176, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %158
  store i32 1, i32* %18, align 4
  br label %185

185:                                              ; preds = %184, %158
  br label %186

186:                                              ; preds = %185, %135
  %187 = load i32, i32* %18, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %251, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* %23, align 4
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sub nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %25, align 8
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %199, %200
  %202 = sub nsw i32 %201, 2
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %198, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @QhatTooBig(i32 %190, i32 %191, i32 %197, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %251

208:                                              ; preds = %189
  %209 = load i32, i32* %22, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %22, align 4
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %23, align 4
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %219, %225
  br i1 %226, label %250, label %227

227:                                              ; preds = %208
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32*, i32** %12, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sub nsw i32 %231, 2
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %25, align 8
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %237, %238
  %240 = sub nsw i32 %239, 2
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @QhatTooBig(i32 %228, i32 %229, i32 %235, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %227
  %247 = load i32, i32* %22, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %22, align 4
  br label %249

249:                                              ; preds = %246, %227
  br label %250

250:                                              ; preds = %249, %208
  br label %251

251:                                              ; preds = %250, %189, %186
  %252 = load i32*, i32** %25, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32* %255, i32** %26, align 8
  %256 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %26, align 8
  %259 = load i32*, i32** %12, align 8
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @mpMultSub(i32 %257, i32* %258, i32* %259, i32 %260, i32 %261)
  store i32 %262, i32* %21, align 4
  %263 = load i32, i32* %22, align 4
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %17, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  store i32 %263, i32* %267, align 4
  %268 = load i32, i32* %21, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %251
  %271 = load i32*, i32** %8, align 8
  %272 = load i32, i32* %17, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %274, align 4
  %277 = load i32*, i32** %26, align 8
  %278 = load i32*, i32** %26, align 8
  %279 = load i32*, i32** %12, align 8
  %280 = load i32, i32* %15, align 4
  %281 = call i32 @mpAdd(i32* %277, i32* %278, i32* %279, i32 %280)
  store i32 %281, i32* %21, align 4
  br label %282

282:                                              ; preds = %270, %251
  %283 = load i32*, i32** %25, align 8
  %284 = load i32, i32* %17, align 4
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %284, %285
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %283, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %290, i32* %291, align 4
  br label %292

292:                                              ; preds = %282
  %293 = load i32, i32* %17, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %17, align 4
  br label %132

295:                                              ; preds = %132
  %296 = load i32, i32* %15, align 4
  store i32 %296, i32* %17, align 4
  br label %297

297:                                              ; preds = %308, %295
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %15, align 4
  %301 = add nsw i32 %299, %300
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %297
  %304 = load i32*, i32** %25, align 8
  %305 = load i32, i32* %17, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 0, i32* %307, align 4
  br label %308

308:                                              ; preds = %303
  %309 = load i32, i32* %17, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %17, align 4
  br label %297

311:                                              ; preds = %297
  %312 = load i32*, i32** %9, align 8
  %313 = load i32*, i32** %9, align 8
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @mpShiftRight(i32* %312, i32* %313, i32 %314, i32 %315)
  %317 = load i32*, i32** %12, align 8
  %318 = load i32*, i32** %12, align 8
  %319 = load i32, i32* %14, align 4
  %320 = load i32, i32* %15, align 4
  %321 = call i32 @mpShiftRight(i32* %317, i32* %318, i32 %319, i32 %320)
  store i32 0, i32* %7, align 4
  br label %322

322:                                              ; preds = %311, %86, %78, %63, %50, %46
  %323 = load i32, i32* %7, align 4
  ret i32 %323
}

declare dso_local i32 @mpSetZero(i32*, i32) #1

declare dso_local i64 @mpSizeof(i32*, i32) #1

declare dso_local i32 @mpShortDiv(i32*, i32*, i32, i32) #1

declare dso_local i32 @mpSetEqual(i32*, i32*, i32) #1

declare dso_local i32 @mpCompare(i32*, i32*, i32) #1

declare dso_local i32 @mpSetDigit(i32*, i32, i32) #1

declare dso_local i32 @mpShiftLeft(i32*, i32*, i32, i32) #1

declare dso_local i32 @spDivide(i32*, i32*, i32*, i32) #1

declare dso_local i64 @QhatTooBig(i32, i32, i32, i32) #1

declare dso_local i32 @mpMultSub(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @mpAdd(i32*, i32*, i32*, i32) #1

declare dso_local i32 @mpShiftRight(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
