; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_d2d.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_d2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@DOUBLE_BIAS = common dso_local global i32 0, align 4
@DOUBLE_MANTISSA_BITS = common dso_local global i32 0, align 4
@DOUBLE_POW5_INV_BITCOUNT = common dso_local global i32 0, align 4
@DOUBLE_POW5_INV_SPLIT = common dso_local global i32* null, align 8
@DOUBLE_POW5_BITCOUNT = common dso_local global i32 0, align 4
@DOUBLE_POW5_SPLIT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @d2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d2d(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %2
  %51 = load i32, i32* @DOUBLE_BIAS, align 4
  %52 = sub nsw i32 1, %51
  %53 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sub nsw i32 %54, 2
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %7, align 4
  br label %69

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DOUBLE_BIAS, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %6, align 4
  %64 = call i32 @UINT64CONST(i32 1)
  %65 = load i32, i32* @DOUBLE_MANTISSA_BITS, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %57, %50
  store i32 0, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 4, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %75, 1
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i1 [ true, %69 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %133

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @log10Pow2(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 3
  %87 = zext i1 %86 to i32
  %88 = sub nsw i32 %84, %87
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* @DOUBLE_POW5_INV_BITCOUNT, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @pow5bits(i32 %90)
  %92 = add nsw i32 %89, %91
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** @DOUBLE_POW5_INV_SPLIT, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @mulShiftAll(i32 %101, i32 %106, i32 %107, i32* %12, i32* %13, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp sle i32 %110, 21
  br i1 %111, label %112, label %132

112:                                              ; preds = %82
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @div5(i32 %114)
  %116 = mul nsw i32 5, %115
  %117 = sub nsw i32 %113, %116
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %20, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @multipleOfPowerOf5(i32 %121, i32 %122)
  store i32 %123, i32* %16, align 4
  br label %131

124:                                              ; preds = %112
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 2
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @multipleOfPowerOf5(i32 %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %124, %120
  br label %132

132:                                              ; preds = %131, %82
  br label %180

133:                                              ; preds = %77
  %134 = load i32, i32* %6, align 4
  %135 = sub nsw i32 0, %134
  %136 = call i32 @log10Pow5(i32 %135)
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp sgt i32 %138, 1
  %140 = zext i1 %139 to i32
  %141 = sub nsw i32 %136, %140
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 0, %142
  %144 = load i32, i32* %21, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = call i32 @pow5bits(i32 %146)
  %148 = load i32, i32* @DOUBLE_POW5_BITCOUNT, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %23, align 4
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %23, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %24, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %153, %154
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i32*, i32** @DOUBLE_POW5_SPLIT, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @mulShiftAll(i32 %156, i32 %161, i32 %162, i32* %12, i32* %13, i32 %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %133
  store i32 1, i32* %16, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %12, align 4
  br label %179

170:                                              ; preds = %133
  %171 = load i32, i32* %21, align 4
  %172 = icmp slt i32 %171, 63
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %21, align 4
  %176 = sub nsw i32 %175, 1
  %177 = call i32 @multipleOfPowerOf2(i32 %174, i32 %176)
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %173, %170
  br label %179

179:                                              ; preds = %178, %167
  br label %180

180:                                              ; preds = %179, %132
  store i32 0, i32* %25, align 4
  store i64 0, i64* %26, align 8
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %283

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %196, %186
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @div10(i32 %188)
  store i32 %189, i32* %28, align 4
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @div10(i32 %190)
  store i32 %191, i32* %29, align 4
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %29, align 4
  %194 = icmp sle i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %224

196:                                              ; preds = %187
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %29, align 4
  %199 = mul nsw i32 10, %198
  %200 = sub nsw i32 %197, %199
  store i32 %200, i32* %30, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @div10(i32 %201)
  store i32 %202, i32* %31, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %31, align 4
  %205 = mul nsw i32 10, %204
  %206 = sub nsw i32 %203, %205
  store i32 %206, i32* %32, align 4
  %207 = load i32, i32* %30, align 4
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %15, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %15, align 4
  %212 = load i64, i64* %26, align 8
  %213 = icmp eq i64 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %16, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %32, align 4
  %218 = sext i32 %217 to i64
  store i64 %218, i64* %26, align 8
  %219 = load i32, i32* %31, align 4
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %28, align 4
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %29, align 4
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %25, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %25, align 4
  br label %187

224:                                              ; preds = %195
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %260

227:                                              ; preds = %224
  br label %228

228:                                              ; preds = %238, %227
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @div10(i32 %229)
  store i32 %230, i32* %33, align 4
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %33, align 4
  %233 = mul nsw i32 10, %232
  %234 = sub nsw i32 %231, %233
  store i32 %234, i32* %34, align 4
  %235 = load i32, i32* %34, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  br label %259

238:                                              ; preds = %228
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @div10(i32 %239)
  store i32 %240, i32* %35, align 4
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @div10(i32 %241)
  store i32 %242, i32* %36, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %36, align 4
  %245 = mul nsw i32 10, %244
  %246 = sub nsw i32 %243, %245
  store i32 %246, i32* %37, align 4
  %247 = load i64, i64* %26, align 8
  %248 = icmp eq i64 %247, 0
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %16, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %37, align 4
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %26, align 8
  %254 = load i32, i32* %36, align 4
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %35, align 4
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %33, align 4
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %25, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %25, align 4
  br label %228

259:                                              ; preds = %237
  br label %260

260:                                              ; preds = %259, %224
  %261 = load i32, i32* %16, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %260
  %264 = load i64, i64* %26, align 8
  %265 = icmp eq i64 %264, 5
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load i32, i32* %11, align 4
  %268 = srem i32 %267, 2
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i64 4, i64* %26, align 8
  br label %271

271:                                              ; preds = %270, %266, %263, %260
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %13, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load i64, i64* %26, align 8
  %278 = icmp sge i64 %277, 5
  br label %279

279:                                              ; preds = %276, %271
  %280 = phi i1 [ true, %271 ], [ %278, %276 ]
  %281 = zext i1 %280 to i32
  %282 = add nsw i32 %272, %281
  store i32 %282, i32* %27, align 4
  br label %343

283:                                              ; preds = %183
  store i32 0, i32* %38, align 4
  %284 = load i32, i32* %12, align 4
  %285 = call i32 @div100(i32 %284)
  store i32 %285, i32* %39, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @div100(i32 %286)
  store i32 %287, i32* %40, align 4
  %288 = load i32, i32* %39, align 4
  %289 = load i32, i32* %40, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %306

291:                                              ; preds = %283
  %292 = load i32, i32* %11, align 4
  %293 = call i32 @div100(i32 %292)
  store i32 %293, i32* %41, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %41, align 4
  %296 = mul nsw i32 100, %295
  %297 = sub nsw i32 %294, %296
  store i32 %297, i32* %42, align 4
  %298 = load i32, i32* %42, align 4
  %299 = icmp sge i32 %298, 50
  %300 = zext i1 %299 to i32
  store i32 %300, i32* %38, align 4
  %301 = load i32, i32* %41, align 4
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* %39, align 4
  store i32 %302, i32* %12, align 4
  %303 = load i32, i32* %40, align 4
  store i32 %303, i32* %13, align 4
  %304 = load i32, i32* %25, align 4
  %305 = add nsw i32 %304, 2
  store i32 %305, i32* %25, align 4
  br label %306

306:                                              ; preds = %291, %283
  br label %307

307:                                              ; preds = %316, %306
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @div10(i32 %308)
  store i32 %309, i32* %43, align 4
  %310 = load i32, i32* %13, align 4
  %311 = call i32 @div10(i32 %310)
  store i32 %311, i32* %44, align 4
  %312 = load i32, i32* %43, align 4
  %313 = load i32, i32* %44, align 4
  %314 = icmp sle i32 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %307
  br label %331

316:                                              ; preds = %307
  %317 = load i32, i32* %11, align 4
  %318 = call i32 @div10(i32 %317)
  store i32 %318, i32* %45, align 4
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* %45, align 4
  %321 = mul nsw i32 10, %320
  %322 = sub nsw i32 %319, %321
  store i32 %322, i32* %46, align 4
  %323 = load i32, i32* %46, align 4
  %324 = icmp sge i32 %323, 5
  %325 = zext i1 %324 to i32
  store i32 %325, i32* %38, align 4
  %326 = load i32, i32* %45, align 4
  store i32 %326, i32* %11, align 4
  %327 = load i32, i32* %43, align 4
  store i32 %327, i32* %12, align 4
  %328 = load i32, i32* %44, align 4
  store i32 %328, i32* %13, align 4
  %329 = load i32, i32* %25, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %25, align 4
  br label %307

331:                                              ; preds = %315
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* %11, align 4
  %334 = load i32, i32* %13, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %339, label %336

336:                                              ; preds = %331
  %337 = load i32, i32* %38, align 4
  %338 = icmp ne i32 %337, 0
  br label %339

339:                                              ; preds = %336, %331
  %340 = phi i1 [ true, %331 ], [ %338, %336 ]
  %341 = zext i1 %340 to i32
  %342 = add nsw i32 %332, %341
  store i32 %342, i32* %27, align 4
  br label %343

343:                                              ; preds = %339, %279
  %344 = load i32, i32* %14, align 4
  %345 = load i32, i32* %25, align 4
  %346 = add nsw i32 %344, %345
  store i32 %346, i32* %47, align 4
  %347 = load i32, i32* %47, align 4
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %347, i32* %348, align 4
  %349 = load i32, i32* %27, align 4
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %349, i32* %350, align 4
  %351 = bitcast %struct.TYPE_3__* %3 to i64*
  %352 = load i64, i64* %351, align 4
  ret i64 %352
}

declare dso_local i32 @UINT64CONST(i32) #1

declare dso_local i32 @log10Pow2(i32) #1

declare dso_local i32 @pow5bits(i32) #1

declare dso_local i32 @mulShiftAll(i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @div5(i32) #1

declare dso_local i32 @multipleOfPowerOf5(i32, i32) #1

declare dso_local i32 @log10Pow5(i32) #1

declare dso_local i32 @multipleOfPowerOf2(i32, i32) #1

declare dso_local i32 @div10(i32) #1

declare dso_local i32 @div100(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
