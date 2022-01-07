; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_apply_stencil_op_to_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_apply_stencil_op_to_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Bad stencilop in apply_stencil_op_to_span\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64, i64, i32, i32*)* @apply_stencil_op_to_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_stencil_op_to_span(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32* @STENCIL_ADDRESS(i64 %32, i64 %33)
  store i32* %34, i32** %18, align 8
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %345 [
    i32 130, label %36
    i32 128, label %37
    i32 129, label %87
    i32 132, label %143
    i32 133, label %213
    i32 131, label %283
  ]

36:                                               ; preds = %6
  br label %348

37:                                               ; preds = %6
  %38 = load i32, i32* %17, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  store i64 0, i64* %13, align 8
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32*, i32** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32*, i32** %18, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %41

59:                                               ; preds = %41
  br label %86

60:                                               ; preds = %37
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i32*, i32** %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32*, i32** %18, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %17, align 4
  %77 = and i32 %75, %76
  %78 = load i32*, i32** %18, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %65
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %13, align 8
  br label %61

85:                                               ; preds = %61
  br label %86

86:                                               ; preds = %85, %59
  br label %348

87:                                               ; preds = %6
  %88 = load i32, i32* %17, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  store i64 0, i64* %13, align 8
  br label %91

91:                                               ; preds = %107, %90
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i32*, i32** %12, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = load i32*, i32** %18, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %13, align 8
  br label %91

110:                                              ; preds = %91
  br label %142

111:                                              ; preds = %87
  store i64 0, i64* %13, align 8
  br label %112

112:                                              ; preds = %138, %111
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load i32*, i32** %12, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load i32*, i32** %18, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %15, align 4
  %132 = and i32 %130, %131
  %133 = or i32 %129, %132
  %134 = load i32*, i32** %18, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %133, i32* %136, align 4
  br label %137

137:                                              ; preds = %122, %116
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %13, align 8
  br label %112

141:                                              ; preds = %112
  br label %142

142:                                              ; preds = %141, %110
  br label %348

143:                                              ; preds = %6
  %144 = load i32, i32* %17, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %176

146:                                              ; preds = %143
  store i64 0, i64* %13, align 8
  br label %147

147:                                              ; preds = %172, %146
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %147
  %152 = load i32*, i32** %12, align 8
  %153 = load i64, i64* %13, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load i32*, i32** %18, align 8
  %159 = load i64, i64* %13, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 255
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32*, i32** %18, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %166, i32* %169, align 4
  br label %170

170:                                              ; preds = %164, %157
  br label %171

171:                                              ; preds = %170, %151
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %13, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %13, align 8
  br label %147

175:                                              ; preds = %147
  br label %212

176:                                              ; preds = %143
  store i64 0, i64* %13, align 8
  br label %177

177:                                              ; preds = %208, %176
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* %8, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %211

181:                                              ; preds = %177
  %182 = load i32*, i32** %12, align 8
  %183 = load i64, i64* %13, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %181
  %188 = load i32*, i32** %18, align 8
  %189 = load i64, i64* %13, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp slt i32 %192, 255
  br i1 %193, label %194, label %206

194:                                              ; preds = %187
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %14, align 4
  %197 = and i32 %195, %196
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  %201 = and i32 %198, %200
  %202 = or i32 %197, %201
  %203 = load i32*, i32** %18, align 8
  %204 = load i64, i64* %13, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 %202, i32* %205, align 4
  br label %206

206:                                              ; preds = %194, %187
  br label %207

207:                                              ; preds = %206, %181
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %13, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %13, align 8
  br label %177

211:                                              ; preds = %177
  br label %212

212:                                              ; preds = %211, %175
  br label %348

213:                                              ; preds = %6
  %214 = load i32, i32* %17, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %246

216:                                              ; preds = %213
  store i64 0, i64* %13, align 8
  br label %217

217:                                              ; preds = %242, %216
  %218 = load i64, i64* %13, align 8
  %219 = load i64, i64* %8, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %245

221:                                              ; preds = %217
  %222 = load i32*, i32** %12, align 8
  %223 = load i64, i64* %13, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %221
  %228 = load i32*, i32** %18, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = load i32, i32* %14, align 4
  %236 = sub nsw i32 %235, 1
  %237 = load i32*, i32** %18, align 8
  %238 = load i64, i64* %13, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32 %236, i32* %239, align 4
  br label %240

240:                                              ; preds = %234, %227
  br label %241

241:                                              ; preds = %240, %221
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %13, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %13, align 8
  br label %217

245:                                              ; preds = %217
  br label %282

246:                                              ; preds = %213
  store i64 0, i64* %13, align 8
  br label %247

247:                                              ; preds = %278, %246
  %248 = load i64, i64* %13, align 8
  %249 = load i64, i64* %8, align 8
  %250 = icmp ult i64 %248, %249
  br i1 %250, label %251, label %281

251:                                              ; preds = %247
  %252 = load i32*, i32** %12, align 8
  %253 = load i64, i64* %13, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %277

257:                                              ; preds = %251
  %258 = load i32*, i32** %18, align 8
  %259 = load i64, i64* %13, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %257
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* %14, align 4
  %267 = and i32 %265, %266
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %14, align 4
  %270 = sub nsw i32 %269, 1
  %271 = and i32 %268, %270
  %272 = or i32 %267, %271
  %273 = load i32*, i32** %18, align 8
  %274 = load i64, i64* %13, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 %272, i32* %275, align 4
  br label %276

276:                                              ; preds = %264, %257
  br label %277

277:                                              ; preds = %276, %251
  br label %278

278:                                              ; preds = %277
  %279 = load i64, i64* %13, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %13, align 8
  br label %247

281:                                              ; preds = %247
  br label %282

282:                                              ; preds = %281, %245
  br label %348

283:                                              ; preds = %6
  %284 = load i32, i32* %17, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %312

286:                                              ; preds = %283
  store i64 0, i64* %13, align 8
  br label %287

287:                                              ; preds = %308, %286
  %288 = load i64, i64* %13, align 8
  %289 = load i64, i64* %8, align 8
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %291, label %311

291:                                              ; preds = %287
  %292 = load i32*, i32** %12, align 8
  %293 = load i64, i64* %13, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %291
  %298 = load i32*, i32** %18, align 8
  %299 = load i64, i64* %13, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %14, align 4
  %302 = load i32, i32* %14, align 4
  %303 = xor i32 %302, -1
  %304 = load i32*, i32** %18, align 8
  %305 = load i64, i64* %13, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32 %303, i32* %306, align 4
  br label %307

307:                                              ; preds = %297, %291
  br label %308

308:                                              ; preds = %307
  %309 = load i64, i64* %13, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %13, align 8
  br label %287

311:                                              ; preds = %287
  br label %344

312:                                              ; preds = %283
  store i64 0, i64* %13, align 8
  br label %313

313:                                              ; preds = %340, %312
  %314 = load i64, i64* %13, align 8
  %315 = load i64, i64* %8, align 8
  %316 = icmp ult i64 %314, %315
  br i1 %316, label %317, label %343

317:                                              ; preds = %313
  %318 = load i32*, i32** %12, align 8
  %319 = load i64, i64* %13, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %339

323:                                              ; preds = %317
  %324 = load i32*, i32** %18, align 8
  %325 = load i64, i64* %13, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %14, align 4
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %14, align 4
  %330 = and i32 %328, %329
  %331 = load i32, i32* %16, align 4
  %332 = load i32, i32* %14, align 4
  %333 = xor i32 %332, -1
  %334 = and i32 %331, %333
  %335 = or i32 %330, %334
  %336 = load i32*, i32** %18, align 8
  %337 = load i64, i64* %13, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32 %335, i32* %338, align 4
  br label %339

339:                                              ; preds = %323, %317
  br label %340

340:                                              ; preds = %339
  %341 = load i64, i64* %13, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %13, align 8
  br label %313

343:                                              ; preds = %313
  br label %344

344:                                              ; preds = %343, %311
  br label %348

345:                                              ; preds = %6
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %347 = call i32 @gl_problem(%struct.TYPE_6__* %346, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %348

348:                                              ; preds = %345, %344, %282, %212, %142, %86, %36
  ret void
}

declare dso_local i32* @STENCIL_ADDRESS(i64, i64) #1

declare dso_local i32 @gl_problem(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
