; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_ParseDateTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_ParseDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@DTK_TIME = common dso_local global i32 0, align 4
@DTK_NUMBER = common dso_local global i32 0, align 4
@DTK_DATE = common dso_local global i32 0, align 4
@DTK_STRING = common dso_local global i32 0, align 4
@datetktbl = common dso_local global i32 0, align 4
@szdatetktbl = common dso_local global i32 0, align 4
@DTK_TZ = common dso_local global i32 0, align 4
@DTK_SPECIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseDateTime(i8* %0, i8* %1, i64 %2, i8** %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %17, align 8
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %18, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %19, align 8
  br label %27

27:                                               ; preds = %687, %679, %37, %7
  %28 = load i8*, i8** %17, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %692

32:                                               ; preds = %27
  %33 = load i8*, i8** %17, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isspace(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %17, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %17, align 8
  br label %27

40:                                               ; preds = %32
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %45, i32* %8, align 4
  br label %695

46:                                               ; preds = %40
  %47 = load i8*, i8** %18, align 8
  %48 = load i8**, i8*** %12, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %47, i8** %51, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isdigit(i8 zeroext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %324

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %18, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8*, i8** %19, align 8
  %61 = icmp uge i8* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %63, i32* %8, align 4
  br label %695

64:                                               ; preds = %57
  %65 = load i8*, i8** %17, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %17, align 8
  %67 = load i8, i8* %65, align 1
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %18, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %90, %70
  %72 = load i8*, i8** %17, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @isdigit(i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8*, i8** %19, align 8
  %81 = icmp uge i8* %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %83, i32* %8, align 4
  br label %695

84:                                               ; preds = %77
  %85 = load i8*, i8** %17, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %17, align 8
  %87 = load i8, i8* %85, align 1
  %88 = load i8*, i8** %18, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %18, align 8
  store i8 %87, i8* %88, align 1
  br label %90

90:                                               ; preds = %84
  br label %71

91:                                               ; preds = %71
  %92 = load i8*, i8** %17, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 58
  br i1 %95, label %96, label %149

96:                                               ; preds = %91
  %97 = load i32, i32* @DTK_TIME, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** %18, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8*, i8** %19, align 8
  %106 = icmp uge i8* %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %108, i32* %8, align 4
  br label %695

109:                                              ; preds = %102
  %110 = load i8*, i8** %17, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %17, align 8
  %112 = load i8, i8* %110, align 1
  %113 = load i8*, i8** %18, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %18, align 8
  store i8 %112, i8* %113, align 1
  br label %115

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %147, %115
  %117 = load i8*, i8** %17, align 8
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @isdigit(i8 zeroext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %17, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 58
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %17, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 46
  br label %131

131:                                              ; preds = %126, %121, %116
  %132 = phi i1 [ true, %121 ], [ true, %116 ], [ %130, %126 ]
  br i1 %132, label %133, label %148

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133
  %135 = load i8*, i8** %18, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8*, i8** %19, align 8
  %138 = icmp uge i8* %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %140, i32* %8, align 4
  br label %695

141:                                              ; preds = %134
  %142 = load i8*, i8** %17, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %17, align 8
  %144 = load i8, i8* %142, align 1
  %145 = load i8*, i8** %18, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %18, align 8
  store i8 %144, i8* %145, align 1
  br label %147

147:                                              ; preds = %141
  br label %116

148:                                              ; preds = %131
  br label %323

149:                                              ; preds = %91
  %150 = load i8*, i8** %17, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 45
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %17, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 47
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %17, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 46
  br i1 %163, label %164, label %316

164:                                              ; preds = %159, %154, %149
  %165 = load i8*, i8** %17, align 8
  %166 = load i8, i8* %165, align 1
  store i8 %166, i8* %20, align 1
  br label %167

167:                                              ; preds = %164
  %168 = load i8*, i8** %18, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i8*, i8** %19, align 8
  %171 = icmp uge i8* %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %173, i32* %8, align 4
  br label %695

174:                                              ; preds = %167
  %175 = load i8*, i8** %17, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %17, align 8
  %177 = load i8, i8* %175, align 1
  %178 = load i8*, i8** %18, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %18, align 8
  store i8 %177, i8* %178, align 1
  br label %180

180:                                              ; preds = %174
  %181 = load i8*, i8** %17, align 8
  %182 = load i8, i8* %181, align 1
  %183 = call i64 @isdigit(i8 zeroext %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %277

185:                                              ; preds = %180
  %186 = load i8, i8* %20, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 46
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* @DTK_NUMBER, align 4
  br label %193

191:                                              ; preds = %185
  %192 = load i32, i32* @DTK_DATE, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = load i32*, i32** %13, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %194, i32* %198, align 4
  br label %199

199:                                              ; preds = %218, %193
  %200 = load i8*, i8** %17, align 8
  %201 = load i8, i8* %200, align 1
  %202 = call i64 @isdigit(i8 zeroext %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  br label %205

205:                                              ; preds = %204
  %206 = load i8*, i8** %18, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = load i8*, i8** %19, align 8
  %209 = icmp uge i8* %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %211, i32* %8, align 4
  br label %695

212:                                              ; preds = %205
  %213 = load i8*, i8** %17, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %17, align 8
  %215 = load i8, i8* %213, align 1
  %216 = load i8*, i8** %18, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %18, align 8
  store i8 %215, i8* %216, align 1
  br label %218

218:                                              ; preds = %212
  br label %199

219:                                              ; preds = %199
  %220 = load i8*, i8** %17, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = load i8, i8* %20, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %276

226:                                              ; preds = %219
  %227 = load i32, i32* @DTK_DATE, align 4
  %228 = load i32*, i32** %13, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %226
  %233 = load i8*, i8** %18, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8*, i8** %19, align 8
  %236 = icmp uge i8* %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %238, i32* %8, align 4
  br label %695

239:                                              ; preds = %232
  %240 = load i8*, i8** %17, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %17, align 8
  %242 = load i8, i8* %240, align 1
  %243 = load i8*, i8** %18, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %18, align 8
  store i8 %242, i8* %243, align 1
  br label %245

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %274, %245
  %247 = load i8*, i8** %17, align 8
  %248 = load i8, i8* %247, align 1
  %249 = call i64 @isdigit(i8 zeroext %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %246
  %252 = load i8*, i8** %17, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = load i8, i8* %20, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %254, %256
  br label %258

258:                                              ; preds = %251, %246
  %259 = phi i1 [ true, %246 ], [ %257, %251 ]
  br i1 %259, label %260, label %275

260:                                              ; preds = %258
  br label %261

261:                                              ; preds = %260
  %262 = load i8*, i8** %18, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8*, i8** %19, align 8
  %265 = icmp uge i8* %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %267, i32* %8, align 4
  br label %695

268:                                              ; preds = %261
  %269 = load i8*, i8** %17, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %17, align 8
  %271 = load i8, i8* %269, align 1
  %272 = load i8*, i8** %18, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %18, align 8
  store i8 %271, i8* %272, align 1
  br label %274

274:                                              ; preds = %268
  br label %246

275:                                              ; preds = %258
  br label %276

276:                                              ; preds = %275, %219
  br label %315

277:                                              ; preds = %180
  %278 = load i32, i32* @DTK_DATE, align 4
  %279 = load i32*, i32** %13, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %278, i32* %282, align 4
  br label %283

283:                                              ; preds = %313, %277
  %284 = load i8*, i8** %17, align 8
  %285 = load i8, i8* %284, align 1
  %286 = call i64 @isalnum(i8 zeroext %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %283
  %289 = load i8*, i8** %17, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = load i8, i8* %20, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %291, %293
  br label %295

295:                                              ; preds = %288, %283
  %296 = phi i1 [ true, %283 ], [ %294, %288 ]
  br i1 %296, label %297, label %314

297:                                              ; preds = %295
  br label %298

298:                                              ; preds = %297
  %299 = load i8*, i8** %18, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load i8*, i8** %19, align 8
  %302 = icmp uge i8* %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %304, i32* %8, align 4
  br label %695

305:                                              ; preds = %298
  %306 = load i8*, i8** %17, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %17, align 8
  %308 = load i8, i8* %306, align 1
  %309 = call i32 @pg_tolower(i8 zeroext %308)
  %310 = trunc i32 %309 to i8
  %311 = load i8*, i8** %18, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %18, align 8
  store i8 %310, i8* %311, align 1
  br label %313

313:                                              ; preds = %305
  br label %283

314:                                              ; preds = %295
  br label %315

315:                                              ; preds = %314, %276
  br label %322

316:                                              ; preds = %159
  %317 = load i32, i32* @DTK_NUMBER, align 4
  %318 = load i32*, i32** %13, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %317, i32* %321, align 4
  br label %322

322:                                              ; preds = %316, %315
  br label %323

323:                                              ; preds = %322, %148
  br label %687

324:                                              ; preds = %46
  %325 = load i8*, i8** %17, align 8
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 46
  br i1 %328, label %329, label %370

329:                                              ; preds = %324
  br label %330

330:                                              ; preds = %329
  %331 = load i8*, i8** %18, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 1
  %333 = load i8*, i8** %19, align 8
  %334 = icmp uge i8* %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %330
  %336 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %336, i32* %8, align 4
  br label %695

337:                                              ; preds = %330
  %338 = load i8*, i8** %17, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %17, align 8
  %340 = load i8, i8* %338, align 1
  %341 = load i8*, i8** %18, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %18, align 8
  store i8 %340, i8* %341, align 1
  br label %343

343:                                              ; preds = %337
  br label %344

344:                                              ; preds = %363, %343
  %345 = load i8*, i8** %17, align 8
  %346 = load i8, i8* %345, align 1
  %347 = call i64 @isdigit(i8 zeroext %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %364

349:                                              ; preds = %344
  br label %350

350:                                              ; preds = %349
  %351 = load i8*, i8** %18, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 1
  %353 = load i8*, i8** %19, align 8
  %354 = icmp uge i8* %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %356, i32* %8, align 4
  br label %695

357:                                              ; preds = %350
  %358 = load i8*, i8** %17, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %17, align 8
  %360 = load i8, i8* %358, align 1
  %361 = load i8*, i8** %18, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %18, align 8
  store i8 %360, i8* %361, align 1
  br label %363

363:                                              ; preds = %357
  br label %344

364:                                              ; preds = %344
  %365 = load i32, i32* @DTK_NUMBER, align 4
  %366 = load i32*, i32** %13, align 8
  %367 = load i32, i32* %16, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32 %365, i32* %369, align 4
  br label %686

370:                                              ; preds = %324
  %371 = load i8*, i8** %17, align 8
  %372 = load i8, i8* %371, align 1
  %373 = call i64 @isalpha(i8 zeroext %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %524

375:                                              ; preds = %370
  %376 = load i32, i32* @DTK_STRING, align 4
  %377 = load i32*, i32** %13, align 8
  %378 = load i32, i32* %16, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 %376, i32* %380, align 4
  br label %381

381:                                              ; preds = %375
  %382 = load i8*, i8** %18, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 1
  %384 = load i8*, i8** %19, align 8
  %385 = icmp uge i8* %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %381
  %387 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %387, i32* %8, align 4
  br label %695

388:                                              ; preds = %381
  %389 = load i8*, i8** %17, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %17, align 8
  %391 = load i8, i8* %389, align 1
  %392 = call i32 @pg_tolower(i8 zeroext %391)
  %393 = trunc i32 %392 to i8
  %394 = load i8*, i8** %18, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %18, align 8
  store i8 %393, i8* %394, align 1
  br label %396

396:                                              ; preds = %388
  br label %397

397:                                              ; preds = %418, %396
  %398 = load i8*, i8** %17, align 8
  %399 = load i8, i8* %398, align 1
  %400 = call i64 @isalpha(i8 zeroext %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %419

402:                                              ; preds = %397
  br label %403

403:                                              ; preds = %402
  %404 = load i8*, i8** %18, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 1
  %406 = load i8*, i8** %19, align 8
  %407 = icmp uge i8* %405, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %409, i32* %8, align 4
  br label %695

410:                                              ; preds = %403
  %411 = load i8*, i8** %17, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %17, align 8
  %413 = load i8, i8* %411, align 1
  %414 = call i32 @pg_tolower(i8 zeroext %413)
  %415 = trunc i32 %414 to i8
  %416 = load i8*, i8** %18, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %18, align 8
  store i8 %415, i8* %416, align 1
  br label %418

418:                                              ; preds = %410
  br label %397

419:                                              ; preds = %397
  store i32 0, i32* %21, align 4
  %420 = load i8*, i8** %17, align 8
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp eq i32 %422, 45
  br i1 %423, label %434, label %424

424:                                              ; preds = %419
  %425 = load i8*, i8** %17, align 8
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = icmp eq i32 %427, 47
  br i1 %428, label %434, label %429

429:                                              ; preds = %424
  %430 = load i8*, i8** %17, align 8
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  %433 = icmp eq i32 %432, 46
  br i1 %433, label %434, label %435

434:                                              ; preds = %429, %424, %419
  store i32 1, i32* %21, align 4
  br label %459

435:                                              ; preds = %429
  %436 = load i8*, i8** %17, align 8
  %437 = load i8, i8* %436, align 1
  %438 = sext i8 %437 to i32
  %439 = icmp eq i32 %438, 43
  br i1 %439, label %445, label %440

440:                                              ; preds = %435
  %441 = load i8*, i8** %17, align 8
  %442 = load i8, i8* %441, align 1
  %443 = call i64 @isdigit(i8 zeroext %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %458

445:                                              ; preds = %440, %435
  %446 = load i8*, i8** %18, align 8
  store i8 0, i8* %446, align 1
  %447 = load i8**, i8*** %12, align 8
  %448 = load i32, i32* %16, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8*, i8** %447, i64 %449
  %451 = load i8*, i8** %450, align 8
  %452 = load i32, i32* @datetktbl, align 4
  %453 = load i32, i32* @szdatetktbl, align 4
  %454 = call i32* @datebsearch(i8* %451, i32 %452, i32 %453)
  %455 = icmp eq i32* %454, null
  br i1 %455, label %456, label %457

456:                                              ; preds = %445
  store i32 1, i32* %21, align 4
  br label %457

457:                                              ; preds = %456, %445
  br label %458

458:                                              ; preds = %457, %440
  br label %459

459:                                              ; preds = %458, %434
  %460 = load i32, i32* %21, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %523

462:                                              ; preds = %459
  %463 = load i32, i32* @DTK_DATE, align 4
  %464 = load i32*, i32** %13, align 8
  %465 = load i32, i32* %16, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  store i32 %463, i32* %467, align 4
  br label %468

468:                                              ; preds = %520, %462
  br label %469

469:                                              ; preds = %468
  %470 = load i8*, i8** %18, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 1
  %472 = load i8*, i8** %19, align 8
  %473 = icmp uge i8* %471, %472
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %475, i32* %8, align 4
  br label %695

476:                                              ; preds = %469
  %477 = load i8*, i8** %17, align 8
  %478 = getelementptr inbounds i8, i8* %477, i32 1
  store i8* %478, i8** %17, align 8
  %479 = load i8, i8* %477, align 1
  %480 = call i32 @pg_tolower(i8 zeroext %479)
  %481 = trunc i32 %480 to i8
  %482 = load i8*, i8** %18, align 8
  %483 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %483, i8** %18, align 8
  store i8 %481, i8* %482, align 1
  br label %484

484:                                              ; preds = %476
  br label %485

485:                                              ; preds = %484
  %486 = load i8*, i8** %17, align 8
  %487 = load i8, i8* %486, align 1
  %488 = sext i8 %487 to i32
  %489 = icmp eq i32 %488, 43
  br i1 %489, label %520, label %490

490:                                              ; preds = %485
  %491 = load i8*, i8** %17, align 8
  %492 = load i8, i8* %491, align 1
  %493 = sext i8 %492 to i32
  %494 = icmp eq i32 %493, 45
  br i1 %494, label %520, label %495

495:                                              ; preds = %490
  %496 = load i8*, i8** %17, align 8
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i32
  %499 = icmp eq i32 %498, 47
  br i1 %499, label %520, label %500

500:                                              ; preds = %495
  %501 = load i8*, i8** %17, align 8
  %502 = load i8, i8* %501, align 1
  %503 = sext i8 %502 to i32
  %504 = icmp eq i32 %503, 95
  br i1 %504, label %520, label %505

505:                                              ; preds = %500
  %506 = load i8*, i8** %17, align 8
  %507 = load i8, i8* %506, align 1
  %508 = sext i8 %507 to i32
  %509 = icmp eq i32 %508, 46
  br i1 %509, label %520, label %510

510:                                              ; preds = %505
  %511 = load i8*, i8** %17, align 8
  %512 = load i8, i8* %511, align 1
  %513 = sext i8 %512 to i32
  %514 = icmp eq i32 %513, 58
  br i1 %514, label %520, label %515

515:                                              ; preds = %510
  %516 = load i8*, i8** %17, align 8
  %517 = load i8, i8* %516, align 1
  %518 = call i64 @isalnum(i8 zeroext %517)
  %519 = icmp ne i64 %518, 0
  br label %520

520:                                              ; preds = %515, %510, %505, %500, %495, %490, %485
  %521 = phi i1 [ true, %510 ], [ true, %505 ], [ true, %500 ], [ true, %495 ], [ true, %490 ], [ true, %485 ], [ %519, %515 ]
  br i1 %521, label %468, label %522

522:                                              ; preds = %520
  br label %523

523:                                              ; preds = %522, %459
  br label %685

524:                                              ; preds = %370
  %525 = load i8*, i8** %17, align 8
  %526 = load i8, i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = icmp eq i32 %527, 43
  br i1 %528, label %534, label %529

529:                                              ; preds = %524
  %530 = load i8*, i8** %17, align 8
  %531 = load i8, i8* %530, align 1
  %532 = sext i8 %531 to i32
  %533 = icmp eq i32 %532, 45
  br i1 %533, label %534, label %674

534:                                              ; preds = %529, %524
  br label %535

535:                                              ; preds = %534
  %536 = load i8*, i8** %18, align 8
  %537 = getelementptr inbounds i8, i8* %536, i64 1
  %538 = load i8*, i8** %19, align 8
  %539 = icmp uge i8* %537, %538
  br i1 %539, label %540, label %542

540:                                              ; preds = %535
  %541 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %541, i32* %8, align 4
  br label %695

542:                                              ; preds = %535
  %543 = load i8*, i8** %17, align 8
  %544 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %544, i8** %17, align 8
  %545 = load i8, i8* %543, align 1
  %546 = load i8*, i8** %18, align 8
  %547 = getelementptr inbounds i8, i8* %546, i32 1
  store i8* %547, i8** %18, align 8
  store i8 %545, i8* %546, align 1
  br label %548

548:                                              ; preds = %542
  br label %549

549:                                              ; preds = %554, %548
  %550 = load i8*, i8** %17, align 8
  %551 = load i8, i8* %550, align 1
  %552 = call i64 @isspace(i8 zeroext %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %549
  %555 = load i8*, i8** %17, align 8
  %556 = getelementptr inbounds i8, i8* %555, i32 1
  store i8* %556, i8** %17, align 8
  br label %549

557:                                              ; preds = %549
  %558 = load i8*, i8** %17, align 8
  %559 = load i8, i8* %558, align 1
  %560 = call i64 @isdigit(i8 zeroext %559)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %620

562:                                              ; preds = %557
  %563 = load i32, i32* @DTK_TZ, align 4
  %564 = load i32*, i32** %13, align 8
  %565 = load i32, i32* %16, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32, i32* %564, i64 %566
  store i32 %563, i32* %567, align 4
  br label %568

568:                                              ; preds = %562
  %569 = load i8*, i8** %18, align 8
  %570 = getelementptr inbounds i8, i8* %569, i64 1
  %571 = load i8*, i8** %19, align 8
  %572 = icmp uge i8* %570, %571
  br i1 %572, label %573, label %575

573:                                              ; preds = %568
  %574 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %574, i32* %8, align 4
  br label %695

575:                                              ; preds = %568
  %576 = load i8*, i8** %17, align 8
  %577 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %577, i8** %17, align 8
  %578 = load i8, i8* %576, align 1
  %579 = load i8*, i8** %18, align 8
  %580 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %580, i8** %18, align 8
  store i8 %578, i8* %579, align 1
  br label %581

581:                                              ; preds = %575
  br label %582

582:                                              ; preds = %618, %581
  %583 = load i8*, i8** %17, align 8
  %584 = load i8, i8* %583, align 1
  %585 = call i64 @isdigit(i8 zeroext %584)
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %602, label %587

587:                                              ; preds = %582
  %588 = load i8*, i8** %17, align 8
  %589 = load i8, i8* %588, align 1
  %590 = sext i8 %589 to i32
  %591 = icmp eq i32 %590, 58
  br i1 %591, label %602, label %592

592:                                              ; preds = %587
  %593 = load i8*, i8** %17, align 8
  %594 = load i8, i8* %593, align 1
  %595 = sext i8 %594 to i32
  %596 = icmp eq i32 %595, 46
  br i1 %596, label %602, label %597

597:                                              ; preds = %592
  %598 = load i8*, i8** %17, align 8
  %599 = load i8, i8* %598, align 1
  %600 = sext i8 %599 to i32
  %601 = icmp eq i32 %600, 45
  br label %602

602:                                              ; preds = %597, %592, %587, %582
  %603 = phi i1 [ true, %592 ], [ true, %587 ], [ true, %582 ], [ %601, %597 ]
  br i1 %603, label %604, label %619

604:                                              ; preds = %602
  br label %605

605:                                              ; preds = %604
  %606 = load i8*, i8** %18, align 8
  %607 = getelementptr inbounds i8, i8* %606, i64 1
  %608 = load i8*, i8** %19, align 8
  %609 = icmp uge i8* %607, %608
  br i1 %609, label %610, label %612

610:                                              ; preds = %605
  %611 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %611, i32* %8, align 4
  br label %695

612:                                              ; preds = %605
  %613 = load i8*, i8** %17, align 8
  %614 = getelementptr inbounds i8, i8* %613, i32 1
  store i8* %614, i8** %17, align 8
  %615 = load i8, i8* %613, align 1
  %616 = load i8*, i8** %18, align 8
  %617 = getelementptr inbounds i8, i8* %616, i32 1
  store i8* %617, i8** %18, align 8
  store i8 %615, i8* %616, align 1
  br label %618

618:                                              ; preds = %612
  br label %582

619:                                              ; preds = %602
  br label %673

620:                                              ; preds = %557
  %621 = load i8*, i8** %17, align 8
  %622 = load i8, i8* %621, align 1
  %623 = call i64 @isalpha(i8 zeroext %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %670

625:                                              ; preds = %620
  %626 = load i32, i32* @DTK_SPECIAL, align 4
  %627 = load i32*, i32** %13, align 8
  %628 = load i32, i32* %16, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i32, i32* %627, i64 %629
  store i32 %626, i32* %630, align 4
  br label %631

631:                                              ; preds = %625
  %632 = load i8*, i8** %18, align 8
  %633 = getelementptr inbounds i8, i8* %632, i64 1
  %634 = load i8*, i8** %19, align 8
  %635 = icmp uge i8* %633, %634
  br i1 %635, label %636, label %638

636:                                              ; preds = %631
  %637 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %637, i32* %8, align 4
  br label %695

638:                                              ; preds = %631
  %639 = load i8*, i8** %17, align 8
  %640 = getelementptr inbounds i8, i8* %639, i32 1
  store i8* %640, i8** %17, align 8
  %641 = load i8, i8* %639, align 1
  %642 = call i32 @pg_tolower(i8 zeroext %641)
  %643 = trunc i32 %642 to i8
  %644 = load i8*, i8** %18, align 8
  %645 = getelementptr inbounds i8, i8* %644, i32 1
  store i8* %645, i8** %18, align 8
  store i8 %643, i8* %644, align 1
  br label %646

646:                                              ; preds = %638
  br label %647

647:                                              ; preds = %668, %646
  %648 = load i8*, i8** %17, align 8
  %649 = load i8, i8* %648, align 1
  %650 = call i64 @isalpha(i8 zeroext %649)
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %669

652:                                              ; preds = %647
  br label %653

653:                                              ; preds = %652
  %654 = load i8*, i8** %18, align 8
  %655 = getelementptr inbounds i8, i8* %654, i64 1
  %656 = load i8*, i8** %19, align 8
  %657 = icmp uge i8* %655, %656
  br i1 %657, label %658, label %660

658:                                              ; preds = %653
  %659 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %659, i32* %8, align 4
  br label %695

660:                                              ; preds = %653
  %661 = load i8*, i8** %17, align 8
  %662 = getelementptr inbounds i8, i8* %661, i32 1
  store i8* %662, i8** %17, align 8
  %663 = load i8, i8* %661, align 1
  %664 = call i32 @pg_tolower(i8 zeroext %663)
  %665 = trunc i32 %664 to i8
  %666 = load i8*, i8** %18, align 8
  %667 = getelementptr inbounds i8, i8* %666, i32 1
  store i8* %667, i8** %18, align 8
  store i8 %665, i8* %666, align 1
  br label %668

668:                                              ; preds = %660
  br label %647

669:                                              ; preds = %647
  br label %672

670:                                              ; preds = %620
  %671 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %671, i32* %8, align 4
  br label %695

672:                                              ; preds = %669
  br label %673

673:                                              ; preds = %672, %619
  br label %684

674:                                              ; preds = %529
  %675 = load i8*, i8** %17, align 8
  %676 = load i8, i8* %675, align 1
  %677 = call i64 @ispunct(i8 zeroext %676)
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %682

679:                                              ; preds = %674
  %680 = load i8*, i8** %17, align 8
  %681 = getelementptr inbounds i8, i8* %680, i32 1
  store i8* %681, i8** %17, align 8
  br label %27

682:                                              ; preds = %674
  %683 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %683, i32* %8, align 4
  br label %695

684:                                              ; preds = %673
  br label %685

685:                                              ; preds = %684, %523
  br label %686

686:                                              ; preds = %685, %364
  br label %687

687:                                              ; preds = %686, %323
  %688 = load i8*, i8** %18, align 8
  %689 = getelementptr inbounds i8, i8* %688, i32 1
  store i8* %689, i8** %18, align 8
  store i8 0, i8* %688, align 1
  %690 = load i32, i32* %16, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %16, align 4
  br label %27

692:                                              ; preds = %27
  %693 = load i32, i32* %16, align 4
  %694 = load i32*, i32** %15, align 8
  store i32 %693, i32* %694, align 4
  store i32 0, i32* %8, align 4
  br label %695

695:                                              ; preds = %692, %682, %670, %658, %636, %610, %573, %540, %474, %408, %386, %355, %335, %303, %266, %237, %210, %172, %139, %107, %82, %62, %44
  %696 = load i32, i32* %8, align 4
  ret i32 %696
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i32 @pg_tolower(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i32* @datebsearch(i8*, i32, i32) #1

declare dso_local i64 @ispunct(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
