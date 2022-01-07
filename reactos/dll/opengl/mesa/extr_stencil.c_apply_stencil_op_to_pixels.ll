; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_apply_stencil_op_to_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_apply_stencil_op_to_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Bad stencilop in apply_stencil_op_to_pixels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64*, i64*, i32, i32*)* @apply_stencil_op_to_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_stencil_op_to_pixels(%struct.TYPE_6__* %0, i64 %1, i64* %2, i64* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  store i32 %35, i32* %16, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %404 [
    i32 130, label %41
    i32 128, label %42
    i32 129, label %104
    i32 132, label %171
    i32 133, label %252
    i32 131, label %333
  ]

41:                                               ; preds = %6
  br label %407

42:                                               ; preds = %6
  %43 = load i32, i32* %16, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %42
  store i64 0, i64* %13, align 8
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32*, i32** %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32* @STENCIL_ADDRESS(i64 %60, i64 %64)
  store i32* %65, i32** %17, align 8
  %66 = load i32*, i32** %17, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %50
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %13, align 8
  br label %46

71:                                               ; preds = %46
  br label %103

72:                                               ; preds = %42
  store i64 0, i64* %13, align 8
  br label %73

73:                                               ; preds = %99, %72
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %10, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32* @STENCIL_ADDRESS(i64 %87, i64 %91)
  store i32* %92, i32** %18, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %93, %95
  %97 = load i32*, i32** %18, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %83, %77
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %73

102:                                              ; preds = %73
  br label %103

103:                                              ; preds = %102, %71
  br label %407

104:                                              ; preds = %6
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %104
  store i64 0, i64* %13, align 8
  br label %108

108:                                              ; preds = %131, %107
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i32*, i32** %12, align 8
  %114 = load i64, i64* %13, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %10, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = call i32* @STENCIL_ADDRESS(i64 %122, i64 %126)
  store i32* %127, i32** %19, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %19, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %118, %112
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8
  br label %108

134:                                              ; preds = %108
  br label %170

135:                                              ; preds = %104
  store i64 0, i64* %13, align 8
  br label %136

136:                                              ; preds = %166, %135
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %8, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %169

140:                                              ; preds = %136
  %141 = load i32*, i32** %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %140
  %147 = load i64*, i64** %9, align 8
  %148 = load i64, i64* %13, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %10, align 8
  %152 = load i64, i64* %13, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i32* @STENCIL_ADDRESS(i64 %150, i64 %154)
  store i32* %155, i32** %20, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load i32*, i32** %20, align 8
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %156, %158
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %160, %161
  %163 = or i32 %159, %162
  %164 = load i32*, i32** %20, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %146, %140
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %13, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %13, align 8
  br label %136

169:                                              ; preds = %136
  br label %170

170:                                              ; preds = %169, %134
  br label %407

171:                                              ; preds = %6
  %172 = load i32, i32* %16, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %209

174:                                              ; preds = %171
  store i64 0, i64* %13, align 8
  br label %175

175:                                              ; preds = %205, %174
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %8, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %208

179:                                              ; preds = %175
  %180 = load i32*, i32** %12, align 8
  %181 = load i64, i64* %13, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %179
  %186 = load i64*, i64** %9, align 8
  %187 = load i64, i64* %13, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %10, align 8
  %191 = load i64, i64* %13, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = call i32* @STENCIL_ADDRESS(i64 %189, i64 %193)
  store i32* %194, i32** %21, align 8
  %195 = load i32*, i32** %21, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %196, 255
  br i1 %197, label %198, label %203

198:                                              ; preds = %185
  %199 = load i32*, i32** %21, align 8
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  %202 = load i32*, i32** %21, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %185
  br label %204

204:                                              ; preds = %203, %179
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %13, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %13, align 8
  br label %175

208:                                              ; preds = %175
  br label %251

209:                                              ; preds = %171
  store i64 0, i64* %13, align 8
  br label %210

210:                                              ; preds = %247, %209
  %211 = load i64, i64* %13, align 8
  %212 = load i64, i64* %8, align 8
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %250

214:                                              ; preds = %210
  %215 = load i32*, i32** %12, align 8
  %216 = load i64, i64* %13, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %246

220:                                              ; preds = %214
  %221 = load i64*, i64** %9, align 8
  %222 = load i64, i64* %13, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load i64*, i64** %10, align 8
  %226 = load i64, i64* %13, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = call i32* @STENCIL_ADDRESS(i64 %224, i64 %228)
  store i32* %229, i32** %22, align 8
  %230 = load i32*, i32** %22, align 8
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %231, 255
  br i1 %232, label %233, label %245

233:                                              ; preds = %220
  %234 = load i32, i32* %16, align 4
  %235 = load i32*, i32** %22, align 8
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %234, %236
  %238 = load i32, i32* %15, align 4
  %239 = load i32*, i32** %22, align 8
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  %242 = and i32 %238, %241
  %243 = or i32 %237, %242
  %244 = load i32*, i32** %22, align 8
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %233, %220
  br label %246

246:                                              ; preds = %245, %214
  br label %247

247:                                              ; preds = %246
  %248 = load i64, i64* %13, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %13, align 8
  br label %210

250:                                              ; preds = %210
  br label %251

251:                                              ; preds = %250, %208
  br label %407

252:                                              ; preds = %6
  %253 = load i32, i32* %16, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %290

255:                                              ; preds = %252
  store i64 0, i64* %13, align 8
  br label %256

256:                                              ; preds = %286, %255
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* %8, align 8
  %259 = icmp ult i64 %257, %258
  br i1 %259, label %260, label %289

260:                                              ; preds = %256
  %261 = load i32*, i32** %12, align 8
  %262 = load i64, i64* %13, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %260
  %267 = load i64*, i64** %9, align 8
  %268 = load i64, i64* %13, align 8
  %269 = getelementptr inbounds i64, i64* %267, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64*, i64** %10, align 8
  %272 = load i64, i64* %13, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = call i32* @STENCIL_ADDRESS(i64 %270, i64 %274)
  store i32* %275, i32** %23, align 8
  %276 = load i32*, i32** %23, align 8
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %266
  %280 = load i32*, i32** %23, align 8
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %281, 1
  %283 = load i32*, i32** %23, align 8
  store i32 %282, i32* %283, align 4
  br label %284

284:                                              ; preds = %279, %266
  br label %285

285:                                              ; preds = %284, %260
  br label %286

286:                                              ; preds = %285
  %287 = load i64, i64* %13, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %13, align 8
  br label %256

289:                                              ; preds = %256
  br label %332

290:                                              ; preds = %252
  store i64 0, i64* %13, align 8
  br label %291

291:                                              ; preds = %328, %290
  %292 = load i64, i64* %13, align 8
  %293 = load i64, i64* %8, align 8
  %294 = icmp ult i64 %292, %293
  br i1 %294, label %295, label %331

295:                                              ; preds = %291
  %296 = load i32*, i32** %12, align 8
  %297 = load i64, i64* %13, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %327

301:                                              ; preds = %295
  %302 = load i64*, i64** %9, align 8
  %303 = load i64, i64* %13, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = load i64*, i64** %10, align 8
  %307 = load i64, i64* %13, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = call i32* @STENCIL_ADDRESS(i64 %305, i64 %309)
  store i32* %310, i32** %24, align 8
  %311 = load i32*, i32** %24, align 8
  %312 = load i32, i32* %311, align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %301
  %315 = load i32, i32* %16, align 4
  %316 = load i32*, i32** %24, align 8
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %315, %317
  %319 = load i32, i32* %15, align 4
  %320 = load i32*, i32** %24, align 8
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %321, 1
  %323 = and i32 %319, %322
  %324 = or i32 %318, %323
  %325 = load i32*, i32** %24, align 8
  store i32 %324, i32* %325, align 4
  br label %326

326:                                              ; preds = %314, %301
  br label %327

327:                                              ; preds = %326, %295
  br label %328

328:                                              ; preds = %327
  %329 = load i64, i64* %13, align 8
  %330 = add i64 %329, 1
  store i64 %330, i64* %13, align 8
  br label %291

331:                                              ; preds = %291
  br label %332

332:                                              ; preds = %331, %289
  br label %407

333:                                              ; preds = %6
  %334 = load i32, i32* %16, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %366

336:                                              ; preds = %333
  store i64 0, i64* %13, align 8
  br label %337

337:                                              ; preds = %362, %336
  %338 = load i64, i64* %13, align 8
  %339 = load i64, i64* %8, align 8
  %340 = icmp ult i64 %338, %339
  br i1 %340, label %341, label %365

341:                                              ; preds = %337
  %342 = load i32*, i32** %12, align 8
  %343 = load i64, i64* %13, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %361

347:                                              ; preds = %341
  %348 = load i64*, i64** %9, align 8
  %349 = load i64, i64* %13, align 8
  %350 = getelementptr inbounds i64, i64* %348, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = load i64*, i64** %10, align 8
  %353 = load i64, i64* %13, align 8
  %354 = getelementptr inbounds i64, i64* %352, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = call i32* @STENCIL_ADDRESS(i64 %351, i64 %355)
  store i32* %356, i32** %25, align 8
  %357 = load i32*, i32** %25, align 8
  %358 = load i32, i32* %357, align 4
  %359 = xor i32 %358, -1
  %360 = load i32*, i32** %25, align 8
  store i32 %359, i32* %360, align 4
  br label %361

361:                                              ; preds = %347, %341
  br label %362

362:                                              ; preds = %361
  %363 = load i64, i64* %13, align 8
  %364 = add i64 %363, 1
  store i64 %364, i64* %13, align 8
  br label %337

365:                                              ; preds = %337
  br label %403

366:                                              ; preds = %333
  store i64 0, i64* %13, align 8
  br label %367

367:                                              ; preds = %399, %366
  %368 = load i64, i64* %13, align 8
  %369 = load i64, i64* %8, align 8
  %370 = icmp ult i64 %368, %369
  br i1 %370, label %371, label %402

371:                                              ; preds = %367
  %372 = load i32*, i32** %12, align 8
  %373 = load i64, i64* %13, align 8
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %398

377:                                              ; preds = %371
  %378 = load i64*, i64** %9, align 8
  %379 = load i64, i64* %13, align 8
  %380 = getelementptr inbounds i64, i64* %378, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = load i64*, i64** %10, align 8
  %383 = load i64, i64* %13, align 8
  %384 = getelementptr inbounds i64, i64* %382, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = call i32* @STENCIL_ADDRESS(i64 %381, i64 %385)
  store i32* %386, i32** %26, align 8
  %387 = load i32, i32* %16, align 4
  %388 = load i32*, i32** %26, align 8
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %387, %389
  %391 = load i32, i32* %15, align 4
  %392 = load i32*, i32** %26, align 8
  %393 = load i32, i32* %392, align 4
  %394 = xor i32 %393, -1
  %395 = and i32 %391, %394
  %396 = or i32 %390, %395
  %397 = load i32*, i32** %26, align 8
  store i32 %396, i32* %397, align 4
  br label %398

398:                                              ; preds = %377, %371
  br label %399

399:                                              ; preds = %398
  %400 = load i64, i64* %13, align 8
  %401 = add i64 %400, 1
  store i64 %401, i64* %13, align 8
  br label %367

402:                                              ; preds = %367
  br label %403

403:                                              ; preds = %402, %365
  br label %407

404:                                              ; preds = %6
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %406 = call i32 @gl_problem(%struct.TYPE_6__* %405, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %407

407:                                              ; preds = %404, %403, %332, %251, %170, %103, %41
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
