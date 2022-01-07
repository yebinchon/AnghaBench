; ModuleID = '/home/carl/AnghaBench/openssl/crypto/des/extr_cfb64ede.c_DES_ede3_cfb_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/des/extr_cfb64ede.c_DES_ede3_cfb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ede3_cfb_encrypt(i8* %0, i8* %1, i32 %2, i64 %3, i32* %4, i32* %5, i32* %6, i8** %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [2 x i32], align 4
  %28 = alloca i8*, align 8
  %29 = alloca [16 x i8], align 16
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8** %7, i8*** %17, align 8
  store i32 %8, i32* %18, align 4
  %30 = load i64, i64* %13, align 8
  store i64 %30, i64* %23, align 8
  %31 = load i32, i32* %12, align 4
  %32 = add i32 %31, 7
  %33 = udiv i32 %32, 8
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %24, align 8
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %25, align 4
  %36 = load i32, i32* %25, align 4
  %37 = icmp sgt i32 %36, 64
  br i1 %37, label %38, label %39

38:                                               ; preds = %9
  br label %321

39:                                               ; preds = %9
  %40 = load i8**, i8*** %17, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8* %42, i8** %28, align 8
  %43 = load i8*, i8** %28, align 8
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @c2l(i8* %43, i32 %44)
  %46 = load i8*, i8** %28, align 8
  %47 = load i32, i32* %22, align 4
  %48 = call i32 @c2l(i8* %46, i32 %47)
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %180

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %178, %51
  %53 = load i64, i64* %23, align 8
  %54 = load i64, i64* %24, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %179

56:                                               ; preds = %52
  %57 = load i64, i64* %24, align 8
  %58 = load i64, i64* %23, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %23, align 8
  %60 = load i32, i32* %21, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %22, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @DES_encrypt3(i32* %64, i32* %65, i32* %66, i32* %67)
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i64, i64* %24, align 8
  %73 = call i32 @c2ln(i8* %69, i32 %70, i32 %71, i64 %72)
  %74 = load i64, i64* %24, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %10, align 8
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %19, align 4
  %80 = xor i32 %79, %78
  store i32 %80, i32* %19, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %20, align 4
  %84 = xor i32 %83, %82
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i8*, i8** %11, align 8
  %88 = load i64, i64* %24, align 8
  %89 = call i32 @l2cn(i32 %85, i32 %86, i8* %87, i64 %88)
  %90 = load i64, i64* %24, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %11, align 8
  %93 = load i32, i32* %25, align 4
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %95, label %98

95:                                               ; preds = %56
  %96 = load i32, i32* %22, align 4
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %19, align 4
  store i32 %97, i32* %22, align 4
  br label %178

98:                                               ; preds = %56
  %99 = load i32, i32* %25, align 4
  %100 = icmp eq i32 %99, 64
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %20, align 4
  store i32 %103, i32* %22, align 4
  br label %177

104:                                              ; preds = %98
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  store i8* %105, i8** %28, align 8
  %106 = load i32, i32* %21, align 4
  %107 = load i8*, i8** %28, align 8
  %108 = call i32 @l2c(i32 %106, i8* %107)
  %109 = load i32, i32* %22, align 4
  %110 = load i8*, i8** %28, align 8
  %111 = call i32 @l2c(i32 %109, i8* %110)
  %112 = load i32, i32* %19, align 4
  %113 = load i8*, i8** %28, align 8
  %114 = call i32 @l2c(i32 %112, i8* %113)
  %115 = load i32, i32* %20, align 4
  %116 = load i8*, i8** %28, align 8
  %117 = call i32 @l2c(i32 %115, i8* %116)
  %118 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %120 = load i32, i32* %25, align 4
  %121 = sdiv i32 %120, 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i32, i32* %25, align 4
  %125 = srem i32 %124, 8
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = add nsw i32 8, %128
  %130 = call i32 @memmove(i8* %118, i8* %123, i32 %129)
  %131 = load i32, i32* %25, align 4
  %132 = srem i32 %131, 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %169

134:                                              ; preds = %104
  store i32 0, i32* %26, align 4
  br label %135

135:                                              ; preds = %165, %134
  %136 = load i32, i32* %26, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %168

138:                                              ; preds = %135
  %139 = load i32, i32* %25, align 4
  %140 = srem i32 %139, 8
  %141 = load i32, i32* %26, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, %140
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  %148 = load i32, i32* %26, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i32, i32* %25, align 4
  %155 = srem i32 %154, 8
  %156 = sub nsw i32 8, %155
  %157 = ashr i32 %153, %156
  %158 = load i32, i32* %26, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %162, %157
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  br label %165

165:                                              ; preds = %138
  %166 = load i32, i32* %26, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %26, align 4
  br label %135

168:                                              ; preds = %135
  br label %169

169:                                              ; preds = %168, %104
  %170 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  store i8* %170, i8** %28, align 8
  %171 = load i8*, i8** %28, align 8
  %172 = load i32, i32* %21, align 4
  %173 = call i32 @c2l(i8* %171, i32 %172)
  %174 = load i8*, i8** %28, align 8
  %175 = load i32, i32* %22, align 4
  %176 = call i32 @c2l(i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %169, %101
  br label %178

178:                                              ; preds = %177, %95
  br label %52

179:                                              ; preds = %52
  br label %309

180:                                              ; preds = %39
  br label %181

181:                                              ; preds = %291, %180
  %182 = load i64, i64* %23, align 8
  %183 = load i64, i64* %24, align 8
  %184 = icmp uge i64 %182, %183
  br i1 %184, label %185, label %308

185:                                              ; preds = %181
  %186 = load i64, i64* %24, align 8
  %187 = load i64, i64* %23, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %23, align 8
  %189 = load i32, i32* %21, align 4
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* %22, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  store i32 %191, i32* %192, align 4
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %194 = load i32*, i32** %14, align 8
  %195 = load i32*, i32** %15, align 8
  %196 = load i32*, i32** %16, align 8
  %197 = call i32 @DES_encrypt3(i32* %193, i32* %194, i32* %195, i32* %196)
  %198 = load i8*, i8** %10, align 8
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = load i64, i64* %24, align 8
  %202 = call i32 @c2ln(i8* %198, i32 %199, i32 %200, i64 %201)
  %203 = load i64, i64* %24, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 %203
  store i8* %205, i8** %10, align 8
  %206 = load i32, i32* %25, align 4
  %207 = icmp eq i32 %206, 32
  br i1 %207, label %208, label %211

208:                                              ; preds = %185
  %209 = load i32, i32* %22, align 4
  store i32 %209, i32* %21, align 4
  %210 = load i32, i32* %19, align 4
  store i32 %210, i32* %22, align 4
  br label %291

211:                                              ; preds = %185
  %212 = load i32, i32* %25, align 4
  %213 = icmp eq i32 %212, 64
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %19, align 4
  store i32 %215, i32* %21, align 4
  %216 = load i32, i32* %20, align 4
  store i32 %216, i32* %22, align 4
  br label %290

217:                                              ; preds = %211
  %218 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  store i8* %218, i8** %28, align 8
  %219 = load i32, i32* %21, align 4
  %220 = load i8*, i8** %28, align 8
  %221 = call i32 @l2c(i32 %219, i8* %220)
  %222 = load i32, i32* %22, align 4
  %223 = load i8*, i8** %28, align 8
  %224 = call i32 @l2c(i32 %222, i8* %223)
  %225 = load i32, i32* %19, align 4
  %226 = load i8*, i8** %28, align 8
  %227 = call i32 @l2c(i32 %225, i8* %226)
  %228 = load i32, i32* %20, align 4
  %229 = load i8*, i8** %28, align 8
  %230 = call i32 @l2c(i32 %228, i8* %229)
  %231 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %232 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %233 = load i32, i32* %25, align 4
  %234 = sdiv i32 %233, 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  %237 = load i32, i32* %25, align 4
  %238 = srem i32 %237, 8
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 1, i32 0
  %242 = add nsw i32 8, %241
  %243 = call i32 @memmove(i8* %231, i8* %236, i32 %242)
  %244 = load i32, i32* %25, align 4
  %245 = srem i32 %244, 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %282

247:                                              ; preds = %217
  store i32 0, i32* %26, align 4
  br label %248

248:                                              ; preds = %278, %247
  %249 = load i32, i32* %26, align 4
  %250 = icmp slt i32 %249, 8
  br i1 %250, label %251, label %281

251:                                              ; preds = %248
  %252 = load i32, i32* %25, align 4
  %253 = srem i32 %252, 8
  %254 = load i32, i32* %26, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = shl i32 %258, %253
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %256, align 1
  %261 = load i32, i32* %26, align 4
  %262 = add nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = load i32, i32* %25, align 4
  %268 = srem i32 %267, 8
  %269 = sub nsw i32 8, %268
  %270 = ashr i32 %266, %269
  %271 = load i32, i32* %26, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = or i32 %275, %270
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %273, align 1
  br label %278

278:                                              ; preds = %251
  %279 = load i32, i32* %26, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %26, align 4
  br label %248

281:                                              ; preds = %248
  br label %282

282:                                              ; preds = %281, %217
  %283 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  store i8* %283, i8** %28, align 8
  %284 = load i8*, i8** %28, align 8
  %285 = load i32, i32* %21, align 4
  %286 = call i32 @c2l(i8* %284, i32 %285)
  %287 = load i8*, i8** %28, align 8
  %288 = load i32, i32* %22, align 4
  %289 = call i32 @c2l(i8* %287, i32 %288)
  br label %290

290:                                              ; preds = %282, %214
  br label %291

291:                                              ; preds = %290, %208
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %19, align 4
  %295 = xor i32 %294, %293
  store i32 %295, i32* %19, align 4
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %20, align 4
  %299 = xor i32 %298, %297
  store i32 %299, i32* %20, align 4
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* %20, align 4
  %302 = load i8*, i8** %11, align 8
  %303 = load i64, i64* %24, align 8
  %304 = call i32 @l2cn(i32 %300, i32 %301, i8* %302, i64 %303)
  %305 = load i64, i64* %24, align 8
  %306 = load i8*, i8** %11, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 %305
  store i8* %307, i8** %11, align 8
  br label %181

308:                                              ; preds = %181
  br label %309

309:                                              ; preds = %308, %179
  %310 = load i8**, i8*** %17, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 0
  store i8* %312, i8** %28, align 8
  %313 = load i32, i32* %21, align 4
  %314 = load i8*, i8** %28, align 8
  %315 = call i32 @l2c(i32 %313, i8* %314)
  %316 = load i32, i32* %22, align 4
  %317 = load i8*, i8** %28, align 8
  %318 = call i32 @l2c(i32 %316, i8* %317)
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  store i32 0, i32* %319, align 4
  %320 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  store i32 0, i32* %320, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %321

321:                                              ; preds = %309, %38
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @DES_encrypt3(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i64) #1

declare dso_local i32 @l2cn(i32, i32, i8*, i64) #1

declare dso_local i32 @l2c(i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
