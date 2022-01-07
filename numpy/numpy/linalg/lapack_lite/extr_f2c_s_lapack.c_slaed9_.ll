; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed9_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed9_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slaed9_.i__ = internal global i32 0, align 4
@slaed9_.j = internal global i32 0, align 4
@slaed9_.temp = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SLAED9\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaed9_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %36, i32** %19, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %28, align 4
  %39 = load i32, i32* %28, align 4
  %40 = add nsw i32 1, %39
  store i32 %40, i32* %29, align 4
  %41 = load i32, i32* %29, align 4
  %42 = load i32*, i32** %20, align 8
  %43 = sext i32 %41 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %23, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 -1
  store i32* %47, i32** %23, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 -1
  store i32* %49, i32** %24, align 8
  %50 = load i32*, i32** %26, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %30, align 4
  %52 = load i32, i32* %30, align 4
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %31, align 4
  %54 = load i32, i32* %31, align 4
  %55 = load i32*, i32** %25, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %25, align 8
  %59 = load i32*, i32** %27, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %13
  %64 = load i32*, i32** %27, align 8
  store i32 -1, i32* %64, align 4
  br label %125

65:                                               ; preds = %13
  %66 = load i32*, i32** %16, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @max(i32 1, i32 %73)
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69, %65
  %77 = load i32*, i32** %27, align 8
  store i32 -2, i32* %77, align 4
  br label %124

78:                                               ; preds = %69
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @max(i32 1, i32 %80)
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load i32*, i32** %17, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @max(i32 1, i32 %89)
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85, %78
  %93 = load i32*, i32** %27, align 8
  store i32 -3, i32* %93, align 4
  br label %123

94:                                               ; preds = %85
  %95 = load i32*, i32** %18, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32*, i32** %27, align 8
  store i32 -4, i32* %101, align 4
  br label %122

102:                                              ; preds = %94
  %103 = load i32*, i32** %21, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @max(i32 1, i32 %106)
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32*, i32** %27, align 8
  store i32 -7, i32* %110, align 4
  br label %121

111:                                              ; preds = %102
  %112 = load i32*, i32** %26, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @max(i32 1, i32 %115)
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32*, i32** %27, align 8
  store i32 -12, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %111
  br label %121

121:                                              ; preds = %120, %109
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %92
  br label %124

124:                                              ; preds = %123, %76
  br label %125

125:                                              ; preds = %124, %63
  %126 = load i32*, i32** %27, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32*, i32** %27, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %32, align 4
  %133 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %32)
  store i32 0, i32* %14, align 4
  br label %481

134:                                              ; preds = %125
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 0, i32* %14, align 4
  br label %481

139:                                              ; preds = %134
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %32, align 4
  store i32 1, i32* @slaed9_.i__, align 4
  br label %142

142:                                              ; preds = %169, %139
  %143 = load i32, i32* @slaed9_.i__, align 4
  %144 = load i32, i32* %32, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  %147 = load i32*, i32** %23, align 8
  %148 = load i32, i32* @slaed9_.i__, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32*, i32** %23, align 8
  %152 = load i32, i32* @slaed9_.i__, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = call i8* @slamc3_(i32* %150, i32* %154)
  %156 = load i32*, i32** %23, align 8
  %157 = load i32, i32* @slaed9_.i__, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr i8, i8* %155, i64 %162
  %164 = ptrtoint i8* %163 to i32
  %165 = load i32*, i32** %23, align 8
  %166 = load i32, i32* @slaed9_.i__, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %146
  %170 = load i32, i32* @slaed9_.i__, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @slaed9_.i__, align 4
  br label %142

172:                                              ; preds = %142
  %173 = load i32*, i32** %17, align 8
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %32, align 4
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* @slaed9_.j, align 4
  br label %177

177:                                              ; preds = %206, %172
  %178 = load i32, i32* @slaed9_.j, align 4
  %179 = load i32, i32* %32, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %209

181:                                              ; preds = %177
  %182 = load i32*, i32** %15, align 8
  %183 = load i32*, i32** %23, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32*, i32** %24, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32*, i32** %20, align 8
  %188 = load i32, i32* @slaed9_.j, align 4
  %189 = load i32, i32* %28, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %187, i64 %192
  %194 = load i32*, i32** %22, align 8
  %195 = load i32*, i32** %19, align 8
  %196 = load i32, i32* @slaed9_.j, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32*, i32** %27, align 8
  %200 = call i32 @slaed4_(i32* %182, i32* @slaed9_.j, i32* %184, i32* %186, i32* %193, i32* %194, i32* %198, i32* %199)
  %201 = load i32*, i32** %27, align 8
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %181
  br label %480

205:                                              ; preds = %181
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* @slaed9_.j, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* @slaed9_.j, align 4
  br label %177

209:                                              ; preds = %177
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32*, i32** %15, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %257

217:                                              ; preds = %213, %209
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %32, align 4
  store i32 1, i32* @slaed9_.i__, align 4
  br label %220

220:                                              ; preds = %253, %217
  %221 = load i32, i32* @slaed9_.i__, align 4
  %222 = load i32, i32* %32, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %256

224:                                              ; preds = %220
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %33, align 4
  store i32 1, i32* @slaed9_.j, align 4
  br label %227

227:                                              ; preds = %249, %224
  %228 = load i32, i32* @slaed9_.j, align 4
  %229 = load i32, i32* %33, align 4
  %230 = icmp sle i32 %228, %229
  br i1 %230, label %231, label %252

231:                                              ; preds = %227
  %232 = load i32*, i32** %20, align 8
  %233 = load i32, i32* @slaed9_.j, align 4
  %234 = load i32, i32* @slaed9_.i__, align 4
  %235 = load i32, i32* %28, align 4
  %236 = mul nsw i32 %234, %235
  %237 = add nsw i32 %233, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %232, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %25, align 8
  %242 = load i32, i32* @slaed9_.j, align 4
  %243 = load i32, i32* @slaed9_.i__, align 4
  %244 = load i32, i32* %30, align 4
  %245 = mul nsw i32 %243, %244
  %246 = add nsw i32 %242, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %241, i64 %247
  store i32 %240, i32* %248, align 4
  br label %249

249:                                              ; preds = %231
  %250 = load i32, i32* @slaed9_.j, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @slaed9_.j, align 4
  br label %227

252:                                              ; preds = %227
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* @slaed9_.i__, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @slaed9_.i__, align 4
  br label %220

256:                                              ; preds = %220
  br label %480

257:                                              ; preds = %213
  %258 = load i32*, i32** %15, align 8
  %259 = load i32*, i32** %24, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32*, i32** %25, align 8
  %262 = load i32, i32* %31, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = call i32 @scopy_(i32* %258, i32* %260, i32* @c__1, i32* %264, i32* @c__1)
  %266 = load i32*, i32** %21, align 8
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %32, align 4
  %269 = load i32*, i32** %15, align 8
  %270 = load i32*, i32** %20, align 8
  %271 = load i32, i32* %29, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32*, i32** %24, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = call i32 @scopy_(i32* %269, i32* %273, i32* %32, i32* %275, i32* @c__1)
  %277 = load i32*, i32** %15, align 8
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %32, align 4
  store i32 1, i32* @slaed9_.j, align 4
  br label %279

279:                                              ; preds = %362, %257
  %280 = load i32, i32* @slaed9_.j, align 4
  %281 = load i32, i32* %32, align 4
  %282 = icmp sle i32 %280, %281
  br i1 %282, label %283, label %365

283:                                              ; preds = %279
  %284 = load i32, i32* @slaed9_.j, align 4
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %33, align 4
  store i32 1, i32* @slaed9_.i__, align 4
  br label %286

286:                                              ; preds = %318, %283
  %287 = load i32, i32* @slaed9_.i__, align 4
  %288 = load i32, i32* %33, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %321

290:                                              ; preds = %286
  %291 = load i32*, i32** %20, align 8
  %292 = load i32, i32* @slaed9_.i__, align 4
  %293 = load i32, i32* @slaed9_.j, align 4
  %294 = load i32, i32* %28, align 4
  %295 = mul nsw i32 %293, %294
  %296 = add nsw i32 %292, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %291, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %23, align 8
  %301 = load i32, i32* @slaed9_.i__, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %23, align 8
  %306 = load i32, i32* @slaed9_.j, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %304, %309
  %311 = sdiv i32 %299, %310
  %312 = load i32*, i32** %24, align 8
  %313 = load i32, i32* @slaed9_.i__, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 %316, %311
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %290
  %319 = load i32, i32* @slaed9_.i__, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @slaed9_.i__, align 4
  br label %286

321:                                              ; preds = %286
  %322 = load i32*, i32** %15, align 8
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* %33, align 4
  %324 = load i32, i32* @slaed9_.j, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* @slaed9_.i__, align 4
  br label %326

326:                                              ; preds = %358, %321
  %327 = load i32, i32* @slaed9_.i__, align 4
  %328 = load i32, i32* %33, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %361

330:                                              ; preds = %326
  %331 = load i32*, i32** %20, align 8
  %332 = load i32, i32* @slaed9_.i__, align 4
  %333 = load i32, i32* @slaed9_.j, align 4
  %334 = load i32, i32* %28, align 4
  %335 = mul nsw i32 %333, %334
  %336 = add nsw i32 %332, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %331, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32*, i32** %23, align 8
  %341 = load i32, i32* @slaed9_.i__, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** %23, align 8
  %346 = load i32, i32* @slaed9_.j, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = sub nsw i32 %344, %349
  %351 = sdiv i32 %339, %350
  %352 = load i32*, i32** %24, align 8
  %353 = load i32, i32* @slaed9_.i__, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = mul nsw i32 %356, %351
  store i32 %357, i32* %355, align 4
  br label %358

358:                                              ; preds = %330
  %359 = load i32, i32* @slaed9_.i__, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* @slaed9_.i__, align 4
  br label %326

361:                                              ; preds = %326
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* @slaed9_.j, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* @slaed9_.j, align 4
  br label %279

365:                                              ; preds = %279
  %366 = load i32*, i32** %15, align 8
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %32, align 4
  store i32 1, i32* @slaed9_.i__, align 4
  br label %368

368:                                              ; preds = %391, %365
  %369 = load i32, i32* @slaed9_.i__, align 4
  %370 = load i32, i32* %32, align 4
  %371 = icmp sle i32 %369, %370
  br i1 %371, label %372, label %394

372:                                              ; preds = %368
  %373 = load i32*, i32** %24, align 8
  %374 = load i32, i32* @slaed9_.i__, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 0, %377
  %379 = call i32 @sqrt(i32 %378)
  store i32 %379, i32* %34, align 4
  %380 = load i32*, i32** %25, align 8
  %381 = load i32, i32* @slaed9_.i__, align 4
  %382 = load i32, i32* %30, align 4
  %383 = add nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %380, i64 %384
  %386 = call i32 @r_sign(i32* %34, i32* %385)
  %387 = load i32*, i32** %24, align 8
  %388 = load i32, i32* @slaed9_.i__, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  store i32 %386, i32* %390, align 4
  br label %391

391:                                              ; preds = %372
  %392 = load i32, i32* @slaed9_.i__, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* @slaed9_.i__, align 4
  br label %368

394:                                              ; preds = %368
  %395 = load i32*, i32** %15, align 8
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %32, align 4
  store i32 1, i32* @slaed9_.j, align 4
  br label %397

397:                                              ; preds = %476, %394
  %398 = load i32, i32* @slaed9_.j, align 4
  %399 = load i32, i32* %32, align 4
  %400 = icmp sle i32 %398, %399
  br i1 %400, label %401, label %479

401:                                              ; preds = %397
  %402 = load i32*, i32** %15, align 8
  %403 = load i32, i32* %402, align 4
  store i32 %403, i32* %33, align 4
  store i32 1, i32* @slaed9_.i__, align 4
  br label %404

404:                                              ; preds = %432, %401
  %405 = load i32, i32* @slaed9_.i__, align 4
  %406 = load i32, i32* %33, align 4
  %407 = icmp sle i32 %405, %406
  br i1 %407, label %408, label %435

408:                                              ; preds = %404
  %409 = load i32*, i32** %24, align 8
  %410 = load i32, i32* @slaed9_.i__, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i32*, i32** %20, align 8
  %415 = load i32, i32* @slaed9_.i__, align 4
  %416 = load i32, i32* @slaed9_.j, align 4
  %417 = load i32, i32* %28, align 4
  %418 = mul nsw i32 %416, %417
  %419 = add nsw i32 %415, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %414, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = sdiv i32 %413, %422
  %424 = load i32*, i32** %20, align 8
  %425 = load i32, i32* @slaed9_.i__, align 4
  %426 = load i32, i32* @slaed9_.j, align 4
  %427 = load i32, i32* %28, align 4
  %428 = mul nsw i32 %426, %427
  %429 = add nsw i32 %425, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %424, i64 %430
  store i32 %423, i32* %431, align 4
  br label %432

432:                                              ; preds = %408
  %433 = load i32, i32* @slaed9_.i__, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* @slaed9_.i__, align 4
  br label %404

435:                                              ; preds = %404
  %436 = load i32*, i32** %15, align 8
  %437 = load i32*, i32** %20, align 8
  %438 = load i32, i32* @slaed9_.j, align 4
  %439 = load i32, i32* %28, align 4
  %440 = mul nsw i32 %438, %439
  %441 = add nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %437, i64 %442
  %444 = call i8* @snrm2_(i32* %436, i32* %443, i32* @c__1)
  %445 = ptrtoint i8* %444 to i32
  store i32 %445, i32* @slaed9_.temp, align 4
  %446 = load i32*, i32** %15, align 8
  %447 = load i32, i32* %446, align 4
  store i32 %447, i32* %33, align 4
  store i32 1, i32* @slaed9_.i__, align 4
  br label %448

448:                                              ; preds = %472, %435
  %449 = load i32, i32* @slaed9_.i__, align 4
  %450 = load i32, i32* %33, align 4
  %451 = icmp sle i32 %449, %450
  br i1 %451, label %452, label %475

452:                                              ; preds = %448
  %453 = load i32*, i32** %20, align 8
  %454 = load i32, i32* @slaed9_.i__, align 4
  %455 = load i32, i32* @slaed9_.j, align 4
  %456 = load i32, i32* %28, align 4
  %457 = mul nsw i32 %455, %456
  %458 = add nsw i32 %454, %457
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %453, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @slaed9_.temp, align 4
  %463 = sdiv i32 %461, %462
  %464 = load i32*, i32** %25, align 8
  %465 = load i32, i32* @slaed9_.i__, align 4
  %466 = load i32, i32* @slaed9_.j, align 4
  %467 = load i32, i32* %30, align 4
  %468 = mul nsw i32 %466, %467
  %469 = add nsw i32 %465, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %464, i64 %470
  store i32 %463, i32* %471, align 4
  br label %472

472:                                              ; preds = %452
  %473 = load i32, i32* @slaed9_.i__, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* @slaed9_.i__, align 4
  br label %448

475:                                              ; preds = %448
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* @slaed9_.j, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* @slaed9_.j, align 4
  br label %397

479:                                              ; preds = %397
  br label %480

480:                                              ; preds = %479, %256, %204
  store i32 0, i32* %14, align 4
  br label %481

481:                                              ; preds = %480, %138, %129
  %482 = load i32, i32* %14, align 4
  ret i32 %482
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i8* @slamc3_(i32*, i32*) #1

declare dso_local i32 @slaed4_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @scopy_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @r_sign(i32*, i32*) #1

declare dso_local i8* @snrm2_(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
