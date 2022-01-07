; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_check.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIBBLE_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Smart: got np byte %d:%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Smart: smart_check got odd len\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"check: wf %d:%02x %02x %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smart_check(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %382

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @memset(i32* %24, i32 0, i32 %25)
  %27 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %89

29:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %84, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = srem i32 %37, 8
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 32, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %34
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 127
  br i1 %51, label %52, label %73

52:                                               ; preds = %45, %34
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %66
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %14, align 4
  br label %83

73:                                               ; preds = %45
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %73, %52
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %30

87:                                               ; preds = %30
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %5, align 4
  br label %382

89:                                               ; preds = %20
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %92 = srem i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %382

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %141

99:                                               ; preds = %96
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 15
  br i1 %103, label %104, label %130

104:                                              ; preds = %99
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, 1
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 4
  %113 = icmp eq i32 15, %112
  %114 = zext i1 %113 to i32
  %115 = and i32 %108, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %104
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 15
  %122 = shl i32 %121, 4
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 15
  %127 = add nsw i32 %122, %126
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  store i32 1, i32* %14, align 4
  br label %139

130:                                              ; preds = %104, %99
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 0, i32* %134, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, -4
  store i32 %138, i32* %136, align 4
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %130, %117
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %382

141:                                              ; preds = %96
  store i32 1, i32* %14, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sub nsw i32 %142, 2
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %296, %141
  %145 = load i32, i32* %13, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %299

147:                                              ; preds = %144
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 15
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  %156 = and i32 %155, 15
  %157 = xor i32 %153, %156
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = ashr i32 %163, 4
  %165 = icmp eq i32 %157, %164
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %15, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 15
  %174 = load i32, i32* %13, align 4
  %175 = and i32 %174, 15
  %176 = xor i32 %173, %175
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 4
  %183 = icmp eq i32 %176, %182
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %147
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %268, label %190

190:                                              ; preds = %187, %147
  %191 = load i32, i32* %13, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %197, i32 %202, i32 %208)
  %210 = load i32, i32* %13, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sdiv i32 %211, 8
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %13, align 4
  %214 = sub nsw i32 %213, 1
  %215 = srem i32 %214, 8
  store i32 %215, i32* %12, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sub nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32 0, i32* %220, align 4
  %221 = load i32, i32* %12, align 4
  %222 = shl i32 1, %221
  %223 = xor i32 %222, -1
  %224 = load i32*, i32** %9, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, %223
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %13, align 4
  %231 = sdiv i32 %230, 8
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %13, align 4
  %233 = srem i32 %232, 8
  store i32 %233, i32* %12, align 4
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 0, i32* %237, align 4
  %238 = load i32, i32* %12, align 4
  %239 = shl i32 1, %238
  %240 = xor i32 %239, -1
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, %240
  store i32 %246, i32* %244, align 4
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  %249 = sdiv i32 %248, 8
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  %252 = srem i32 %251, 8
  store i32 %252, i32* %12, align 4
  %253 = load i32*, i32** %6, align 8
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  store i32 0, i32* %257, align 4
  %258 = load i32, i32* %12, align 4
  %259 = shl i32 1, %258
  %260 = xor i32 %259, -1
  %261 = load i32*, i32** %9, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, %260
  store i32 %266, i32* %264, align 4
  store i32 0, i32* %14, align 4
  %267 = load i32, i32* %14, align 4
  store i32 %267, i32* %5, align 4
  br label %382

268:                                              ; preds = %187
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %271 = srem i32 %269, %270
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %295

273:                                              ; preds = %268
  %274 = load i32*, i32** %6, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 15
  %280 = shl i32 %279, 4
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 15
  %288 = add nsw i32 %280, %287
  %289 = load i32*, i32** %8, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %292 = sdiv i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %289, i64 %293
  store i32 %288, i32* %294, align 4
  br label %295

295:                                              ; preds = %273, %268
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %13, align 4
  br label %144

299:                                              ; preds = %144
  %300 = load i32, i32* %13, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %315

302:                                              ; preds = %299
  %303 = load i32*, i32** %6, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, 15
  %307 = shl i32 %306, 4
  %308 = load i32*, i32** %6, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 15
  %312 = add nsw i32 %307, %311
  %313 = load i32*, i32** %8, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  store i32 %312, i32* %314, align 4
  br label %315

315:                                              ; preds = %302, %299
  store i32 0, i32* %13, align 4
  br label %316

316:                                              ; preds = %377, %315
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %10, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %380

320:                                              ; preds = %316
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %323 = mul nsw i32 %321, %322
  %324 = sdiv i32 %323, 8
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %13, align 4
  %326 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %327 = mul nsw i32 %325, %326
  %328 = srem i32 %327, 8
  store i32 %328, i32* %12, align 4
  %329 = load i32*, i32** %8, align 8
  %330 = load i32, i32* %13, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp sgt i32 32, %333
  br i1 %334, label %342, label %335

335:                                              ; preds = %320
  %336 = load i32*, i32** %8, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = icmp sge i32 %340, 127
  br i1 %341, label %342, label %376

342:                                              ; preds = %335, %320
  %343 = load i32, i32* %13, align 4
  %344 = load i32*, i32** %8, align 8
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %343, i32 %348)
  %350 = load i32*, i32** %8, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 0, i32* %353, align 4
  %354 = load i32*, i32** %6, align 8
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %357 = mul nsw i32 %355, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %354, i64 %358
  store i32 0, i32* %359, align 4
  %360 = load i32*, i32** %6, align 8
  %361 = load i32, i32* %13, align 4
  %362 = load i32, i32* @NIBBLE_PER_BYTE, align 4
  %363 = mul nsw i32 %361, %362
  %364 = add nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %360, i64 %365
  store i32 0, i32* %366, align 4
  %367 = load i32, i32* %12, align 4
  %368 = shl i32 3, %367
  %369 = xor i32 %368, -1
  %370 = load i32*, i32** %9, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, %369
  store i32 %375, i32* %373, align 4
  store i32 0, i32* %14, align 4
  br label %376

376:                                              ; preds = %342, %335
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %316

380:                                              ; preds = %316
  %381 = load i32, i32* %14, align 4
  store i32 %381, i32* %5, align 4
  br label %382

382:                                              ; preds = %380, %190, %139, %94, %87, %19
  %383 = load i32, i32* %5, align 4
  ret i32 %383
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NODE_DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
