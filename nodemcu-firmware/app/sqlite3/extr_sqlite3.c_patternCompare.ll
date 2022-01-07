; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_patternCompare.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_patternCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compareInfo = type { i32, i32, i8, i64 }

@SQLITE_NOWILDCARDMATCH = common dso_local global i32 0, align 4
@SQLITE_MATCH = common dso_local global i32 0, align 4
@SQLITE_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.compareInfo*, i32)* @patternCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patternCompare(i8* %0, i8* %1, %struct.compareInfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.compareInfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.compareInfo* %2, %struct.compareInfo** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %24 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %27 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %30 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %29, i32 0, i32 2
  %31 = load i8, i8* %30, align 8
  store i8 %31, i8* %14, align 1
  store i8* null, i8** %15, align 8
  br label %32

32:                                               ; preds = %310, %298, %281, %273, %4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @Utf8Read(i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %313

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %178

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @Utf8Read(i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ true, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %62

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = call i32 @sqlite3Utf8Read(i8** %7)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %60, i32* %5, align 4
  br label %324

61:                                               ; preds = %56, %52
  br label %41

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @SQLITE_MATCH, align 4
  store i32 %66, i32* %5, align 4
  br label %324

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %67
  %72 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %73 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = call i32 @sqlite3Utf8Read(i8** %6)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %81, i32* %5, align 4
  br label %324

82:                                               ; preds = %76
  br label %109

83:                                               ; preds = %71
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 128
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %88

88:                                               ; preds = %104, %83
  %89 = load i8*, i8** %7, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -1
  %95 = load i8*, i8** %7, align 8
  %96 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @patternCompare(i8* %94, i8* %95, %struct.compareInfo* %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @SQLITE_NOMATCH, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %5, align 4
  br label %324

104:                                              ; preds = %92
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @SQLITE_SKIP_UTF8(i8* %105)
  br label %88

107:                                              ; preds = %88
  %108 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %108, i32* %5, align 4
  br label %324

109:                                              ; preds = %82
  br label %110

110:                                              ; preds = %109, %67
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = icmp sle i32 %112, 128
  br i1 %113, label %114, label %153

114:                                              ; preds = %111
  %115 = load i8, i8* %14, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @sqlite3Toupper(i32 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @sqlite3Tolower(i32 %120)
  store i32 %121, i32* %10, align 4
  br label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %17, align 4
  br label %124

124:                                              ; preds = %122, %117
  br label %125

125:                                              ; preds = %151, %139, %124
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  store i32 %129, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %125

140:                                              ; preds = %135, %131
  %141 = load i8*, i8** %6, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @patternCompare(i8* %141, i8* %142, %struct.compareInfo* %143, i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @SQLITE_NOMATCH, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* %18, align 4
  store i32 %150, i32* %5, align 4
  br label %324

151:                                              ; preds = %140
  br label %125

152:                                              ; preds = %125
  br label %176

153:                                              ; preds = %111
  br label %154

154:                                              ; preds = %174, %162, %153
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @Utf8Read(i8* %155)
  store i32 %156, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %154
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %154

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @patternCompare(i8* %164, i8* %165, %struct.compareInfo* %166, i32 %167)
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* @SQLITE_NOMATCH, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* %19, align 4
  store i32 %173, i32* %5, align 4
  br label %324

174:                                              ; preds = %163
  br label %154

175:                                              ; preds = %154
  br label %176

176:                                              ; preds = %175, %152
  %177 = load i32, i32* @SQLITE_NOWILDCARDMATCH, align 4
  store i32 %177, i32* %5, align 4
  br label %324

178:                                              ; preds = %36
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %275

182:                                              ; preds = %178
  %183 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %184 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = call i32 @sqlite3Utf8Read(i8** %6)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %192, i32* %5, align 4
  br label %324

193:                                              ; preds = %187
  %194 = load i8*, i8** %6, align 8
  store i8* %194, i8** %15, align 8
  br label %274

195:                                              ; preds = %182
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %196 = call i32 @sqlite3Utf8Read(i8** %7)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %200, i32* %5, align 4
  br label %324

201:                                              ; preds = %195
  %202 = call i32 @sqlite3Utf8Read(i8** %6)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, 94
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  store i32 1, i32* %22, align 4
  %206 = call i32 @sqlite3Utf8Read(i8** %6)
  store i32 %206, i32* %11, align 4
  br label %207

207:                                              ; preds = %205, %201
  %208 = load i32, i32* %11, align 4
  %209 = icmp eq i32 %208, 93
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 93
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 1, i32* %21, align 4
  br label %214

214:                                              ; preds = %213, %210
  %215 = call i32 @sqlite3Utf8Read(i8** %6)
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %214, %207
  br label %217

217:                                              ; preds = %261, %216
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 93
  br label %223

223:                                              ; preds = %220, %217
  %224 = phi i1 [ false, %217 ], [ %222, %220 ]
  br i1 %224, label %225, label %263

225:                                              ; preds = %223
  %226 = load i32, i32* %11, align 4
  %227 = icmp eq i32 %226, 45
  br i1 %227, label %228, label %254

228:                                              ; preds = %225
  %229 = load i8*, i8** %6, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 93
  br i1 %233, label %234, label %254

234:                                              ; preds = %228
  %235 = load i8*, i8** %6, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %234
  %241 = load i32, i32* %20, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = call i32 @sqlite3Utf8Read(i8** %6)
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %20, align 4
  %247 = icmp sge i32 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %11, align 4
  %251 = icmp sle i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store i32 1, i32* %21, align 4
  br label %253

253:                                              ; preds = %252, %248, %243
  store i32 0, i32* %20, align 4
  br label %261

254:                                              ; preds = %240, %234, %228, %225
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i32 1, i32* %21, align 4
  br label %259

259:                                              ; preds = %258, %254
  %260 = load i32, i32* %11, align 4
  store i32 %260, i32* %20, align 4
  br label %261

261:                                              ; preds = %259, %253
  %262 = call i32 @sqlite3Utf8Read(i8** %6)
  store i32 %262, i32* %11, align 4
  br label %217

263:                                              ; preds = %223
  %264 = load i32, i32* %11, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %21, align 4
  %268 = load i32, i32* %22, align 4
  %269 = xor i32 %267, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %266, %263
  %272 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %272, i32* %5, align 4
  br label %324

273:                                              ; preds = %266
  br label %32

274:                                              ; preds = %193
  br label %275

275:                                              ; preds = %274, %178
  %276 = load i8*, i8** %7, align 8
  %277 = call i32 @Utf8Read(i8* %276)
  store i32 %277, i32* %11, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %11, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  br label %32

282:                                              ; preds = %275
  %283 = load i8, i8* %14, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %282
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @sqlite3Tolower(i32 %287)
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @sqlite3Tolower(i32 %289)
  %291 = icmp eq i32 %288, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %286
  %293 = load i32, i32* %10, align 4
  %294 = icmp slt i32 %293, 128
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load i32, i32* %11, align 4
  %297 = icmp slt i32 %296, 128
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  br label %32

299:                                              ; preds = %295, %292, %286, %282
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %12, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %299
  %304 = load i8*, i8** %6, align 8
  %305 = load i8*, i8** %15, align 8
  %306 = icmp ne i8* %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = load i32, i32* %11, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  br label %32

311:                                              ; preds = %307, %303, %299
  %312 = load i32, i32* @SQLITE_NOMATCH, align 4
  store i32 %312, i32* %5, align 4
  br label %324

313:                                              ; preds = %32
  %314 = load i8*, i8** %7, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = load i32, i32* @SQLITE_MATCH, align 4
  br label %322

320:                                              ; preds = %313
  %321 = load i32, i32* @SQLITE_NOMATCH, align 4
  br label %322

322:                                              ; preds = %320, %318
  %323 = phi i32 [ %319, %318 ], [ %321, %320 ]
  store i32 %323, i32* %5, align 4
  br label %324

324:                                              ; preds = %322, %311, %271, %199, %191, %176, %172, %149, %107, %102, %80, %65, %59
  %325 = load i32, i32* %5, align 4
  ret i32 %325
}

declare dso_local i32 @Utf8Read(i8*) #1

declare dso_local i32 @sqlite3Utf8Read(i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SQLITE_SKIP_UTF8(i8*) #1

declare dso_local i32 @sqlite3Toupper(i32) #1

declare dso_local i32 @sqlite3Tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
