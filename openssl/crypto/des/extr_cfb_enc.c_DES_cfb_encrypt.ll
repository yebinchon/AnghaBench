; ModuleID = '/home/carl/AnghaBench/openssl/crypto/des/extr_cfb_enc.c_DES_cfb_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/des/extr_cfb_enc.c_DES_cfb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_cfb_encrypt(i8* %0, i8* %1, i32 %2, i64 %3, i32* %4, i8** %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x i32], align 4
  %25 = alloca i8*, align 8
  %26 = alloca [16 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 %6, i32* %14, align 4
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %19, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 7
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %10, align 4
  %34 = srem i32 %33, 8
  store i32 %34, i32* %23, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 64
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %7
  br label %313

41:                                               ; preds = %37
  %42 = load i8**, i8*** %13, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8* %44, i8** %25, align 8
  %45 = load i8*, i8** %25, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @c2l(i8* %45, i32 %46)
  %48 = load i8*, i8** %25, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @c2l(i8* %48, i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %177

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %175, %53
  %55 = load i64, i64* %19, align 8
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 %55, %57
  br i1 %58, label %59, label %176

59:                                               ; preds = %54
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %19, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %19, align 8
  %64 = load i32, i32* %17, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %18, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* @DES_ENCRYPT, align 4
  %71 = call i32 @DES_encrypt1(i32* %68, i32* %69, i32 %70)
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @c2ln(i8* %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %21, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %8, align 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %15, align 4
  %84 = xor i32 %83, %82
  store i32 %84, i32* %15, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %16, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @l2cn(i32 %89, i32 %90, i8* %91, i32 %92)
  %94 = load i32, i32* %21, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %100, label %103

100:                                              ; preds = %59
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %18, align 4
  br label %175

103:                                              ; preds = %59
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 64
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %18, align 4
  br label %174

109:                                              ; preds = %103
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  store i8* %110, i8** %25, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i8*, i8** %25, align 8
  %113 = call i32 @l2c(i32 %111, i8* %112)
  %114 = load i32, i32* %18, align 4
  %115 = load i8*, i8** %25, align 8
  %116 = call i32 @l2c(i32 %114, i8* %115)
  %117 = load i32, i32* %15, align 4
  %118 = load i8*, i8** %25, align 8
  %119 = call i32 @l2c(i32 %117, i8* %118)
  %120 = load i32, i32* %16, align 4
  %121 = load i8*, i8** %25, align 8
  %122 = call i32 @l2c(i32 %120, i8* %121)
  %123 = load i32, i32* %23, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %109
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = call i32 @memmove(i8* %126, i8* %130, i32 8)
  br label %166

132:                                              ; preds = %109
  store i32 0, i32* %22, align 4
  br label %133

133:                                              ; preds = %162, %132
  %134 = load i32, i32* %22, align 4
  %135 = icmp slt i32 %134, 8
  br i1 %135, label %136, label %165

136:                                              ; preds = %133
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = load i32, i32* %23, align 4
  %145 = shl i32 %143, %144
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %20, align 4
  %148 = add nsw i32 %146, %147
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i32, i32* %23, align 4
  %155 = sub nsw i32 8, %154
  %156 = ashr i32 %153, %155
  %157 = or i32 %145, %156
  %158 = trunc i32 %157 to i8
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 %160
  store i8 %158, i8* %161, align 1
  br label %162

162:                                              ; preds = %136
  %163 = load i32, i32* %22, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %22, align 4
  br label %133

165:                                              ; preds = %133
  br label %166

166:                                              ; preds = %165, %125
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  store i8* %167, i8** %25, align 8
  %168 = load i8*, i8** %25, align 8
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @c2l(i8* %168, i32 %169)
  %171 = load i8*, i8** %25, align 8
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @c2l(i8* %171, i32 %172)
  br label %174

174:                                              ; preds = %166, %106
  br label %175

175:                                              ; preds = %174, %100
  br label %54

176:                                              ; preds = %54
  br label %301

177:                                              ; preds = %41
  br label %178

178:                                              ; preds = %282, %177
  %179 = load i64, i64* %19, align 8
  %180 = load i32, i32* %21, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp uge i64 %179, %181
  br i1 %182, label %183, label %300

183:                                              ; preds = %178
  %184 = load i32, i32* %21, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %19, align 8
  %187 = sub i64 %186, %185
  store i64 %187, i64* %19, align 8
  %188 = load i32, i32* %17, align 4
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %18, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 %190, i32* %191, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* @DES_ENCRYPT, align 4
  %195 = call i32 @DES_encrypt1(i32* %192, i32* %193, i32 %194)
  %196 = load i8*, i8** %8, align 8
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %21, align 4
  %200 = call i32 @c2ln(i8* %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* %21, align 4
  %202 = load i8*, i8** %8, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %8, align 8
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %205, 32
  br i1 %206, label %207, label %210

207:                                              ; preds = %183
  %208 = load i32, i32* %18, align 4
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %15, align 4
  store i32 %209, i32* %18, align 4
  br label %282

210:                                              ; preds = %183
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 64
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %15, align 4
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %16, align 4
  store i32 %215, i32* %18, align 4
  br label %281

216:                                              ; preds = %210
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  store i8* %217, i8** %25, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i8*, i8** %25, align 8
  %220 = call i32 @l2c(i32 %218, i8* %219)
  %221 = load i32, i32* %18, align 4
  %222 = load i8*, i8** %25, align 8
  %223 = call i32 @l2c(i32 %221, i8* %222)
  %224 = load i32, i32* %15, align 4
  %225 = load i8*, i8** %25, align 8
  %226 = call i32 @l2c(i32 %224, i8* %225)
  %227 = load i32, i32* %16, align 4
  %228 = load i8*, i8** %25, align 8
  %229 = call i32 @l2c(i32 %227, i8* %228)
  %230 = load i32, i32* %23, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %216
  %233 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  %234 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  %235 = load i32, i32* %20, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = call i32 @memmove(i8* %233, i8* %237, i32 8)
  br label %273

239:                                              ; preds = %216
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %269, %239
  %241 = load i32, i32* %22, align 4
  %242 = icmp slt i32 %241, 8
  br i1 %242, label %243, label %272

243:                                              ; preds = %240
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %20, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = load i32, i32* %23, align 4
  %252 = shl i32 %250, %251
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %20, align 4
  %255 = add nsw i32 %253, %254
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = load i32, i32* %23, align 4
  %262 = sub nsw i32 8, %261
  %263 = ashr i32 %260, %262
  %264 = or i32 %252, %263
  %265 = trunc i32 %264 to i8
  %266 = load i32, i32* %22, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 %267
  store i8 %265, i8* %268, align 1
  br label %269

269:                                              ; preds = %243
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %22, align 4
  br label %240

272:                                              ; preds = %240
  br label %273

273:                                              ; preds = %272, %232
  %274 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 0
  store i8* %274, i8** %25, align 8
  %275 = load i8*, i8** %25, align 8
  %276 = load i32, i32* %17, align 4
  %277 = call i32 @c2l(i8* %275, i32 %276)
  %278 = load i8*, i8** %25, align 8
  %279 = load i32, i32* %18, align 4
  %280 = call i32 @c2l(i8* %278, i32 %279)
  br label %281

281:                                              ; preds = %273, %213
  br label %282

282:                                              ; preds = %281, %207
  %283 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %15, align 4
  %286 = xor i32 %285, %284
  store i32 %286, i32* %15, align 4
  %287 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %16, align 4
  %290 = xor i32 %289, %288
  store i32 %290, i32* %16, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %16, align 4
  %293 = load i8*, i8** %9, align 8
  %294 = load i32, i32* %21, align 4
  %295 = call i32 @l2cn(i32 %291, i32 %292, i8* %293, i32 %294)
  %296 = load i32, i32* %21, align 4
  %297 = load i8*, i8** %9, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %9, align 8
  br label %178

300:                                              ; preds = %178
  br label %301

301:                                              ; preds = %300, %176
  %302 = load i8**, i8*** %13, align 8
  %303 = load i8*, i8** %302, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 0
  store i8* %304, i8** %25, align 8
  %305 = load i32, i32* %17, align 4
  %306 = load i8*, i8** %25, align 8
  %307 = call i32 @l2c(i32 %305, i8* %306)
  %308 = load i32, i32* %18, align 4
  %309 = load i8*, i8** %25, align 8
  %310 = call i32 @l2c(i32 %308, i8* %309)
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 0, i32* %311, align 4
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %312, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %313

313:                                              ; preds = %301, %40
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @DES_encrypt1(i32*, i32*, i32) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i32) #1

declare dso_local i32 @l2cn(i32, i32, i8*, i32) #1

declare dso_local i32 @l2c(i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
