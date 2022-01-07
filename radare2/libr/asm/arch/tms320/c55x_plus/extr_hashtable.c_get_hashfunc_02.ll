; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_02.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_02(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, -33554432
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -33554432
  %12 = icmp ugt i32 %11, 1912602624
  br i1 %12, label %13, label %248

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp ule i32 %14, -671088640
  br i1 %15, label %16, label %136

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, -671088640
  br i1 %18, label %19, label %135

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ugt i32 %20, -1006632960
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %23, -838860800
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ugt i32 %26, -738197504
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -704643072
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 95, i32* %3, align 4
  br label %492

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %3, align 4
  br label %492

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, -738197504
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, -805306368
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, -771751936
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 95, i32* %3, align 4
  br label %492

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %3, align 4
  br label %492

46:                                               ; preds = %37, %34
  br label %73

47:                                               ; preds = %22
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, -838860800
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp ugt i32 %51, -905969664
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, -872415232
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 95, i32* %3, align 4
  br label %492

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %3, align 4
  br label %492

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, -905969664
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, -973078528
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, -939524096
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 95, i32* %3, align 4
  br label %492

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %3, align 4
  br label %492

71:                                               ; preds = %62, %59
  br label %72

72:                                               ; preds = %71, %47
  br label %73

73:                                               ; preds = %72, %46
  br label %134

74:                                               ; preds = %19
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, -1006632960
  br i1 %76, label %77, label %133

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sle i32 %78, 2113929216
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 2113929216
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 2013265920
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 2046820352
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 2080374784
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %3, align 4
  br label %492

94:                                               ; preds = %89, %86
  br label %108

95:                                               ; preds = %83
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 2013265920
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 1946157056
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 1979711488
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 226, i32* %3, align 4
  br label %492

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %3, align 4
  br label %492

107:                                              ; preds = %98, %95
  br label %108

108:                                              ; preds = %107, %94
  br label %109

109:                                              ; preds = %108, %80
  store i32 226, i32* %3, align 4
  br label %492

110:                                              ; preds = %77
  %111 = load i32, i32* %7, align 4
  %112 = icmp ugt i32 %111, -1073741824
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, -1040187392
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 95, i32* %3, align 4
  br label %492

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %3, align 4
  br label %492

119:                                              ; preds = %110
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, -1073741824
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, -1610612736
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 540, i32* %3, align 4
  br label %492

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, -1577058304
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 541, i32* %3, align 4
  br label %492

130:                                              ; preds = %126
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %3, align 4
  br label %492

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %74
  br label %134

134:                                              ; preds = %133, %73
  br label %135

135:                                              ; preds = %134, %16
  store i32 95, i32* %3, align 4
  br label %492

136:                                              ; preds = %13
  %137 = load i32, i32* %7, align 4
  %138 = icmp ugt i32 %137, -335544320
  br i1 %138, label %139, label %189

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = icmp ugt i32 %140, -167772160
  br i1 %141, label %142, label %163

142:                                              ; preds = %139
  %143 = load i32, i32* %7, align 4
  %144 = icmp ugt i32 %143, -67108864
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, -33554432
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %3, align 4
  br label %492

150:                                              ; preds = %145
  store i32 96, i32* %3, align 4
  br label %492

151:                                              ; preds = %142
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, -67108864
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, -134217728
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %151
  store i32 96, i32* %3, align 4
  br label %492

158:                                              ; preds = %154
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %159, -100663296
  %161 = zext i1 %160 to i32
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %6, align 1
  br label %188

163:                                              ; preds = %139
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, -167772160
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 96, i32* %3, align 4
  br label %492

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = icmp ugt i32 %168, -234881024
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = icmp eq i32 %171, -201326592
  %173 = zext i1 %172 to i32
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %6, align 1
  br label %187

175:                                              ; preds = %167
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %176, -234881024
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = icmp eq i32 %179, -301989888
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %175
  store i32 96, i32* %3, align 4
  br label %492

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %183, -268435456
  %185 = zext i1 %184 to i32
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %6, align 1
  br label %187

187:                                              ; preds = %182, %170
  br label %188

188:                                              ; preds = %187, %158
  br label %242

189:                                              ; preds = %136
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %190, -335544320
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 96, i32* %3, align 4
  br label %492

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = icmp ugt i32 %194, -503316480
  br i1 %195, label %196, label %217

196:                                              ; preds = %193
  %197 = load i32, i32* %7, align 4
  %198 = icmp ugt i32 %197, -402653184
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, -369098752
  %202 = zext i1 %201 to i32
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %6, align 1
  br label %216

204:                                              ; preds = %196
  %205 = load i32, i32* %7, align 4
  %206 = icmp eq i32 %205, -402653184
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %7, align 4
  %209 = icmp eq i32 %208, -469762048
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %204
  store i32 96, i32* %3, align 4
  br label %492

211:                                              ; preds = %207
  %212 = load i32, i32* %7, align 4
  %213 = icmp eq i32 %212, -436207616
  %214 = zext i1 %213 to i32
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %6, align 1
  br label %216

216:                                              ; preds = %211, %199
  br label %241

217:                                              ; preds = %193
  %218 = load i32, i32* %7, align 4
  %219 = icmp eq i32 %218, -503316480
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store i32 96, i32* %3, align 4
  br label %492

221:                                              ; preds = %217
  %222 = load i32, i32* %7, align 4
  %223 = icmp ule i32 %222, -570425344
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, -570425344
  br i1 %226, label %227, label %235

227:                                              ; preds = %224
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, -637534208
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, -603979776
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = load i32, i32* %4, align 4
  store i32 %234, i32* %3, align 4
  br label %492

235:                                              ; preds = %230, %227, %224
  store i32 95, i32* %3, align 4
  br label %492

236:                                              ; preds = %221
  %237 = load i32, i32* %7, align 4
  %238 = icmp eq i32 %237, -536870912
  %239 = zext i1 %238 to i32
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %6, align 1
  br label %241

241:                                              ; preds = %236, %216
  br label %242

242:                                              ; preds = %241, %188
  %243 = load i8, i8* %6, align 1
  %244 = icmp ne i8 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %4, align 4
  store i32 %246, i32* %3, align 4
  br label %492

247:                                              ; preds = %242
  store i32 96, i32* %3, align 4
  br label %492

248:                                              ; preds = %2
  %249 = load i32, i32* %5, align 4
  %250 = and i32 %249, -33554432
  %251 = icmp eq i32 %250, 1912602624
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store i32 226, i32* %3, align 4
  br label %492

253:                                              ; preds = %248
  %254 = load i32, i32* %7, align 4
  %255 = icmp sgt i32 %254, 1207959552
  br i1 %255, label %256, label %373

256:                                              ; preds = %253
  %257 = load i32, i32* %7, align 4
  %258 = icmp sle i32 %257, 1577058304
  br i1 %258, label %259, label %321

259:                                              ; preds = %256
  %260 = load i32, i32* %7, align 4
  %261 = icmp ne i32 %260, 1577058304
  br i1 %261, label %262, label %320

262:                                              ; preds = %259
  %263 = load i32, i32* %7, align 4
  %264 = icmp sgt i32 %263, 1409286144
  br i1 %264, label %265, label %288

265:                                              ; preds = %262
  %266 = load i32, i32* %7, align 4
  %267 = icmp sgt i32 %266, 1509949440
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 1543503872
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* %4, align 4
  store i32 %272, i32* %3, align 4
  br label %492

273:                                              ; preds = %268
  br label %287

274:                                              ; preds = %265
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 1509949440
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load i32, i32* %7, align 4
  %279 = icmp ne i32 %278, 1442840576
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = load i32, i32* %7, align 4
  %282 = icmp eq i32 %281, 1476395008
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  store i32 178, i32* %3, align 4
  br label %492

284:                                              ; preds = %280
  %285 = load i32, i32* %4, align 4
  store i32 %285, i32* %3, align 4
  br label %492

286:                                              ; preds = %277, %274
  br label %287

287:                                              ; preds = %286, %273
  br label %319

288:                                              ; preds = %262
  %289 = load i32, i32* %7, align 4
  %290 = icmp ne i32 %289, 1409286144
  br i1 %290, label %291, label %318

291:                                              ; preds = %288
  %292 = load i32, i32* %7, align 4
  %293 = icmp sgt i32 %292, 1308622848
  br i1 %293, label %294, label %304

294:                                              ; preds = %291
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 1342177280
  br i1 %296, label %297, label %303

297:                                              ; preds = %294
  %298 = load i32, i32* %7, align 4
  %299 = icmp eq i32 %298, 1375731712
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  store i32 178, i32* %3, align 4
  br label %492

301:                                              ; preds = %297
  %302 = load i32, i32* %4, align 4
  store i32 %302, i32* %3, align 4
  br label %492

303:                                              ; preds = %294
  br label %317

304:                                              ; preds = %291
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 1308622848
  br i1 %306, label %307, label %316

307:                                              ; preds = %304
  %308 = load i32, i32* %7, align 4
  %309 = icmp ne i32 %308, 1241513984
  br i1 %309, label %310, label %316

310:                                              ; preds = %307
  %311 = load i32, i32* %7, align 4
  %312 = icmp eq i32 %311, 1275068416
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 178, i32* %3, align 4
  br label %492

314:                                              ; preds = %310
  %315 = load i32, i32* %4, align 4
  store i32 %315, i32* %3, align 4
  br label %492

316:                                              ; preds = %307, %304
  br label %317

317:                                              ; preds = %316, %303
  br label %318

318:                                              ; preds = %317, %288
  br label %319

319:                                              ; preds = %318, %287
  br label %320

320:                                              ; preds = %319, %259
  store i32 178, i32* %3, align 4
  br label %492

321:                                              ; preds = %256
  %322 = load i32, i32* %7, align 4
  %323 = icmp sgt i32 %322, 1744830464
  br i1 %323, label %324, label %346

324:                                              ; preds = %321
  %325 = load i32, i32* %7, align 4
  %326 = icmp sgt i32 %325, 1845493760
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load i32, i32* %7, align 4
  %329 = icmp eq i32 %328, 1879048192
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  store i32 226, i32* %3, align 4
  br label %492

331:                                              ; preds = %327
  %332 = load i32, i32* %4, align 4
  store i32 %332, i32* %3, align 4
  br label %492

333:                                              ; preds = %324
  %334 = load i32, i32* %7, align 4
  %335 = icmp ne i32 %334, 1845493760
  br i1 %335, label %336, label %345

336:                                              ; preds = %333
  %337 = load i32, i32* %7, align 4
  %338 = icmp ne i32 %337, 1778384896
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = load i32, i32* %7, align 4
  %341 = icmp eq i32 %340, 1811939328
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  store i32 226, i32* %3, align 4
  br label %492

343:                                              ; preds = %339
  %344 = load i32, i32* %4, align 4
  store i32 %344, i32* %3, align 4
  br label %492

345:                                              ; preds = %336, %333
  br label %372

346:                                              ; preds = %321
  %347 = load i32, i32* %7, align 4
  %348 = icmp ne i32 %347, 1744830464
  br i1 %348, label %349, label %371

349:                                              ; preds = %346
  %350 = load i32, i32* %7, align 4
  %351 = icmp sgt i32 %350, 1677721600
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  %353 = load i32, i32* %7, align 4
  %354 = icmp eq i32 %353, 1711276032
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  store i32 226, i32* %3, align 4
  br label %492

356:                                              ; preds = %352
  %357 = load i32, i32* %4, align 4
  store i32 %357, i32* %3, align 4
  br label %492

358:                                              ; preds = %349
  %359 = load i32, i32* %7, align 4
  %360 = icmp ne i32 %359, 1677721600
  br i1 %360, label %361, label %370

361:                                              ; preds = %358
  %362 = load i32, i32* %7, align 4
  %363 = icmp ne i32 %362, 1610612736
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load i32, i32* %7, align 4
  %366 = icmp eq i32 %365, 1644167168
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  store i32 226, i32* %3, align 4
  br label %492

368:                                              ; preds = %364
  %369 = load i32, i32* %4, align 4
  store i32 %369, i32* %3, align 4
  br label %492

370:                                              ; preds = %361, %358
  br label %371

371:                                              ; preds = %370, %346
  br label %372

372:                                              ; preds = %371, %345
  store i32 226, i32* %3, align 4
  br label %492

373:                                              ; preds = %253
  %374 = load i32, i32* %7, align 4
  %375 = icmp eq i32 %374, 1207959552
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  store i32 178, i32* %3, align 4
  br label %492

377:                                              ; preds = %373
  %378 = load i32, i32* %7, align 4
  %379 = icmp sle i32 %378, 335544320
  br i1 %379, label %380, label %441

380:                                              ; preds = %377
  %381 = load i32, i32* %7, align 4
  %382 = icmp ne i32 %381, 335544320
  br i1 %382, label %383, label %440

383:                                              ; preds = %380
  %384 = load i32, i32* %7, align 4
  %385 = icmp sgt i32 %384, 167772160
  br i1 %385, label %386, label %408

386:                                              ; preds = %383
  %387 = load i32, i32* %7, align 4
  %388 = icmp sgt i32 %387, 268435456
  br i1 %388, label %389, label %395

389:                                              ; preds = %386
  %390 = load i32, i32* %7, align 4
  %391 = icmp eq i32 %390, 301989888
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  store i32 142, i32* %3, align 4
  br label %492

393:                                              ; preds = %389
  %394 = load i32, i32* %4, align 4
  store i32 %394, i32* %3, align 4
  br label %492

395:                                              ; preds = %386
  %396 = load i32, i32* %7, align 4
  %397 = icmp ne i32 %396, 268435456
  br i1 %397, label %398, label %407

398:                                              ; preds = %395
  %399 = load i32, i32* %7, align 4
  %400 = icmp ne i32 %399, 201326592
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  %402 = load i32, i32* %7, align 4
  %403 = icmp eq i32 %402, 234881024
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  store i32 142, i32* %3, align 4
  br label %492

405:                                              ; preds = %401
  %406 = load i32, i32* %4, align 4
  store i32 %406, i32* %3, align 4
  br label %492

407:                                              ; preds = %398, %395
  br label %439

408:                                              ; preds = %383
  %409 = load i32, i32* %7, align 4
  %410 = icmp ne i32 %409, 167772160
  br i1 %410, label %411, label %438

411:                                              ; preds = %408
  %412 = load i32, i32* %7, align 4
  %413 = icmp sgt i32 %412, 67108864
  br i1 %413, label %414, label %424

414:                                              ; preds = %411
  %415 = load i32, i32* %7, align 4
  %416 = icmp ne i32 %415, 100663296
  br i1 %416, label %417, label %423

417:                                              ; preds = %414
  %418 = load i32, i32* %7, align 4
  %419 = icmp eq i32 %418, 134217728
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  store i32 142, i32* %3, align 4
  br label %492

421:                                              ; preds = %417
  %422 = load i32, i32* %4, align 4
  store i32 %422, i32* %3, align 4
  br label %492

423:                                              ; preds = %414
  br label %437

424:                                              ; preds = %411
  %425 = load i32, i32* %7, align 4
  %426 = icmp ne i32 %425, 67108864
  br i1 %426, label %427, label %436

427:                                              ; preds = %424
  %428 = load i32, i32* %7, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %427
  %431 = load i32, i32* %7, align 4
  %432 = icmp eq i32 %431, 33554432
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 142, i32* %3, align 4
  br label %492

434:                                              ; preds = %430
  %435 = load i32, i32* %4, align 4
  store i32 %435, i32* %3, align 4
  br label %492

436:                                              ; preds = %427, %424
  br label %437

437:                                              ; preds = %436, %423
  br label %438

438:                                              ; preds = %437, %408
  br label %439

439:                                              ; preds = %438, %407
  br label %440

440:                                              ; preds = %439, %380
  store i32 142, i32* %3, align 4
  br label %492

441:                                              ; preds = %377
  %442 = load i32, i32* %7, align 4
  %443 = icmp sgt i32 %442, 503316480
  br i1 %443, label %444, label %466

444:                                              ; preds = %441
  %445 = load i32, i32* %7, align 4
  %446 = icmp sgt i32 %445, 1140850688
  br i1 %446, label %447, label %453

447:                                              ; preds = %444
  %448 = load i32, i32* %7, align 4
  %449 = icmp eq i32 %448, 1174405120
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  store i32 178, i32* %3, align 4
  br label %492

451:                                              ; preds = %447
  %452 = load i32, i32* %4, align 4
  store i32 %452, i32* %3, align 4
  br label %492

453:                                              ; preds = %444
  %454 = load i32, i32* %7, align 4
  %455 = icmp ne i32 %454, 1140850688
  br i1 %455, label %456, label %465

456:                                              ; preds = %453
  %457 = load i32, i32* %7, align 4
  %458 = icmp ne i32 %457, 1073741824
  br i1 %458, label %459, label %465

459:                                              ; preds = %456
  %460 = load i32, i32* %7, align 4
  %461 = icmp eq i32 %460, 1107296256
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  store i32 178, i32* %3, align 4
  br label %492

463:                                              ; preds = %459
  %464 = load i32, i32* %4, align 4
  store i32 %464, i32* %3, align 4
  br label %492

465:                                              ; preds = %456, %453
  store i32 178, i32* %3, align 4
  br label %492

466:                                              ; preds = %441
  %467 = load i32, i32* %7, align 4
  %468 = icmp eq i32 %467, 503316480
  br i1 %468, label %469, label %470

469:                                              ; preds = %466
  store i32 142, i32* %3, align 4
  br label %492

470:                                              ; preds = %466
  %471 = load i32, i32* %7, align 4
  %472 = icmp sle i32 %471, 436207616
  br i1 %472, label %473, label %486

473:                                              ; preds = %470
  %474 = load i32, i32* %7, align 4
  %475 = icmp ne i32 %474, 436207616
  br i1 %475, label %476, label %485

476:                                              ; preds = %473
  %477 = load i32, i32* %7, align 4
  %478 = icmp ne i32 %477, 369098752
  br i1 %478, label %479, label %485

479:                                              ; preds = %476
  %480 = load i32, i32* %7, align 4
  %481 = icmp eq i32 %480, 402653184
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  store i32 142, i32* %3, align 4
  br label %492

483:                                              ; preds = %479
  %484 = load i32, i32* %4, align 4
  store i32 %484, i32* %3, align 4
  br label %492

485:                                              ; preds = %476, %473
  store i32 142, i32* %3, align 4
  br label %492

486:                                              ; preds = %470
  %487 = load i32, i32* %7, align 4
  %488 = icmp eq i32 %487, 469762048
  br i1 %488, label %489, label %490

489:                                              ; preds = %486
  store i32 142, i32* %3, align 4
  br label %492

490:                                              ; preds = %486
  %491 = load i32, i32* %4, align 4
  store i32 %491, i32* %3, align 4
  br label %492

492:                                              ; preds = %490, %489, %485, %483, %482, %469, %465, %463, %462, %451, %450, %440, %434, %433, %421, %420, %405, %404, %393, %392, %376, %372, %368, %367, %356, %355, %343, %342, %331, %330, %320, %314, %313, %301, %300, %284, %283, %271, %252, %247, %245, %235, %233, %220, %210, %192, %181, %166, %157, %150, %148, %135, %130, %129, %125, %117, %116, %109, %105, %104, %92, %69, %68, %57, %56, %44, %43, %32, %31
  %493 = load i32, i32* %3, align 4
  ret i32 %493
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
