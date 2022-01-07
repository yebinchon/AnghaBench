; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_sub_part_words.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_sub_part_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MASK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_sub_part_words(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @bn_sub_words(i32* %19, i32* %20, i32* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %320

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %130

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %124, %43
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* @BN_MASK2, align 4
  %53 = and i32 %51, %52
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %129

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 0, %68
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* @BN_MASK2, align 4
  %73 = and i32 %71, %72
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %129

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* @BN_MASK2, align 4
  %93 = and i32 %91, %92
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %129

104:                                              ; preds = %99
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 0, %108
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* @BN_MASK2, align 4
  %113 = and i32 %111, %112
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %104
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %129

124:                                              ; preds = %119
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32* %126, i32** %9, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  store i32* %128, i32** %7, align 8
  br label %44

129:                                              ; preds = %123, %103, %83, %63
  br label %318

130:                                              ; preds = %28
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %211, %130
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %217

135:                                              ; preds = %132
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* @BN_MASK2, align 4
  %143 = and i32 %141, %142
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %148, %135
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %11, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %217

154:                                              ; preds = %149
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %12, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* @BN_MASK2, align 4
  %162 = and i32 %160, %161
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %167, %154
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %11, align 4
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %217

173:                                              ; preds = %168
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %12, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* @BN_MASK2, align 4
  %181 = and i32 %179, %180
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %186, %173
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %11, align 4
  %190 = icmp sle i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %217

192:                                              ; preds = %187
  %193 = load i32*, i32** %8, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %12, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load i32, i32* @BN_MASK2, align 4
  %200 = and i32 %198, %199
  %201 = load i32*, i32** %7, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %192
  store i32 0, i32* %12, align 4
  br label %206

206:                                              ; preds = %205, %192
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %11, align 4
  %209 = icmp sle i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %217

211:                                              ; preds = %206
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %14, align 4
  %213 = load i32*, i32** %8, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  store i32* %214, i32** %8, align 8
  %215 = load i32*, i32** %7, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 4
  store i32* %216, i32** %7, align 8
  br label %132

217:                                              ; preds = %210, %191, %172, %153, %132
  %218 = load i32, i32* %11, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %267

220:                                              ; preds = %217
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp sgt i32 %221, %222
  br i1 %223, label %224, label %266

224:                                              ; preds = %220
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %11, align 4
  %227 = sub nsw i32 %225, %226
  switch i32 %227, label %261 [
    i32 1, label %228
    i32 2, label %239
    i32 3, label %250
  ]

228:                                              ; preds = %224
  %229 = load i32*, i32** %8, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %11, align 4
  %236 = icmp sle i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  br label %261

238:                                              ; preds = %228
  br label %239

239:                                              ; preds = %224, %238
  %240 = load i32*, i32** %8, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %7, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %11, align 4
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  br label %261

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %224, %249
  %251 = load i32*, i32** %8, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %7, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %11, align 4
  %258 = icmp sle i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %250
  br label %261

260:                                              ; preds = %250
  br label %261

261:                                              ; preds = %260, %224, %259, %248, %237
  %262 = load i32*, i32** %8, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 4
  store i32* %263, i32** %8, align 8
  %264 = load i32*, i32** %7, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 4
  store i32* %265, i32** %7, align 8
  br label %266

266:                                              ; preds = %261, %220
  br label %267

267:                                              ; preds = %266, %217
  %268 = load i32, i32* %11, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %317

270:                                              ; preds = %267
  br label %271

271:                                              ; preds = %311, %270
  %272 = load i32*, i32** %8, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %7, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %11, align 4
  %279 = icmp sle i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  br label %316

281:                                              ; preds = %271
  %282 = load i32*, i32** %8, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %7, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %11, align 4
  %289 = icmp sle i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %281
  br label %316

291:                                              ; preds = %281
  %292 = load i32*, i32** %8, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %7, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* %11, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %11, align 4
  %299 = icmp sle i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %291
  br label %316

301:                                              ; preds = %291
  %302 = load i32*, i32** %8, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 3
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %7, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 3
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %11, align 4
  %309 = icmp sle i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %301
  br label %316

311:                                              ; preds = %301
  %312 = load i32*, i32** %8, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 4
  store i32* %313, i32** %8, align 8
  %314 = load i32*, i32** %7, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 4
  store i32* %315, i32** %7, align 8
  br label %271

316:                                              ; preds = %310, %300, %290, %280
  br label %317

317:                                              ; preds = %316, %267
  br label %318

318:                                              ; preds = %317, %129
  %319 = load i32, i32* %12, align 4
  store i32 %319, i32* %6, align 4
  br label %320

320:                                              ; preds = %318, %26
  %321 = load i32, i32* %6, align 4
  ret i32 %321
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bn_sub_words(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
