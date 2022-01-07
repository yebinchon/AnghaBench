; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_parse_time.c_ngx_parse_http_time.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_parse_time.c_ngx_parse_http_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i32 0, align 4
@mday = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_parse_http_time(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %37, %2
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %40

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 3, i32* %15, align 4
  br label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  br label %20

40:                                               ; preds = %35, %29, %20
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %54, %40
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 32
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %43

57:                                               ; preds = %52, %43
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = icmp slt i64 %62, 18
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %700

66:                                               ; preds = %57
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 3
  br i1 %68, label %69, label %133

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp slt i32 %72, 48
  br i1 %73, label %91, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sgt i32 %77, 57
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp slt i32 %83, 48
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sgt i32 %89, 57
  br i1 %90, label %91, label %93

91:                                               ; preds = %85, %79, %74, %69
  %92 = load i32, i32* @NGX_ERROR, align 4
  store i32 %92, i32* %3, align 4
  br label %700

93:                                               ; preds = %85
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, 48
  %98 = mul nsw i32 %97, 10
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = sub nsw i32 %102, 48
  %104 = add nsw i32 %98, %103
  store i32 %104, i32* %9, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %111, label %121

111:                                              ; preds = %93
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = icmp slt i64 %116, 18
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @NGX_ERROR, align 4
  store i32 %119, i32* %3, align 4
  br label %700

120:                                              ; preds = %111
  store i32 1, i32* %15, align 4
  br label %130

121:                                              ; preds = %93
  %122 = load i8*, i8** %6, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 45
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 2, i32* %15, align 4
  br label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @NGX_ERROR, align 4
  store i32 %128, i32* %3, align 4
  br label %700

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129, %120
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  br label %133

133:                                              ; preds = %130, %66
  %134 = load i8*, i8** %6, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  switch i32 %136, label %175 [
    i32 74, label %137
    i32 70, label %154
    i32 77, label %155
    i32 65, label %163
    i32 83, label %171
    i32 79, label %172
    i32 78, label %173
    i32 68, label %174
  ]

137:                                              ; preds = %133
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 97
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %152

144:                                              ; preds = %137
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 110
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 5, i32 6
  br label %152

152:                                              ; preds = %144, %143
  %153 = phi i32 [ 0, %143 ], [ %151, %144 ]
  store i32 %153, i32* %8, align 4
  br label %177

154:                                              ; preds = %133
  store i32 1, i32* %8, align 4
  br label %177

155:                                              ; preds = %133
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 114
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 2, i32 4
  store i32 %162, i32* %8, align 4
  br label %177

163:                                              ; preds = %133
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 112
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 3, i32 7
  store i32 %170, i32* %8, align 4
  br label %177

171:                                              ; preds = %133
  store i32 8, i32* %8, align 4
  br label %177

172:                                              ; preds = %133
  store i32 9, i32* %8, align 4
  br label %177

173:                                              ; preds = %133
  store i32 10, i32* %8, align 4
  br label %177

174:                                              ; preds = %133
  store i32 11, i32* %8, align 4
  br label %177

175:                                              ; preds = %133
  %176 = load i32, i32* @NGX_ERROR, align 4
  store i32 %176, i32* %3, align 4
  br label %700

177:                                              ; preds = %174, %173, %172, %171, %163, %155, %154, %152
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 3
  store i8* %179, i8** %6, align 8
  %180 = load i32, i32* %15, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load i8*, i8** %6, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 32
  br i1 %186, label %195, label %187

187:                                              ; preds = %182, %177
  %188 = load i32, i32* %15, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i8*, i8** %6, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 45
  br i1 %194, label %195, label %197

195:                                              ; preds = %190, %182
  %196 = load i32, i32* @NGX_ERROR, align 4
  store i32 %196, i32* %3, align 4
  br label %700

197:                                              ; preds = %190, %187
  %198 = load i8*, i8** %6, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %6, align 8
  %200 = load i32, i32* %15, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %278

202:                                              ; preds = %197
  %203 = load i8*, i8** %6, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp slt i32 %205, 48
  br i1 %206, label %248, label %207

207:                                              ; preds = %202
  %208 = load i8*, i8** %6, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp sgt i32 %210, 57
  br i1 %211, label %248, label %212

212:                                              ; preds = %207
  %213 = load i8*, i8** %6, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp slt i32 %216, 48
  br i1 %217, label %248, label %218

218:                                              ; preds = %212
  %219 = load i8*, i8** %6, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp sgt i32 %222, 57
  br i1 %223, label %248, label %224

224:                                              ; preds = %218
  %225 = load i8*, i8** %6, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 2
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp slt i32 %228, 48
  br i1 %229, label %248, label %230

230:                                              ; preds = %224
  %231 = load i8*, i8** %6, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp sgt i32 %234, 57
  br i1 %235, label %248, label %236

236:                                              ; preds = %230
  %237 = load i8*, i8** %6, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 3
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp slt i32 %240, 48
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load i8*, i8** %6, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 3
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp sgt i32 %246, 57
  br i1 %247, label %248, label %250

248:                                              ; preds = %242, %236, %230, %224, %218, %212, %207, %202
  %249 = load i32, i32* @NGX_ERROR, align 4
  store i32 %249, i32* %3, align 4
  br label %700

250:                                              ; preds = %242
  %251 = load i8*, i8** %6, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = sub nsw i32 %253, 48
  %255 = mul nsw i32 %254, 1000
  %256 = load i8*, i8** %6, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 1
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = sub nsw i32 %259, 48
  %261 = mul nsw i32 %260, 100
  %262 = add nsw i32 %255, %261
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 2
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = sub nsw i32 %266, 48
  %268 = mul nsw i32 %267, 10
  %269 = add nsw i32 %262, %268
  %270 = load i8*, i8** %6, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 3
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = sub nsw i32 %273, 48
  %275 = add nsw i32 %269, %274
  store i32 %275, i32* %10, align 4
  %276 = load i8*, i8** %6, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 4
  store i8* %277, i8** %6, align 8
  br label %326

278:                                              ; preds = %197
  %279 = load i32, i32* %15, align 4
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %325

281:                                              ; preds = %278
  %282 = load i8*, i8** %6, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp slt i32 %284, 48
  br i1 %285, label %303, label %286

286:                                              ; preds = %281
  %287 = load i8*, i8** %6, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp sgt i32 %289, 57
  br i1 %290, label %303, label %291

291:                                              ; preds = %286
  %292 = load i8*, i8** %6, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 1
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp slt i32 %295, 48
  br i1 %296, label %303, label %297

297:                                              ; preds = %291
  %298 = load i8*, i8** %6, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 1
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp sgt i32 %301, 57
  br i1 %302, label %303, label %305

303:                                              ; preds = %297, %291, %286, %281
  %304 = load i32, i32* @NGX_ERROR, align 4
  store i32 %304, i32* %3, align 4
  br label %700

305:                                              ; preds = %297
  %306 = load i8*, i8** %6, align 8
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = sub nsw i32 %308, 48
  %310 = mul nsw i32 %309, 10
  %311 = load i8*, i8** %6, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 1
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = sub nsw i32 %314, 48
  %316 = add nsw i32 %310, %315
  store i32 %316, i32* %10, align 4
  %317 = load i32, i32* %10, align 4
  %318 = icmp slt i32 %317, 70
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i32 2000, i32 1900
  %321 = load i32, i32* %10, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %10, align 4
  %323 = load i8*, i8** %6, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 2
  store i8* %324, i8** %6, align 8
  br label %325

325:                                              ; preds = %305, %278
  br label %326

326:                                              ; preds = %325, %250
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %327, 3
  br i1 %328, label %329, label %390

329:                                              ; preds = %326
  %330 = load i8*, i8** %6, align 8
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp eq i32 %332, 32
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load i8*, i8** %6, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %6, align 8
  br label %337

337:                                              ; preds = %334, %329
  %338 = load i8*, i8** %6, align 8
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp slt i32 %340, 48
  br i1 %341, label %347, label %342

342:                                              ; preds = %337
  %343 = load i8*, i8** %6, align 8
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp sgt i32 %345, 57
  br i1 %346, label %347, label %349

347:                                              ; preds = %342, %337
  %348 = load i32, i32* @NGX_ERROR, align 4
  store i32 %348, i32* %3, align 4
  br label %700

349:                                              ; preds = %342
  %350 = load i8*, i8** %6, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %6, align 8
  %352 = load i8, i8* %350, align 1
  %353 = sext i8 %352 to i32
  %354 = sub nsw i32 %353, 48
  store i32 %354, i32* %9, align 4
  %355 = load i8*, i8** %6, align 8
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp ne i32 %357, 32
  br i1 %358, label %359, label %380

359:                                              ; preds = %349
  %360 = load i8*, i8** %6, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp slt i32 %362, 48
  br i1 %363, label %369, label %364

364:                                              ; preds = %359
  %365 = load i8*, i8** %6, align 8
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp sgt i32 %367, 57
  br i1 %368, label %369, label %371

369:                                              ; preds = %364, %359
  %370 = load i32, i32* @NGX_ERROR, align 4
  store i32 %370, i32* %3, align 4
  br label %700

371:                                              ; preds = %364
  %372 = load i32, i32* %9, align 4
  %373 = mul nsw i32 %372, 10
  %374 = load i8*, i8** %6, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %6, align 8
  %376 = load i8, i8* %374, align 1
  %377 = sext i8 %376 to i32
  %378 = sub nsw i32 %377, 48
  %379 = add nsw i32 %373, %378
  store i32 %379, i32* %9, align 4
  br label %380

380:                                              ; preds = %371, %349
  %381 = load i8*, i8** %7, align 8
  %382 = load i8*, i8** %6, align 8
  %383 = ptrtoint i8* %381 to i64
  %384 = ptrtoint i8* %382 to i64
  %385 = sub i64 %383, %384
  %386 = icmp slt i64 %385, 14
  br i1 %386, label %387, label %389

387:                                              ; preds = %380
  %388 = load i32, i32* @NGX_ERROR, align 4
  store i32 %388, i32* %3, align 4
  br label %700

389:                                              ; preds = %380
  br label %390

390:                                              ; preds = %389, %326
  %391 = load i8*, i8** %6, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %6, align 8
  %393 = load i8, i8* %391, align 1
  %394 = sext i8 %393 to i32
  %395 = icmp ne i32 %394, 32
  br i1 %395, label %396, label %398

396:                                              ; preds = %390
  %397 = load i32, i32* @NGX_ERROR, align 4
  store i32 %397, i32* %3, align 4
  br label %700

398:                                              ; preds = %390
  %399 = load i8*, i8** %6, align 8
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = icmp slt i32 %401, 48
  br i1 %402, label %420, label %403

403:                                              ; preds = %398
  %404 = load i8*, i8** %6, align 8
  %405 = load i8, i8* %404, align 1
  %406 = sext i8 %405 to i32
  %407 = icmp sgt i32 %406, 57
  br i1 %407, label %420, label %408

408:                                              ; preds = %403
  %409 = load i8*, i8** %6, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 1
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp slt i32 %412, 48
  br i1 %413, label %420, label %414

414:                                              ; preds = %408
  %415 = load i8*, i8** %6, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 1
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp sgt i32 %418, 57
  br i1 %419, label %420, label %422

420:                                              ; preds = %414, %408, %403, %398
  %421 = load i32, i32* @NGX_ERROR, align 4
  store i32 %421, i32* %3, align 4
  br label %700

422:                                              ; preds = %414
  %423 = load i8*, i8** %6, align 8
  %424 = load i8, i8* %423, align 1
  %425 = sext i8 %424 to i32
  %426 = sub nsw i32 %425, 48
  %427 = mul nsw i32 %426, 10
  %428 = load i8*, i8** %6, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 1
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = sub nsw i32 %431, 48
  %433 = add nsw i32 %427, %432
  store i32 %433, i32* %11, align 4
  %434 = load i8*, i8** %6, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 2
  store i8* %435, i8** %6, align 8
  %436 = load i8*, i8** %6, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %437, i8** %6, align 8
  %438 = load i8, i8* %436, align 1
  %439 = sext i8 %438 to i32
  %440 = icmp ne i32 %439, 58
  br i1 %440, label %441, label %443

441:                                              ; preds = %422
  %442 = load i32, i32* @NGX_ERROR, align 4
  store i32 %442, i32* %3, align 4
  br label %700

443:                                              ; preds = %422
  %444 = load i8*, i8** %6, align 8
  %445 = load i8, i8* %444, align 1
  %446 = sext i8 %445 to i32
  %447 = icmp slt i32 %446, 48
  br i1 %447, label %465, label %448

448:                                              ; preds = %443
  %449 = load i8*, i8** %6, align 8
  %450 = load i8, i8* %449, align 1
  %451 = sext i8 %450 to i32
  %452 = icmp sgt i32 %451, 57
  br i1 %452, label %465, label %453

453:                                              ; preds = %448
  %454 = load i8*, i8** %6, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 1
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i32
  %458 = icmp slt i32 %457, 48
  br i1 %458, label %465, label %459

459:                                              ; preds = %453
  %460 = load i8*, i8** %6, align 8
  %461 = getelementptr inbounds i8, i8* %460, i64 1
  %462 = load i8, i8* %461, align 1
  %463 = sext i8 %462 to i32
  %464 = icmp sgt i32 %463, 57
  br i1 %464, label %465, label %467

465:                                              ; preds = %459, %453, %448, %443
  %466 = load i32, i32* @NGX_ERROR, align 4
  store i32 %466, i32* %3, align 4
  br label %700

467:                                              ; preds = %459
  %468 = load i8*, i8** %6, align 8
  %469 = load i8, i8* %468, align 1
  %470 = sext i8 %469 to i32
  %471 = sub nsw i32 %470, 48
  %472 = mul nsw i32 %471, 10
  %473 = load i8*, i8** %6, align 8
  %474 = getelementptr inbounds i8, i8* %473, i64 1
  %475 = load i8, i8* %474, align 1
  %476 = sext i8 %475 to i32
  %477 = sub nsw i32 %476, 48
  %478 = add nsw i32 %472, %477
  store i32 %478, i32* %12, align 4
  %479 = load i8*, i8** %6, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 2
  store i8* %480, i8** %6, align 8
  %481 = load i8*, i8** %6, align 8
  %482 = getelementptr inbounds i8, i8* %481, i32 1
  store i8* %482, i8** %6, align 8
  %483 = load i8, i8* %481, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp ne i32 %484, 58
  br i1 %485, label %486, label %488

486:                                              ; preds = %467
  %487 = load i32, i32* @NGX_ERROR, align 4
  store i32 %487, i32* %3, align 4
  br label %700

488:                                              ; preds = %467
  %489 = load i8*, i8** %6, align 8
  %490 = load i8, i8* %489, align 1
  %491 = sext i8 %490 to i32
  %492 = icmp slt i32 %491, 48
  br i1 %492, label %510, label %493

493:                                              ; preds = %488
  %494 = load i8*, i8** %6, align 8
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp sgt i32 %496, 57
  br i1 %497, label %510, label %498

498:                                              ; preds = %493
  %499 = load i8*, i8** %6, align 8
  %500 = getelementptr inbounds i8, i8* %499, i64 1
  %501 = load i8, i8* %500, align 1
  %502 = sext i8 %501 to i32
  %503 = icmp slt i32 %502, 48
  br i1 %503, label %510, label %504

504:                                              ; preds = %498
  %505 = load i8*, i8** %6, align 8
  %506 = getelementptr inbounds i8, i8* %505, i64 1
  %507 = load i8, i8* %506, align 1
  %508 = sext i8 %507 to i32
  %509 = icmp sgt i32 %508, 57
  br i1 %509, label %510, label %512

510:                                              ; preds = %504, %498, %493, %488
  %511 = load i32, i32* @NGX_ERROR, align 4
  store i32 %511, i32* %3, align 4
  br label %700

512:                                              ; preds = %504
  %513 = load i8*, i8** %6, align 8
  %514 = load i8, i8* %513, align 1
  %515 = sext i8 %514 to i32
  %516 = sub nsw i32 %515, 48
  %517 = mul nsw i32 %516, 10
  %518 = load i8*, i8** %6, align 8
  %519 = getelementptr inbounds i8, i8* %518, i64 1
  %520 = load i8, i8* %519, align 1
  %521 = sext i8 %520 to i32
  %522 = sub nsw i32 %521, 48
  %523 = add nsw i32 %517, %522
  store i32 %523, i32* %13, align 4
  %524 = load i32, i32* %15, align 4
  %525 = icmp eq i32 %524, 3
  br i1 %525, label %526, label %610

526:                                              ; preds = %512
  %527 = load i8*, i8** %6, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 2
  store i8* %528, i8** %6, align 8
  %529 = load i8*, i8** %6, align 8
  %530 = getelementptr inbounds i8, i8* %529, i32 1
  store i8* %530, i8** %6, align 8
  %531 = load i8, i8* %529, align 1
  %532 = sext i8 %531 to i32
  %533 = icmp ne i32 %532, 32
  br i1 %533, label %534, label %536

534:                                              ; preds = %526
  %535 = load i32, i32* @NGX_ERROR, align 4
  store i32 %535, i32* %3, align 4
  br label %700

536:                                              ; preds = %526
  %537 = load i8*, i8** %6, align 8
  %538 = load i8, i8* %537, align 1
  %539 = sext i8 %538 to i32
  %540 = icmp slt i32 %539, 48
  br i1 %540, label %582, label %541

541:                                              ; preds = %536
  %542 = load i8*, i8** %6, align 8
  %543 = load i8, i8* %542, align 1
  %544 = sext i8 %543 to i32
  %545 = icmp sgt i32 %544, 57
  br i1 %545, label %582, label %546

546:                                              ; preds = %541
  %547 = load i8*, i8** %6, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 1
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp slt i32 %550, 48
  br i1 %551, label %582, label %552

552:                                              ; preds = %546
  %553 = load i8*, i8** %6, align 8
  %554 = getelementptr inbounds i8, i8* %553, i64 1
  %555 = load i8, i8* %554, align 1
  %556 = sext i8 %555 to i32
  %557 = icmp sgt i32 %556, 57
  br i1 %557, label %582, label %558

558:                                              ; preds = %552
  %559 = load i8*, i8** %6, align 8
  %560 = getelementptr inbounds i8, i8* %559, i64 2
  %561 = load i8, i8* %560, align 1
  %562 = sext i8 %561 to i32
  %563 = icmp slt i32 %562, 48
  br i1 %563, label %582, label %564

564:                                              ; preds = %558
  %565 = load i8*, i8** %6, align 8
  %566 = getelementptr inbounds i8, i8* %565, i64 2
  %567 = load i8, i8* %566, align 1
  %568 = sext i8 %567 to i32
  %569 = icmp sgt i32 %568, 57
  br i1 %569, label %582, label %570

570:                                              ; preds = %564
  %571 = load i8*, i8** %6, align 8
  %572 = getelementptr inbounds i8, i8* %571, i64 3
  %573 = load i8, i8* %572, align 1
  %574 = sext i8 %573 to i32
  %575 = icmp slt i32 %574, 48
  br i1 %575, label %582, label %576

576:                                              ; preds = %570
  %577 = load i8*, i8** %6, align 8
  %578 = getelementptr inbounds i8, i8* %577, i64 3
  %579 = load i8, i8* %578, align 1
  %580 = sext i8 %579 to i32
  %581 = icmp sgt i32 %580, 57
  br i1 %581, label %582, label %584

582:                                              ; preds = %576, %570, %564, %558, %552, %546, %541, %536
  %583 = load i32, i32* @NGX_ERROR, align 4
  store i32 %583, i32* %3, align 4
  br label %700

584:                                              ; preds = %576
  %585 = load i8*, i8** %6, align 8
  %586 = load i8, i8* %585, align 1
  %587 = sext i8 %586 to i32
  %588 = sub nsw i32 %587, 48
  %589 = mul nsw i32 %588, 1000
  %590 = load i8*, i8** %6, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 1
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i32
  %594 = sub nsw i32 %593, 48
  %595 = mul nsw i32 %594, 100
  %596 = add nsw i32 %589, %595
  %597 = load i8*, i8** %6, align 8
  %598 = getelementptr inbounds i8, i8* %597, i64 2
  %599 = load i8, i8* %598, align 1
  %600 = sext i8 %599 to i32
  %601 = sub nsw i32 %600, 48
  %602 = mul nsw i32 %601, 10
  %603 = add nsw i32 %596, %602
  %604 = load i8*, i8** %6, align 8
  %605 = getelementptr inbounds i8, i8* %604, i64 3
  %606 = load i8, i8* %605, align 1
  %607 = sext i8 %606 to i32
  %608 = sub nsw i32 %607, 48
  %609 = add nsw i32 %603, %608
  store i32 %609, i32* %10, align 4
  br label %610

610:                                              ; preds = %584, %512
  %611 = load i32, i32* %11, align 4
  %612 = icmp sgt i32 %611, 23
  br i1 %612, label %619, label %613

613:                                              ; preds = %610
  %614 = load i32, i32* %12, align 4
  %615 = icmp sgt i32 %614, 59
  br i1 %615, label %619, label %616

616:                                              ; preds = %613
  %617 = load i32, i32* %13, align 4
  %618 = icmp sgt i32 %617, 59
  br i1 %618, label %619, label %621

619:                                              ; preds = %616, %613, %610
  %620 = load i32, i32* @NGX_ERROR, align 4
  store i32 %620, i32* %3, align 4
  br label %700

621:                                              ; preds = %616
  %622 = load i32, i32* %9, align 4
  %623 = icmp eq i32 %622, 29
  br i1 %623, label %624, label %642

624:                                              ; preds = %621
  %625 = load i32, i32* %8, align 4
  %626 = icmp eq i32 %625, 1
  br i1 %626, label %627, label %642

627:                                              ; preds = %624
  %628 = load i32, i32* %10, align 4
  %629 = and i32 %628, 3
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %639, label %631

631:                                              ; preds = %627
  %632 = load i32, i32* %10, align 4
  %633 = srem i32 %632, 100
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %641

635:                                              ; preds = %631
  %636 = load i32, i32* %10, align 4
  %637 = srem i32 %636, 400
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %635, %627
  %640 = load i32, i32* @NGX_ERROR, align 4
  store i32 %640, i32* %3, align 4
  br label %700

641:                                              ; preds = %635, %631
  br label %653

642:                                              ; preds = %624, %621
  %643 = load i32, i32* %9, align 4
  %644 = load i32*, i32** @mday, align 8
  %645 = load i32, i32* %8, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i32, i32* %644, i64 %646
  %648 = load i32, i32* %647, align 4
  %649 = icmp sgt i32 %643, %648
  br i1 %649, label %650, label %652

650:                                              ; preds = %642
  %651 = load i32, i32* @NGX_ERROR, align 4
  store i32 %651, i32* %3, align 4
  br label %700

652:                                              ; preds = %642
  br label %653

653:                                              ; preds = %652, %641
  %654 = load i32, i32* %8, align 4
  %655 = add nsw i32 %654, -1
  store i32 %655, i32* %8, align 4
  %656 = icmp sle i32 %655, 0
  br i1 %656, label %657, label %662

657:                                              ; preds = %653
  %658 = load i32, i32* %8, align 4
  %659 = add nsw i32 %658, 12
  store i32 %659, i32* %8, align 4
  %660 = load i32, i32* %10, align 4
  %661 = sub nsw i32 %660, 1
  store i32 %661, i32* %10, align 4
  br label %662

662:                                              ; preds = %657, %653
  %663 = load i32, i32* %10, align 4
  %664 = mul nsw i32 365, %663
  %665 = load i32, i32* %10, align 4
  %666 = sdiv i32 %665, 4
  %667 = add nsw i32 %664, %666
  %668 = load i32, i32* %10, align 4
  %669 = sdiv i32 %668, 100
  %670 = sub nsw i32 %667, %669
  %671 = load i32, i32* %10, align 4
  %672 = sdiv i32 %671, 400
  %673 = add nsw i32 %670, %672
  %674 = load i32, i32* %8, align 4
  %675 = mul nsw i32 367, %674
  %676 = sdiv i32 %675, 12
  %677 = add nsw i32 %673, %676
  %678 = sub nsw i32 %677, 30
  %679 = load i32, i32* %9, align 4
  %680 = add nsw i32 %678, %679
  %681 = sub nsw i32 %680, 1
  %682 = sub nsw i32 %681, 719527
  %683 = add nsw i32 %682, 31
  %684 = add nsw i32 %683, 28
  %685 = mul nsw i32 %684, 86400
  %686 = load i32, i32* %11, align 4
  %687 = mul nsw i32 %686, 3600
  %688 = add nsw i32 %685, %687
  %689 = load i32, i32* %12, align 4
  %690 = mul nsw i32 %689, 60
  %691 = add nsw i32 %688, %690
  %692 = load i32, i32* %13, align 4
  %693 = add nsw i32 %691, %692
  store i32 %693, i32* %14, align 4
  %694 = load i32, i32* %14, align 4
  %695 = icmp sgt i32 %694, 2147483647
  br i1 %695, label %696, label %698

696:                                              ; preds = %662
  %697 = load i32, i32* @NGX_ERROR, align 4
  store i32 %697, i32* %3, align 4
  br label %700

698:                                              ; preds = %662
  %699 = load i32, i32* %14, align 4
  store i32 %699, i32* %3, align 4
  br label %700

700:                                              ; preds = %698, %696, %650, %639, %619, %582, %534, %510, %486, %465, %441, %420, %396, %387, %369, %347, %303, %248, %195, %175, %127, %118, %91, %64
  %701 = load i32, i32* %3, align 4
  ret i32 %701
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
