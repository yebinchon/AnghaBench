; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_ripemd.c_RIPEMD160Transform.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_ripemd.c_RIPEMD160Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R = common dso_local global i64* null, align 8
@RR = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @RIPEMD160Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RIPEMD160Transform(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [16 x i64], align 16
  %17 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64*, i64** %3, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 4
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 0
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @RIPEMDDecode(i64* %48, i8* %49, i32 64)
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %109, %2
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %112

54:                                               ; preds = %51
  %55 = load i32, i32* %17, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @F0(i64 %57, i64 %58, i64 %59)
  %61 = add nsw i64 %56, %60
  %62 = load i64*, i64** @R, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %61, %68
  %70 = load i32, i32* %17, align 4
  %71 = call i64 @K(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i64 @ROLS(i32 %55, i64 %72)
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %73, %74
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @ROL(i32 10, i64 %78)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %15, align 8
  store i64 %81, i64* %6, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @F4(i64 %84, i64 %85, i64 %86)
  %88 = add nsw i64 %83, %87
  %89 = load i64*, i64** @RR, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %88, %95
  %97 = load i32, i32* %17, align 4
  %98 = call i64 @KK160(i32 %97)
  %99 = add nsw i64 %96, %98
  %100 = call i64 @ROLSS(i32 %82, i64 %99)
  %101 = load i64, i64* %14, align 8
  %102 = add nsw i64 %100, %101
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %14, align 8
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %13, align 8
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @ROL(i32 10, i64 %105)
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %11, align 8
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %15, align 8
  store i64 %108, i64* %11, align 8
  br label %109

109:                                              ; preds = %54
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %17, align 4
  br label %51

112:                                              ; preds = %51
  store i32 16, i32* %17, align 4
  br label %113

113:                                              ; preds = %171, %112
  %114 = load i32, i32* %17, align 4
  %115 = icmp slt i32 %114, 32
  br i1 %115, label %116, label %174

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i64 @F1(i64 %119, i64 %120, i64 %121)
  %123 = add nsw i64 %118, %122
  %124 = load i64*, i64** @R, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %123, %130
  %132 = load i32, i32* %17, align 4
  %133 = call i64 @K(i32 %132)
  %134 = add nsw i64 %131, %133
  %135 = call i64 @ROLS(i32 %117, i64 %134)
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %135, %136
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %9, align 8
  store i64 %138, i64* %5, align 8
  %139 = load i64, i64* %8, align 8
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i64 @ROL(i32 10, i64 %140)
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %6, align 8
  store i64 %142, i64* %7, align 8
  %143 = load i64, i64* %15, align 8
  store i64 %143, i64* %6, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i64 @F3(i64 %146, i64 %147, i64 %148)
  %150 = add nsw i64 %145, %149
  %151 = load i64*, i64** @RR, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %150, %157
  %159 = load i32, i32* %17, align 4
  %160 = call i64 @KK160(i32 %159)
  %161 = add nsw i64 %158, %160
  %162 = call i64 @ROLSS(i32 %144, i64 %161)
  %163 = load i64, i64* %14, align 8
  %164 = add nsw i64 %162, %163
  store i64 %164, i64* %15, align 8
  %165 = load i64, i64* %14, align 8
  store i64 %165, i64* %10, align 8
  %166 = load i64, i64* %13, align 8
  store i64 %166, i64* %14, align 8
  %167 = load i64, i64* %12, align 8
  %168 = call i64 @ROL(i32 10, i64 %167)
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %11, align 8
  store i64 %169, i64* %12, align 8
  %170 = load i64, i64* %15, align 8
  store i64 %170, i64* %11, align 8
  br label %171

171:                                              ; preds = %116
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %113

174:                                              ; preds = %113
  store i32 32, i32* %17, align 4
  br label %175

175:                                              ; preds = %233, %174
  %176 = load i32, i32* %17, align 4
  %177 = icmp slt i32 %176, 48
  br i1 %177, label %178, label %236

178:                                              ; preds = %175
  %179 = load i32, i32* %17, align 4
  %180 = load i64, i64* %5, align 8
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* %8, align 8
  %184 = call i64 @F2(i64 %181, i64 %182, i64 %183)
  %185 = add nsw i64 %180, %184
  %186 = load i64*, i64** @R, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %185, %192
  %194 = load i32, i32* %17, align 4
  %195 = call i64 @K(i32 %194)
  %196 = add nsw i64 %193, %195
  %197 = call i64 @ROLS(i32 %179, i64 %196)
  %198 = load i64, i64* %9, align 8
  %199 = add nsw i64 %197, %198
  store i64 %199, i64* %15, align 8
  %200 = load i64, i64* %9, align 8
  store i64 %200, i64* %5, align 8
  %201 = load i64, i64* %8, align 8
  store i64 %201, i64* %9, align 8
  %202 = load i64, i64* %7, align 8
  %203 = call i64 @ROL(i32 10, i64 %202)
  store i64 %203, i64* %8, align 8
  %204 = load i64, i64* %6, align 8
  store i64 %204, i64* %7, align 8
  %205 = load i64, i64* %15, align 8
  store i64 %205, i64* %6, align 8
  %206 = load i32, i32* %17, align 4
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load i64, i64* %13, align 8
  %211 = call i64 @F2(i64 %208, i64 %209, i64 %210)
  %212 = add nsw i64 %207, %211
  %213 = load i64*, i64** @RR, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %212, %219
  %221 = load i32, i32* %17, align 4
  %222 = call i64 @KK160(i32 %221)
  %223 = add nsw i64 %220, %222
  %224 = call i64 @ROLSS(i32 %206, i64 %223)
  %225 = load i64, i64* %14, align 8
  %226 = add nsw i64 %224, %225
  store i64 %226, i64* %15, align 8
  %227 = load i64, i64* %14, align 8
  store i64 %227, i64* %10, align 8
  %228 = load i64, i64* %13, align 8
  store i64 %228, i64* %14, align 8
  %229 = load i64, i64* %12, align 8
  %230 = call i64 @ROL(i32 10, i64 %229)
  store i64 %230, i64* %13, align 8
  %231 = load i64, i64* %11, align 8
  store i64 %231, i64* %12, align 8
  %232 = load i64, i64* %15, align 8
  store i64 %232, i64* %11, align 8
  br label %233

233:                                              ; preds = %178
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  br label %175

236:                                              ; preds = %175
  store i32 48, i32* %17, align 4
  br label %237

237:                                              ; preds = %295, %236
  %238 = load i32, i32* %17, align 4
  %239 = icmp slt i32 %238, 64
  br i1 %239, label %240, label %298

240:                                              ; preds = %237
  %241 = load i32, i32* %17, align 4
  %242 = load i64, i64* %5, align 8
  %243 = load i64, i64* %6, align 8
  %244 = load i64, i64* %7, align 8
  %245 = load i64, i64* %8, align 8
  %246 = call i64 @F3(i64 %243, i64 %244, i64 %245)
  %247 = add nsw i64 %242, %246
  %248 = load i64*, i64** @R, align 8
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %247, %254
  %256 = load i32, i32* %17, align 4
  %257 = call i64 @K(i32 %256)
  %258 = add nsw i64 %255, %257
  %259 = call i64 @ROLS(i32 %241, i64 %258)
  %260 = load i64, i64* %9, align 8
  %261 = add nsw i64 %259, %260
  store i64 %261, i64* %15, align 8
  %262 = load i64, i64* %9, align 8
  store i64 %262, i64* %5, align 8
  %263 = load i64, i64* %8, align 8
  store i64 %263, i64* %9, align 8
  %264 = load i64, i64* %7, align 8
  %265 = call i64 @ROL(i32 10, i64 %264)
  store i64 %265, i64* %8, align 8
  %266 = load i64, i64* %6, align 8
  store i64 %266, i64* %7, align 8
  %267 = load i64, i64* %15, align 8
  store i64 %267, i64* %6, align 8
  %268 = load i32, i32* %17, align 4
  %269 = load i64, i64* %10, align 8
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* %12, align 8
  %272 = load i64, i64* %13, align 8
  %273 = call i64 @F1(i64 %270, i64 %271, i64 %272)
  %274 = add nsw i64 %269, %273
  %275 = load i64*, i64** @RR, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %275, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %274, %281
  %283 = load i32, i32* %17, align 4
  %284 = call i64 @KK160(i32 %283)
  %285 = add nsw i64 %282, %284
  %286 = call i64 @ROLSS(i32 %268, i64 %285)
  %287 = load i64, i64* %14, align 8
  %288 = add nsw i64 %286, %287
  store i64 %288, i64* %15, align 8
  %289 = load i64, i64* %14, align 8
  store i64 %289, i64* %10, align 8
  %290 = load i64, i64* %13, align 8
  store i64 %290, i64* %14, align 8
  %291 = load i64, i64* %12, align 8
  %292 = call i64 @ROL(i32 10, i64 %291)
  store i64 %292, i64* %13, align 8
  %293 = load i64, i64* %11, align 8
  store i64 %293, i64* %12, align 8
  %294 = load i64, i64* %15, align 8
  store i64 %294, i64* %11, align 8
  br label %295

295:                                              ; preds = %240
  %296 = load i32, i32* %17, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %17, align 4
  br label %237

298:                                              ; preds = %237
  store i32 64, i32* %17, align 4
  br label %299

299:                                              ; preds = %357, %298
  %300 = load i32, i32* %17, align 4
  %301 = icmp slt i32 %300, 80
  br i1 %301, label %302, label %360

302:                                              ; preds = %299
  %303 = load i32, i32* %17, align 4
  %304 = load i64, i64* %5, align 8
  %305 = load i64, i64* %6, align 8
  %306 = load i64, i64* %7, align 8
  %307 = load i64, i64* %8, align 8
  %308 = call i64 @F4(i64 %305, i64 %306, i64 %307)
  %309 = add nsw i64 %304, %308
  %310 = load i64*, i64** @R, align 8
  %311 = load i32, i32* %17, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %309, %316
  %318 = load i32, i32* %17, align 4
  %319 = call i64 @K(i32 %318)
  %320 = add nsw i64 %317, %319
  %321 = call i64 @ROLS(i32 %303, i64 %320)
  %322 = load i64, i64* %9, align 8
  %323 = add nsw i64 %321, %322
  store i64 %323, i64* %15, align 8
  %324 = load i64, i64* %9, align 8
  store i64 %324, i64* %5, align 8
  %325 = load i64, i64* %8, align 8
  store i64 %325, i64* %9, align 8
  %326 = load i64, i64* %7, align 8
  %327 = call i64 @ROL(i32 10, i64 %326)
  store i64 %327, i64* %8, align 8
  %328 = load i64, i64* %6, align 8
  store i64 %328, i64* %7, align 8
  %329 = load i64, i64* %15, align 8
  store i64 %329, i64* %6, align 8
  %330 = load i32, i32* %17, align 4
  %331 = load i64, i64* %10, align 8
  %332 = load i64, i64* %11, align 8
  %333 = load i64, i64* %12, align 8
  %334 = load i64, i64* %13, align 8
  %335 = call i64 @F0(i64 %332, i64 %333, i64 %334)
  %336 = add nsw i64 %331, %335
  %337 = load i64*, i64** @RR, align 8
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %341
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %336, %343
  %345 = load i32, i32* %17, align 4
  %346 = call i64 @KK160(i32 %345)
  %347 = add nsw i64 %344, %346
  %348 = call i64 @ROLSS(i32 %330, i64 %347)
  %349 = load i64, i64* %14, align 8
  %350 = add nsw i64 %348, %349
  store i64 %350, i64* %15, align 8
  %351 = load i64, i64* %14, align 8
  store i64 %351, i64* %10, align 8
  %352 = load i64, i64* %13, align 8
  store i64 %352, i64* %14, align 8
  %353 = load i64, i64* %12, align 8
  %354 = call i64 @ROL(i32 10, i64 %353)
  store i64 %354, i64* %13, align 8
  %355 = load i64, i64* %11, align 8
  store i64 %355, i64* %12, align 8
  %356 = load i64, i64* %15, align 8
  store i64 %356, i64* %11, align 8
  br label %357

357:                                              ; preds = %302
  %358 = load i32, i32* %17, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %17, align 4
  br label %299

360:                                              ; preds = %299
  %361 = load i64*, i64** %3, align 8
  %362 = getelementptr inbounds i64, i64* %361, i64 1
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %7, align 8
  %365 = add nsw i64 %363, %364
  %366 = load i64, i64* %13, align 8
  %367 = add nsw i64 %365, %366
  store i64 %367, i64* %15, align 8
  %368 = load i64*, i64** %3, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 2
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %8, align 8
  %372 = add nsw i64 %370, %371
  %373 = load i64, i64* %14, align 8
  %374 = add nsw i64 %372, %373
  %375 = load i64*, i64** %3, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 1
  store i64 %374, i64* %376, align 8
  %377 = load i64*, i64** %3, align 8
  %378 = getelementptr inbounds i64, i64* %377, i64 3
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* %9, align 8
  %381 = add nsw i64 %379, %380
  %382 = load i64, i64* %10, align 8
  %383 = add nsw i64 %381, %382
  %384 = load i64*, i64** %3, align 8
  %385 = getelementptr inbounds i64, i64* %384, i64 2
  store i64 %383, i64* %385, align 8
  %386 = load i64*, i64** %3, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 4
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* %5, align 8
  %390 = add nsw i64 %388, %389
  %391 = load i64, i64* %11, align 8
  %392 = add nsw i64 %390, %391
  %393 = load i64*, i64** %3, align 8
  %394 = getelementptr inbounds i64, i64* %393, i64 3
  store i64 %392, i64* %394, align 8
  %395 = load i64*, i64** %3, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* %6, align 8
  %399 = add nsw i64 %397, %398
  %400 = load i64, i64* %12, align 8
  %401 = add nsw i64 %399, %400
  %402 = load i64*, i64** %3, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 4
  store i64 %401, i64* %403, align 8
  %404 = load i64, i64* %15, align 8
  %405 = load i64*, i64** %3, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 0
  store i64 %404, i64* %406, align 8
  store i64 0, i64* %15, align 8
  %407 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 0
  %408 = call i32 @ZEND_SECURE_ZERO(i64* %407, i32 128)
  ret void
}

declare dso_local i32 @RIPEMDDecode(i64*, i8*, i32) #1

declare dso_local i64 @ROLS(i32, i64) #1

declare dso_local i64 @F0(i64, i64, i64) #1

declare dso_local i64 @K(i32) #1

declare dso_local i64 @ROL(i32, i64) #1

declare dso_local i64 @ROLSS(i32, i64) #1

declare dso_local i64 @F4(i64, i64, i64) #1

declare dso_local i64 @KK160(i32) #1

declare dso_local i64 @F1(i64, i64, i64) #1

declare dso_local i64 @F3(i64, i64, i64) #1

declare dso_local i64 @F2(i64, i64, i64) #1

declare dso_local i32 @ZEND_SECURE_ZERO(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
