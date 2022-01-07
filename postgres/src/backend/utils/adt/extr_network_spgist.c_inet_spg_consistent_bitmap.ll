; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_spgist.c_inet_spg_consistent_bitmap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_spgist.c_inet_spg_consistent_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*, i32)* @inet_spg_consistent_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_spg_consistent_bitmap(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %21

20:                                               ; preds = %4
  store i32 15, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ip_bits(i32* %22)
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %380, %21
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %383

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @DatumGetInetPP(i32 %34)
  store i32* %35, i32** %12, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i64 @ip_family(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @ip_family(i32* %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %28
  %48 = load i32, i32* %13, align 4
  switch i32 %48, label %66 [
    i32 133, label %49
    i32 134, label %49
    i32 136, label %57
    i32 135, label %57
    i32 132, label %65
  ]

49:                                               ; preds = %47, %47
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @ip_family(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @ip_family(i32* %52)
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %49
  br label %67

57:                                               ; preds = %47, %47
  %58 = load i32*, i32** %12, align 8
  %59 = call i64 @ip_family(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @ip_family(i32* %60)
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %67

65:                                               ; preds = %47
  br label %67

66:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %65, %64, %56
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %383

71:                                               ; preds = %67
  br label %380

72:                                               ; preds = %28
  %73 = load i32, i32* %13, align 4
  switch i32 %73, label %144 [
    i32 130, label %74
    i32 131, label %83
    i32 128, label %92
    i32 129, label %109
    i32 137, label %125
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @ip_bits(i32* %76)
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 12
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %144

83:                                               ; preds = %72
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @ip_bits(i32* %85)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 12
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %83
  br label %144

92:                                               ; preds = %72
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @ip_bits(i32* %94)
  %96 = sub nsw i32 %95, 1
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, 3
  store i32 %100, i32* %9, align 4
  br label %108

101:                                              ; preds = %92
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @ip_bits(i32* %103)
  %105 = icmp sge i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %101
  br label %108

108:                                              ; preds = %107, %98
  br label %144

109:                                              ; preds = %72
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @ip_bits(i32* %111)
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 3
  store i32 %116, i32* %9, align 4
  br label %124

117:                                              ; preds = %109
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @ip_bits(i32* %119)
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %117
  br label %124

124:                                              ; preds = %123, %114
  br label %144

125:                                              ; preds = %72
  %126 = load i32, i32* %10, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @ip_bits(i32* %127)
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, 12
  store i32 %132, i32* %9, align 4
  br label %143

133:                                              ; preds = %125
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @ip_bits(i32* %135)
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %139, 3
  store i32 %140, i32* %9, align 4
  br label %142

141:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %138
  br label %143

143:                                              ; preds = %142, %130
  br label %144

144:                                              ; preds = %72, %143, %124, %108, %91, %82
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %383

148:                                              ; preds = %144
  %149 = load i32*, i32** %5, align 8
  %150 = call i32* @ip_addr(i32* %149)
  %151 = load i32*, i32** %12, align 8
  %152 = call i32* @ip_addr(i32* %151)
  %153 = load i32, i32* %10, align 4
  %154 = load i32*, i32** %12, align 8
  %155 = call i32 @ip_bits(i32* %154)
  %156 = call i32 @Min(i32 %153, i32 %155)
  %157 = call i32 @bitncmp(i32* %150, i32* %152, i32 %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %148
  %161 = load i32, i32* %13, align 4
  switch i32 %161, label %173 [
    i32 133, label %162
    i32 134, label %162
    i32 136, label %167
    i32 135, label %167
    i32 132, label %172
  ]

162:                                              ; preds = %160, %160
  %163 = load i32, i32* %14, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %165, %162
  br label %174

167:                                              ; preds = %160, %160
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %170, %167
  br label %174

172:                                              ; preds = %160
  br label %174

173:                                              ; preds = %160
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %173, %172, %171, %166
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %383

178:                                              ; preds = %174
  br label %380

179:                                              ; preds = %148
  %180 = load i32, i32* %9, align 4
  %181 = and i32 %180, 12
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %232

183:                                              ; preds = %179
  %184 = load i32, i32* %10, align 4
  %185 = load i32*, i32** %12, align 8
  %186 = call i32 @ip_bits(i32* %185)
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %232

188:                                              ; preds = %183
  %189 = load i32*, i32** %12, align 8
  %190 = call i32* @ip_addr(i32* %189)
  %191 = load i32, i32* %10, align 4
  %192 = sdiv i32 %191, 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %10, align 4
  %197 = srem i32 %196, 8
  %198 = sub nsw i32 7, %197
  %199 = shl i32 1, %198
  %200 = and i32 %195, %199
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %13, align 4
  switch i32 %201, label %217 [
    i32 133, label %202
    i32 134, label %202
    i32 136, label %209
    i32 135, label %209
    i32 132, label %216
  ]

202:                                              ; preds = %188, %188
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %9, align 4
  %207 = and i32 %206, 7
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %205, %202
  br label %227

209:                                              ; preds = %188, %188
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i32, i32* %9, align 4
  %214 = and i32 %213, 11
  store i32 %214, i32* %9, align 4
  br label %215

215:                                              ; preds = %212, %209
  br label %227

216:                                              ; preds = %188
  br label %227

217:                                              ; preds = %188
  %218 = load i32, i32* %15, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %9, align 4
  %222 = and i32 %221, 7
  store i32 %222, i32* %9, align 4
  br label %226

223:                                              ; preds = %217
  %224 = load i32, i32* %9, align 4
  %225 = and i32 %224, 11
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %223, %220
  br label %227

227:                                              ; preds = %226, %216, %215, %208
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  br label %383

231:                                              ; preds = %227
  br label %232

232:                                              ; preds = %231, %183, %179
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %233, 137
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  %237 = icmp sgt i32 %236, 136
  br i1 %237, label %238, label %239

238:                                              ; preds = %235, %232
  br label %380

239:                                              ; preds = %235
  %240 = load i32, i32* %13, align 4
  switch i32 %240, label %266 [
    i32 133, label %241
    i32 134, label %241
    i32 136, label %257
    i32 135, label %257
  ]

241:                                              ; preds = %239, %239
  %242 = load i32, i32* %10, align 4
  %243 = load i32*, i32** %12, align 8
  %244 = call i32 @ip_bits(i32* %243)
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32, i32* %9, align 4
  %248 = and i32 %247, 3
  store i32 %248, i32* %9, align 4
  br label %256

249:                                              ; preds = %241
  %250 = load i32, i32* %10, align 4
  %251 = load i32*, i32** %12, align 8
  %252 = call i32 @ip_bits(i32* %251)
  %253 = icmp sgt i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i32 0, i32* %9, align 4
  br label %255

255:                                              ; preds = %254, %249
  br label %256

256:                                              ; preds = %255, %246
  br label %266

257:                                              ; preds = %239, %239
  %258 = load i32, i32* %10, align 4
  %259 = load i32*, i32** %12, align 8
  %260 = call i32 @ip_bits(i32* %259)
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load i32, i32* %9, align 4
  %264 = and i32 %263, 12
  store i32 %264, i32* %9, align 4
  br label %265

265:                                              ; preds = %262, %257
  br label %266

266:                                              ; preds = %239, %265, %256
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  br label %383

270:                                              ; preds = %266
  %271 = load i32, i32* %10, align 4
  %272 = load i32*, i32** %12, align 8
  %273 = call i32 @ip_bits(i32* %272)
  %274 = icmp ne i32 %271, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %380

276:                                              ; preds = %270
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %332, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %9, align 4
  %281 = and i32 %280, 3
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %332

283:                                              ; preds = %279
  %284 = load i32, i32* %10, align 4
  %285 = load i32*, i32** %12, align 8
  %286 = call i32 @ip_maxbits(i32* %285)
  %287 = icmp slt i32 %284, %286
  br i1 %287, label %288, label %332

288:                                              ; preds = %283
  %289 = load i32*, i32** %12, align 8
  %290 = call i32* @ip_addr(i32* %289)
  %291 = load i32, i32* %10, align 4
  %292 = sdiv i32 %291, 8
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %10, align 4
  %297 = srem i32 %296, 8
  %298 = sub nsw i32 7, %297
  %299 = shl i32 1, %298
  %300 = and i32 %295, %299
  store i32 %300, i32* %16, align 4
  %301 = load i32, i32* %13, align 4
  switch i32 %301, label %317 [
    i32 133, label %302
    i32 134, label %302
    i32 136, label %309
    i32 135, label %309
    i32 132, label %316
  ]

302:                                              ; preds = %288, %288
  %303 = load i32, i32* %16, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %9, align 4
  %307 = and i32 %306, 13
  store i32 %307, i32* %9, align 4
  br label %308

308:                                              ; preds = %305, %302
  br label %327

309:                                              ; preds = %288, %288
  %310 = load i32, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load i32, i32* %9, align 4
  %314 = and i32 %313, 14
  store i32 %314, i32* %9, align 4
  br label %315

315:                                              ; preds = %312, %309
  br label %327

316:                                              ; preds = %288
  br label %327

317:                                              ; preds = %288
  %318 = load i32, i32* %16, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %9, align 4
  %322 = and i32 %321, 13
  store i32 %322, i32* %9, align 4
  br label %326

323:                                              ; preds = %317
  %324 = load i32, i32* %9, align 4
  %325 = and i32 %324, 14
  store i32 %325, i32* %9, align 4
  br label %326

326:                                              ; preds = %323, %320
  br label %327

327:                                              ; preds = %326, %316, %315, %308
  %328 = load i32, i32* %9, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  br label %383

331:                                              ; preds = %327
  br label %332

332:                                              ; preds = %331, %283, %279, %276
  %333 = load i32, i32* %8, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %379

335:                                              ; preds = %332
  %336 = load i32*, i32** %5, align 8
  %337 = call i32* @ip_addr(i32* %336)
  %338 = load i32*, i32** %12, align 8
  %339 = call i32* @ip_addr(i32* %338)
  %340 = load i32*, i32** %5, align 8
  %341 = call i32 @ip_maxbits(i32* %340)
  %342 = call i32 @bitncmp(i32* %337, i32* %339, i32 %341)
  store i32 %342, i32* %14, align 4
  %343 = load i32, i32* %13, align 4
  switch i32 %343, label %374 [
    i32 133, label %344
    i32 134, label %349
    i32 137, label %354
    i32 136, label %359
    i32 135, label %364
    i32 132, label %369
  ]

344:                                              ; preds = %335
  %345 = load i32, i32* %14, align 4
  %346 = icmp sge i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %344
  store i32 0, i32* %9, align 4
  br label %348

348:                                              ; preds = %347, %344
  br label %374

349:                                              ; preds = %335
  %350 = load i32, i32* %14, align 4
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  store i32 0, i32* %9, align 4
  br label %353

353:                                              ; preds = %352, %349
  br label %374

354:                                              ; preds = %335
  %355 = load i32, i32* %14, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  store i32 0, i32* %9, align 4
  br label %358

358:                                              ; preds = %357, %354
  br label %374

359:                                              ; preds = %335
  %360 = load i32, i32* %14, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  store i32 0, i32* %9, align 4
  br label %363

363:                                              ; preds = %362, %359
  br label %374

364:                                              ; preds = %335
  %365 = load i32, i32* %14, align 4
  %366 = icmp sle i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  store i32 0, i32* %9, align 4
  br label %368

368:                                              ; preds = %367, %364
  br label %374

369:                                              ; preds = %335
  %370 = load i32, i32* %14, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %369
  store i32 0, i32* %9, align 4
  br label %373

373:                                              ; preds = %372, %369
  br label %374

374:                                              ; preds = %335, %373, %368, %363, %358, %353, %348
  %375 = load i32, i32* %9, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  br label %383

378:                                              ; preds = %374
  br label %379

379:                                              ; preds = %378, %332
  br label %380

380:                                              ; preds = %379, %275, %238, %178, %71
  %381 = load i32, i32* %11, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %11, align 4
  br label %24

383:                                              ; preds = %377, %330, %269, %230, %177, %147, %70, %24
  %384 = load i32, i32* %9, align 4
  ret i32 %384
}

declare dso_local i32 @ip_bits(i32*) #1

declare dso_local i32* @DatumGetInetPP(i32) #1

declare dso_local i64 @ip_family(i32*) #1

declare dso_local i32 @bitncmp(i32*, i32*, i32) #1

declare dso_local i32* @ip_addr(i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @ip_maxbits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
