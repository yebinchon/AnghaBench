; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_ci_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_ci_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i64, i32*, i32*, i64*, i32*)* }

@PB_SIZE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"gl_logic_pixels error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_logicop_ci_pixels(%struct.TYPE_9__* %0, i64 %1, i32* %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* @PB_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*, i64, i32*, i32*, i64*, i32*)*, i32 (%struct.TYPE_9__*, i64, i32*, i32*, i64*, i32*)** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 %23(%struct.TYPE_9__* %24, i64 %25, i32* %26, i32* %27, i64* %19, i32* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %425 [
    i32 140, label %34
    i32 129, label %54
    i32 139, label %74
    i32 138, label %75
    i32 134, label %100
    i32 136, label %123
    i32 143, label %147
    i32 135, label %172
    i32 132, label %201
    i32 133, label %226
    i32 128, label %255
    i32 137, label %280
    i32 141, label %309
    i32 142, label %338
    i32 130, label %367
    i32 131, label %396
  ]

34:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32*, i32** %12, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %15, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %15, align 8
  br label %35

53:                                               ; preds = %35
  br label %429

54:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32*, i32** %12, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 1, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %15, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %15, align 8
  br label %55

73:                                               ; preds = %55
  br label %429

74:                                               ; preds = %6
  br label %429

75:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = xor i64 %90, -1
  %92 = load i64*, i64** %11, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %86, %80
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %15, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %15, align 8
  br label %76

99:                                               ; preds = %76
  br label %429

100:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %101

101:                                              ; preds = %119, %100
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load i32*, i32** %12, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds i64, i64* %19, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %111, %105
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %15, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %15, align 8
  br label %101

122:                                              ; preds = %101
  br label %429

123:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %8, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i32*, i32** %12, align 8
  %130 = load i64, i64* %15, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds i64, i64* %19, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = xor i64 %137, -1
  %139 = load i64*, i64** %11, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  store i64 %138, i64* %141, align 8
  br label %142

142:                                              ; preds = %134, %128
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %15, align 8
  br label %124

146:                                              ; preds = %124
  br label %429

147:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %148

148:                                              ; preds = %168, %147
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %8, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %148
  %153 = load i32*, i32** %12, align 8
  %154 = load i64, i64* %15, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load i64, i64* %15, align 8
  %160 = getelementptr inbounds i64, i64* %19, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64*, i64** %11, align 8
  %163 = load i64, i64* %15, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = and i64 %165, %161
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %158, %152
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %15, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %15, align 8
  br label %148

171:                                              ; preds = %148
  br label %429

172:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %173

173:                                              ; preds = %197, %172
  %174 = load i64, i64* %15, align 8
  %175 = load i64, i64* %8, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %200

177:                                              ; preds = %173
  %178 = load i32*, i32** %12, align 8
  %179 = load i64, i64* %15, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %177
  %184 = load i64*, i64** %11, align 8
  %185 = load i64, i64* %15, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %15, align 8
  %189 = getelementptr inbounds i64, i64* %19, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = and i64 %187, %190
  %192 = xor i64 %191, -1
  %193 = load i64*, i64** %11, align 8
  %194 = load i64, i64* %15, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  store i64 %192, i64* %195, align 8
  br label %196

196:                                              ; preds = %183, %177
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %15, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %15, align 8
  br label %173

200:                                              ; preds = %173
  br label %429

201:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %202

202:                                              ; preds = %222, %201
  %203 = load i64, i64* %15, align 8
  %204 = load i64, i64* %8, align 8
  %205 = icmp ult i64 %203, %204
  br i1 %205, label %206, label %225

206:                                              ; preds = %202
  %207 = load i32*, i32** %12, align 8
  %208 = load i64, i64* %15, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load i64, i64* %15, align 8
  %214 = getelementptr inbounds i64, i64* %19, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %11, align 8
  %217 = load i64, i64* %15, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = or i64 %219, %215
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %212, %206
  br label %222

222:                                              ; preds = %221
  %223 = load i64, i64* %15, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %15, align 8
  br label %202

225:                                              ; preds = %202
  br label %429

226:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %227

227:                                              ; preds = %251, %226
  %228 = load i64, i64* %15, align 8
  %229 = load i64, i64* %8, align 8
  %230 = icmp ult i64 %228, %229
  br i1 %230, label %231, label %254

231:                                              ; preds = %227
  %232 = load i32*, i32** %12, align 8
  %233 = load i64, i64* %15, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %231
  %238 = load i64*, i64** %11, align 8
  %239 = load i64, i64* %15, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %15, align 8
  %243 = getelementptr inbounds i64, i64* %19, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = or i64 %241, %244
  %246 = xor i64 %245, -1
  %247 = load i64*, i64** %11, align 8
  %248 = load i64, i64* %15, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  store i64 %246, i64* %249, align 8
  br label %250

250:                                              ; preds = %237, %231
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %15, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %15, align 8
  br label %227

254:                                              ; preds = %227
  br label %429

255:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %256

256:                                              ; preds = %276, %255
  %257 = load i64, i64* %15, align 8
  %258 = load i64, i64* %8, align 8
  %259 = icmp ult i64 %257, %258
  br i1 %259, label %260, label %279

260:                                              ; preds = %256
  %261 = load i32*, i32** %12, align 8
  %262 = load i64, i64* %15, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %260
  %267 = load i64, i64* %15, align 8
  %268 = getelementptr inbounds i64, i64* %19, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = load i64*, i64** %11, align 8
  %271 = load i64, i64* %15, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = xor i64 %273, %269
  store i64 %274, i64* %272, align 8
  br label %275

275:                                              ; preds = %266, %260
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %15, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %15, align 8
  br label %256

279:                                              ; preds = %256
  br label %429

280:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %281

281:                                              ; preds = %305, %280
  %282 = load i64, i64* %15, align 8
  %283 = load i64, i64* %8, align 8
  %284 = icmp ult i64 %282, %283
  br i1 %284, label %285, label %308

285:                                              ; preds = %281
  %286 = load i32*, i32** %12, align 8
  %287 = load i64, i64* %15, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %285
  %292 = load i64*, i64** %11, align 8
  %293 = load i64, i64* %15, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* %15, align 8
  %297 = getelementptr inbounds i64, i64* %19, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = xor i64 %295, %298
  %300 = xor i64 %299, -1
  %301 = load i64*, i64** %11, align 8
  %302 = load i64, i64* %15, align 8
  %303 = getelementptr inbounds i64, i64* %301, i64 %302
  store i64 %300, i64* %303, align 8
  br label %304

304:                                              ; preds = %291, %285
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %15, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %15, align 8
  br label %281

308:                                              ; preds = %281
  br label %429

309:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %310

310:                                              ; preds = %334, %309
  %311 = load i64, i64* %15, align 8
  %312 = load i64, i64* %8, align 8
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %337

314:                                              ; preds = %310
  %315 = load i32*, i32** %12, align 8
  %316 = load i64, i64* %15, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %314
  %321 = load i64*, i64** %11, align 8
  %322 = load i64, i64* %15, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %15, align 8
  %326 = getelementptr inbounds i64, i64* %19, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = xor i64 %327, -1
  %329 = and i64 %324, %328
  %330 = load i64*, i64** %11, align 8
  %331 = load i64, i64* %15, align 8
  %332 = getelementptr inbounds i64, i64* %330, i64 %331
  store i64 %329, i64* %332, align 8
  br label %333

333:                                              ; preds = %320, %314
  br label %334

334:                                              ; preds = %333
  %335 = load i64, i64* %15, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %15, align 8
  br label %310

337:                                              ; preds = %310
  br label %429

338:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %339

339:                                              ; preds = %363, %338
  %340 = load i64, i64* %15, align 8
  %341 = load i64, i64* %8, align 8
  %342 = icmp ult i64 %340, %341
  br i1 %342, label %343, label %366

343:                                              ; preds = %339
  %344 = load i32*, i32** %12, align 8
  %345 = load i64, i64* %15, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %362

349:                                              ; preds = %343
  %350 = load i64*, i64** %11, align 8
  %351 = load i64, i64* %15, align 8
  %352 = getelementptr inbounds i64, i64* %350, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = xor i64 %353, -1
  %355 = load i64, i64* %15, align 8
  %356 = getelementptr inbounds i64, i64* %19, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = and i64 %354, %357
  %359 = load i64*, i64** %11, align 8
  %360 = load i64, i64* %15, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  store i64 %358, i64* %361, align 8
  br label %362

362:                                              ; preds = %349, %343
  br label %363

363:                                              ; preds = %362
  %364 = load i64, i64* %15, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* %15, align 8
  br label %339

366:                                              ; preds = %339
  br label %429

367:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %368

368:                                              ; preds = %392, %367
  %369 = load i64, i64* %15, align 8
  %370 = load i64, i64* %8, align 8
  %371 = icmp ult i64 %369, %370
  br i1 %371, label %372, label %395

372:                                              ; preds = %368
  %373 = load i32*, i32** %12, align 8
  %374 = load i64, i64* %15, align 8
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %391

378:                                              ; preds = %372
  %379 = load i64*, i64** %11, align 8
  %380 = load i64, i64* %15, align 8
  %381 = getelementptr inbounds i64, i64* %379, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* %15, align 8
  %384 = getelementptr inbounds i64, i64* %19, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = xor i64 %385, -1
  %387 = or i64 %382, %386
  %388 = load i64*, i64** %11, align 8
  %389 = load i64, i64* %15, align 8
  %390 = getelementptr inbounds i64, i64* %388, i64 %389
  store i64 %387, i64* %390, align 8
  br label %391

391:                                              ; preds = %378, %372
  br label %392

392:                                              ; preds = %391
  %393 = load i64, i64* %15, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %15, align 8
  br label %368

395:                                              ; preds = %368
  br label %429

396:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %397

397:                                              ; preds = %421, %396
  %398 = load i64, i64* %15, align 8
  %399 = load i64, i64* %8, align 8
  %400 = icmp ult i64 %398, %399
  br i1 %400, label %401, label %424

401:                                              ; preds = %397
  %402 = load i32*, i32** %12, align 8
  %403 = load i64, i64* %15, align 8
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %420

407:                                              ; preds = %401
  %408 = load i64*, i64** %11, align 8
  %409 = load i64, i64* %15, align 8
  %410 = getelementptr inbounds i64, i64* %408, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = xor i64 %411, -1
  %413 = load i64, i64* %15, align 8
  %414 = getelementptr inbounds i64, i64* %19, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = or i64 %412, %415
  %417 = load i64*, i64** %11, align 8
  %418 = load i64, i64* %15, align 8
  %419 = getelementptr inbounds i64, i64* %417, i64 %418
  store i64 %416, i64* %419, align 8
  br label %420

420:                                              ; preds = %407, %401
  br label %421

421:                                              ; preds = %420
  %422 = load i64, i64* %15, align 8
  %423 = add i64 %422, 1
  store i64 %423, i64* %15, align 8
  br label %397

424:                                              ; preds = %397
  br label %429

425:                                              ; preds = %6
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %427 = load i32, i32* @GL_INVALID_ENUM, align 4
  %428 = call i32 @gl_error(%struct.TYPE_9__* %426, i32 %427, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %429

429:                                              ; preds = %425, %424, %395, %366, %337, %308, %279, %254, %225, %200, %171, %146, %122, %99, %74, %73, %53
  %430 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %430)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_error(%struct.TYPE_9__*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
