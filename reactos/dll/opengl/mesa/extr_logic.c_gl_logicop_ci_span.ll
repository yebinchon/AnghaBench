; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_ci_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_ci_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i64, i32, i32, i64*)* }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gl_logic error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_logicop_ci_span(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* @MAX_WIDTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*, i64, i32, i32, i64*)*, i32 (%struct.TYPE_9__*, i64, i32, i32, i64*)** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 %23(%struct.TYPE_9__* %24, i64 %25, i32 %26, i32 %27, i64* %19)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %424 [
    i32 140, label %33
    i32 129, label %53
    i32 139, label %73
    i32 138, label %74
    i32 134, label %99
    i32 136, label %122
    i32 143, label %146
    i32 135, label %171
    i32 132, label %200
    i32 133, label %225
    i32 128, label %254
    i32 137, label %279
    i32 141, label %308
    i32 142, label %337
    i32 130, label %366
    i32 131, label %395
  ]

33:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64*, i64** %11, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %15, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %15, align 8
  br label %34

52:                                               ; preds = %34
  br label %428

53:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 1, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %15, align 8
  br label %54

72:                                               ; preds = %54
  br label %428

73:                                               ; preds = %6
  br label %428

74:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %75

75:                                               ; preds = %95, %74
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load i32*, i32** %12, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = xor i64 %89, -1
  %91 = load i64*, i64** %11, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %85, %79
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %15, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %15, align 8
  br label %75

98:                                               ; preds = %75
  br label %428

99:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i32*, i32** %12, align 8
  %106 = load i64, i64* %15, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds i64, i64* %19, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %11, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %113, i64* %116, align 8
  br label %117

117:                                              ; preds = %110, %104
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %15, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %15, align 8
  br label %100

121:                                              ; preds = %100
  br label %428

122:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %123

123:                                              ; preds = %142, %122
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %123
  %128 = load i32*, i32** %12, align 8
  %129 = load i64, i64* %15, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i64, i64* %15, align 8
  %135 = getelementptr inbounds i64, i64* %19, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = xor i64 %136, -1
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 %137, i64* %140, align 8
  br label %141

141:                                              ; preds = %133, %127
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %15, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %15, align 8
  br label %123

145:                                              ; preds = %123
  br label %428

146:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %147

147:                                              ; preds = %167, %146
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load i32*, i32** %12, align 8
  %153 = load i64, i64* %15, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load i64, i64* %15, align 8
  %159 = getelementptr inbounds i64, i64* %19, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %11, align 8
  %162 = load i64, i64* %15, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = and i64 %164, %160
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %157, %151
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %15, align 8
  br label %147

170:                                              ; preds = %147
  br label %428

171:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %172

172:                                              ; preds = %196, %171
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* %8, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %172
  %177 = load i32*, i32** %12, align 8
  %178 = load i64, i64* %15, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %176
  %183 = load i64*, i64** %11, align 8
  %184 = load i64, i64* %15, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %15, align 8
  %188 = getelementptr inbounds i64, i64* %19, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = and i64 %186, %189
  %191 = xor i64 %190, -1
  %192 = load i64*, i64** %11, align 8
  %193 = load i64, i64* %15, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  store i64 %191, i64* %194, align 8
  br label %195

195:                                              ; preds = %182, %176
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %15, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %15, align 8
  br label %172

199:                                              ; preds = %172
  br label %428

200:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %201

201:                                              ; preds = %221, %200
  %202 = load i64, i64* %15, align 8
  %203 = load i64, i64* %8, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load i32*, i32** %12, align 8
  %207 = load i64, i64* %15, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load i64, i64* %15, align 8
  %213 = getelementptr inbounds i64, i64* %19, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %11, align 8
  %216 = load i64, i64* %15, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = or i64 %218, %214
  store i64 %219, i64* %217, align 8
  br label %220

220:                                              ; preds = %211, %205
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %15, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %15, align 8
  br label %201

224:                                              ; preds = %201
  br label %428

225:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %226

226:                                              ; preds = %250, %225
  %227 = load i64, i64* %15, align 8
  %228 = load i64, i64* %8, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %253

230:                                              ; preds = %226
  %231 = load i32*, i32** %12, align 8
  %232 = load i64, i64* %15, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %230
  %237 = load i64*, i64** %11, align 8
  %238 = load i64, i64* %15, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %15, align 8
  %242 = getelementptr inbounds i64, i64* %19, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = or i64 %240, %243
  %245 = xor i64 %244, -1
  %246 = load i64*, i64** %11, align 8
  %247 = load i64, i64* %15, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  store i64 %245, i64* %248, align 8
  br label %249

249:                                              ; preds = %236, %230
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %15, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %15, align 8
  br label %226

253:                                              ; preds = %226
  br label %428

254:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %255

255:                                              ; preds = %275, %254
  %256 = load i64, i64* %15, align 8
  %257 = load i64, i64* %8, align 8
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %278

259:                                              ; preds = %255
  %260 = load i32*, i32** %12, align 8
  %261 = load i64, i64* %15, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %259
  %266 = load i64, i64* %15, align 8
  %267 = getelementptr inbounds i64, i64* %19, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = load i64*, i64** %11, align 8
  %270 = load i64, i64* %15, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = xor i64 %272, %268
  store i64 %273, i64* %271, align 8
  br label %274

274:                                              ; preds = %265, %259
  br label %275

275:                                              ; preds = %274
  %276 = load i64, i64* %15, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %15, align 8
  br label %255

278:                                              ; preds = %255
  br label %428

279:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %280

280:                                              ; preds = %304, %279
  %281 = load i64, i64* %15, align 8
  %282 = load i64, i64* %8, align 8
  %283 = icmp ult i64 %281, %282
  br i1 %283, label %284, label %307

284:                                              ; preds = %280
  %285 = load i32*, i32** %12, align 8
  %286 = load i64, i64* %15, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %303

290:                                              ; preds = %284
  %291 = load i64*, i64** %11, align 8
  %292 = load i64, i64* %15, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* %15, align 8
  %296 = getelementptr inbounds i64, i64* %19, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = xor i64 %294, %297
  %299 = xor i64 %298, -1
  %300 = load i64*, i64** %11, align 8
  %301 = load i64, i64* %15, align 8
  %302 = getelementptr inbounds i64, i64* %300, i64 %301
  store i64 %299, i64* %302, align 8
  br label %303

303:                                              ; preds = %290, %284
  br label %304

304:                                              ; preds = %303
  %305 = load i64, i64* %15, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %15, align 8
  br label %280

307:                                              ; preds = %280
  br label %428

308:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %309

309:                                              ; preds = %333, %308
  %310 = load i64, i64* %15, align 8
  %311 = load i64, i64* %8, align 8
  %312 = icmp ult i64 %310, %311
  br i1 %312, label %313, label %336

313:                                              ; preds = %309
  %314 = load i32*, i32** %12, align 8
  %315 = load i64, i64* %15, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %313
  %320 = load i64*, i64** %11, align 8
  %321 = load i64, i64* %15, align 8
  %322 = getelementptr inbounds i64, i64* %320, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* %15, align 8
  %325 = getelementptr inbounds i64, i64* %19, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = xor i64 %326, -1
  %328 = and i64 %323, %327
  %329 = load i64*, i64** %11, align 8
  %330 = load i64, i64* %15, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  store i64 %328, i64* %331, align 8
  br label %332

332:                                              ; preds = %319, %313
  br label %333

333:                                              ; preds = %332
  %334 = load i64, i64* %15, align 8
  %335 = add i64 %334, 1
  store i64 %335, i64* %15, align 8
  br label %309

336:                                              ; preds = %309
  br label %428

337:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %338

338:                                              ; preds = %362, %337
  %339 = load i64, i64* %15, align 8
  %340 = load i64, i64* %8, align 8
  %341 = icmp ult i64 %339, %340
  br i1 %341, label %342, label %365

342:                                              ; preds = %338
  %343 = load i32*, i32** %12, align 8
  %344 = load i64, i64* %15, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %342
  %349 = load i64*, i64** %11, align 8
  %350 = load i64, i64* %15, align 8
  %351 = getelementptr inbounds i64, i64* %349, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = xor i64 %352, -1
  %354 = load i64, i64* %15, align 8
  %355 = getelementptr inbounds i64, i64* %19, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = and i64 %353, %356
  %358 = load i64*, i64** %11, align 8
  %359 = load i64, i64* %15, align 8
  %360 = getelementptr inbounds i64, i64* %358, i64 %359
  store i64 %357, i64* %360, align 8
  br label %361

361:                                              ; preds = %348, %342
  br label %362

362:                                              ; preds = %361
  %363 = load i64, i64* %15, align 8
  %364 = add i64 %363, 1
  store i64 %364, i64* %15, align 8
  br label %338

365:                                              ; preds = %338
  br label %428

366:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %367

367:                                              ; preds = %391, %366
  %368 = load i64, i64* %15, align 8
  %369 = load i64, i64* %8, align 8
  %370 = icmp ult i64 %368, %369
  br i1 %370, label %371, label %394

371:                                              ; preds = %367
  %372 = load i32*, i32** %12, align 8
  %373 = load i64, i64* %15, align 8
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %390

377:                                              ; preds = %371
  %378 = load i64*, i64** %11, align 8
  %379 = load i64, i64* %15, align 8
  %380 = getelementptr inbounds i64, i64* %378, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* %15, align 8
  %383 = getelementptr inbounds i64, i64* %19, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = xor i64 %384, -1
  %386 = or i64 %381, %385
  %387 = load i64*, i64** %11, align 8
  %388 = load i64, i64* %15, align 8
  %389 = getelementptr inbounds i64, i64* %387, i64 %388
  store i64 %386, i64* %389, align 8
  br label %390

390:                                              ; preds = %377, %371
  br label %391

391:                                              ; preds = %390
  %392 = load i64, i64* %15, align 8
  %393 = add i64 %392, 1
  store i64 %393, i64* %15, align 8
  br label %367

394:                                              ; preds = %367
  br label %428

395:                                              ; preds = %6
  store i64 0, i64* %15, align 8
  br label %396

396:                                              ; preds = %420, %395
  %397 = load i64, i64* %15, align 8
  %398 = load i64, i64* %8, align 8
  %399 = icmp ult i64 %397, %398
  br i1 %399, label %400, label %423

400:                                              ; preds = %396
  %401 = load i32*, i32** %12, align 8
  %402 = load i64, i64* %15, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %419

406:                                              ; preds = %400
  %407 = load i64*, i64** %11, align 8
  %408 = load i64, i64* %15, align 8
  %409 = getelementptr inbounds i64, i64* %407, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = xor i64 %410, -1
  %412 = load i64, i64* %15, align 8
  %413 = getelementptr inbounds i64, i64* %19, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = or i64 %411, %414
  %416 = load i64*, i64** %11, align 8
  %417 = load i64, i64* %15, align 8
  %418 = getelementptr inbounds i64, i64* %416, i64 %417
  store i64 %415, i64* %418, align 8
  br label %419

419:                                              ; preds = %406, %400
  br label %420

420:                                              ; preds = %419
  %421 = load i64, i64* %15, align 8
  %422 = add i64 %421, 1
  store i64 %422, i64* %15, align 8
  br label %396

423:                                              ; preds = %396
  br label %428

424:                                              ; preds = %6
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %426 = load i32, i32* @GL_INVALID_ENUM, align 4
  %427 = call i32 @gl_error(%struct.TYPE_9__* %425, i32 %426, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %428

428:                                              ; preds = %424, %423, %394, %365, %336, %307, %278, %253, %224, %199, %170, %145, %121, %98, %73, %72, %52
  %429 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %429)
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
