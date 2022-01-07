; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_numpyos.c_read_numberlike_string.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_numpyos.c_read_numberlike_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"nfinity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @read_numberlike_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_numberlike_string(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @getc(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EOF, align 4
  store i32 %18, i32* %4, align 4
  br label %482

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @NumPyOS_ascii_isspace(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @getc(i32* %25)
  store i32 %26, i32* %10, align 4
  br label %20

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %56

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = icmp uge i8* %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %36
  br label %472

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @getc(i32* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 110
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 78
  br i1 %62, label %63, label %218

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @EOF, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = icmp uge i8* %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %64
  br label %472

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @getc(i32* %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %85

85:                                               ; preds = %128, %84
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 32
  %99 = load i8*, i8** %9, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %98, %101
  br label %103

103:                                              ; preds = %96, %90
  %104 = phi i1 [ true, %90 ], [ %102, %96 ]
  br label %105

105:                                              ; preds = %103, %85
  %106 = phi i1 [ false, %85 ], [ %104, %103 ]
  br i1 %106, label %107, label %131

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @EOF, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = getelementptr inbounds i8, i8* %116, i64 -1
  %118 = icmp uge i8* %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112, %108
  br label %472

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %8, align 8
  store i8 %122, i8* %123, align 1
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @getc(i32* %125)
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  br label %85

131:                                              ; preds = %105
  %132 = load i8*, i8** %9, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %472

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %139, 40
  br i1 %140, label %141, label %217

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @EOF, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = getelementptr inbounds i8, i8* %150, i64 -1
  %152 = icmp uge i8* %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146, %142
  br label %472

154:                                              ; preds = %146
  %155 = load i32, i32* %10, align 4
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @getc(i32* %159)
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %191, %161
  %163 = load i32, i32* %10, align 4
  %164 = call i64 @NumPyOS_ascii_isalnum(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = icmp eq i32 %167, 95
  br label %169

169:                                              ; preds = %166, %162
  %170 = phi i1 [ true, %162 ], [ %168, %166 ]
  br i1 %170, label %171, label %192

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @EOF, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = load i8*, i8** %8, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = load i64, i64* %7, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = getelementptr inbounds i8, i8* %180, i64 -1
  %182 = icmp uge i8* %177, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %176, %172
  br label %472

184:                                              ; preds = %176
  %185 = load i32, i32* %10, align 4
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %8, align 8
  store i8 %186, i8* %187, align 1
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @getc(i32* %189)
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %184
  br label %162

192:                                              ; preds = %169
  %193 = load i32, i32* %10, align 4
  %194 = icmp eq i32 %193, 41
  br i1 %194, label %195, label %216

195:                                              ; preds = %192
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @EOF, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %207, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %8, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = load i64, i64* %7, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = getelementptr inbounds i8, i8* %204, i64 -1
  %206 = icmp uge i8* %201, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %200, %196
  br label %472

208:                                              ; preds = %200
  %209 = load i32, i32* %10, align 4
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %8, align 8
  store i8 %210, i8* %211, align 1
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 @getc(i32* %213)
  store i32 %214, i32* %10, align 4
  br label %215

215:                                              ; preds = %208
  br label %216

216:                                              ; preds = %215, %192
  br label %217

217:                                              ; preds = %216, %138
  br label %472

218:                                              ; preds = %60
  %219 = load i32, i32* %10, align 4
  %220 = icmp eq i32 %219, 105
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %10, align 4
  %223 = icmp eq i32 %222, 73
  br i1 %223, label %224, label %300

224:                                              ; preds = %221, %218
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @EOF, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %236, label %229

229:                                              ; preds = %225
  %230 = load i8*, i8** %8, align 8
  %231 = load i8*, i8** %6, align 8
  %232 = load i64, i64* %7, align 8
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  %234 = getelementptr inbounds i8, i8* %233, i64 -1
  %235 = icmp uge i8* %230, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %229, %225
  br label %472

237:                                              ; preds = %229
  %238 = load i32, i32* %10, align 4
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %8, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i32*, i32** %5, align 8
  %243 = call i32 @getc(i32* %242)
  store i32 %243, i32* %10, align 4
  br label %244

244:                                              ; preds = %237
  br label %245

245:                                              ; preds = %244
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %246

246:                                              ; preds = %289, %245
  %247 = load i8*, i8** %9, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %246
  %252 = load i32, i32* %10, align 4
  %253 = load i8*, i8** %9, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %252, %255
  br i1 %256, label %264, label %257

257:                                              ; preds = %251
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 32
  %260 = load i8*, i8** %9, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %259, %262
  br label %264

264:                                              ; preds = %257, %251
  %265 = phi i1 [ true, %251 ], [ %263, %257 ]
  br label %266

266:                                              ; preds = %264, %246
  %267 = phi i1 [ false, %246 ], [ %265, %264 ]
  br i1 %267, label %268, label %292

268:                                              ; preds = %266
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @EOF, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %280, label %273

273:                                              ; preds = %269
  %274 = load i8*, i8** %8, align 8
  %275 = load i8*, i8** %6, align 8
  %276 = load i64, i64* %7, align 8
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  %278 = getelementptr inbounds i8, i8* %277, i64 -1
  %279 = icmp uge i8* %274, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %273, %269
  br label %472

281:                                              ; preds = %273
  %282 = load i32, i32* %10, align 4
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %8, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %8, align 8
  store i8 %283, i8* %284, align 1
  %286 = load i32*, i32** %5, align 8
  %287 = call i32 @getc(i32* %286)
  store i32 %287, i32* %10, align 4
  br label %288

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %288
  %290 = load i8*, i8** %9, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %9, align 8
  br label %246

292:                                              ; preds = %266
  %293 = load i8*, i8** %9, align 8
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %472

298:                                              ; preds = %292
  br label %299

299:                                              ; preds = %298
  br label %472

300:                                              ; preds = %221
  br label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %326, %301
  %303 = load i32, i32* %10, align 4
  %304 = call i32 @NumPyOS_ascii_isdigit(i32 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %327

306:                                              ; preds = %302
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* @EOF, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %318, label %311

311:                                              ; preds = %307
  %312 = load i8*, i8** %8, align 8
  %313 = load i8*, i8** %6, align 8
  %314 = load i64, i64* %7, align 8
  %315 = getelementptr inbounds i8, i8* %313, i64 %314
  %316 = getelementptr inbounds i8, i8* %315, i64 -1
  %317 = icmp uge i8* %312, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %311, %307
  br label %472

319:                                              ; preds = %311
  %320 = load i32, i32* %10, align 4
  %321 = trunc i32 %320 to i8
  %322 = load i8*, i8** %8, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %8, align 8
  store i8 %321, i8* %322, align 1
  %324 = load i32*, i32** %5, align 8
  %325 = call i32 @getc(i32* %324)
  store i32 %325, i32* %10, align 4
  br label %326

326:                                              ; preds = %319
  br label %302

327:                                              ; preds = %302
  %328 = load i32, i32* %10, align 4
  %329 = icmp eq i32 %328, 46
  br i1 %329, label %330, label %383

330:                                              ; preds = %327
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @EOF, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %342, label %335

335:                                              ; preds = %331
  %336 = load i8*, i8** %8, align 8
  %337 = load i8*, i8** %6, align 8
  %338 = load i64, i64* %7, align 8
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  %340 = getelementptr inbounds i8, i8* %339, i64 -1
  %341 = icmp uge i8* %336, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %335, %331
  br label %472

343:                                              ; preds = %335
  %344 = load i32, i32* %10, align 4
  %345 = trunc i32 %344 to i8
  %346 = load i8*, i8** %8, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %8, align 8
  store i8 %345, i8* %346, align 1
  %348 = load i32*, i32** %5, align 8
  %349 = call i32 @getc(i32* %348)
  store i32 %349, i32* %10, align 4
  br label %350

350:                                              ; preds = %343
  br label %351

351:                                              ; preds = %350
  store i32 0, i32* %11, align 4
  br label %352

352:                                              ; preds = %376, %351
  %353 = load i32, i32* %10, align 4
  %354 = call i32 @NumPyOS_ascii_isdigit(i32 %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %377

356:                                              ; preds = %352
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %10, align 4
  %359 = load i32, i32* @EOF, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %368, label %361

361:                                              ; preds = %357
  %362 = load i8*, i8** %8, align 8
  %363 = load i8*, i8** %6, align 8
  %364 = load i64, i64* %7, align 8
  %365 = getelementptr inbounds i8, i8* %363, i64 %364
  %366 = getelementptr inbounds i8, i8* %365, i64 -1
  %367 = icmp uge i8* %362, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %361, %357
  br label %472

369:                                              ; preds = %361
  %370 = load i32, i32* %10, align 4
  %371 = trunc i32 %370 to i8
  %372 = load i8*, i8** %8, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %8, align 8
  store i8 %371, i8* %372, align 1
  %374 = load i32*, i32** %5, align 8
  %375 = call i32 @getc(i32* %374)
  store i32 %375, i32* %10, align 4
  br label %376

376:                                              ; preds = %369
  store i32 1, i32* %11, align 4
  br label %352

377:                                              ; preds = %352
  %378 = load i32, i32* %11, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %377
  br label %472

381:                                              ; preds = %377
  br label %382

382:                                              ; preds = %381
  br label %383

383:                                              ; preds = %382, %327
  %384 = load i32, i32* %10, align 4
  %385 = icmp eq i32 %384, 101
  br i1 %385, label %389, label %386

386:                                              ; preds = %383
  %387 = load i32, i32* %10, align 4
  %388 = icmp eq i32 %387, 69
  br i1 %388, label %389, label %471

389:                                              ; preds = %386, %383
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %10, align 4
  %392 = load i32, i32* @EOF, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %401, label %394

394:                                              ; preds = %390
  %395 = load i8*, i8** %8, align 8
  %396 = load i8*, i8** %6, align 8
  %397 = load i64, i64* %7, align 8
  %398 = getelementptr inbounds i8, i8* %396, i64 %397
  %399 = getelementptr inbounds i8, i8* %398, i64 -1
  %400 = icmp uge i8* %395, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %394, %390
  br label %472

402:                                              ; preds = %394
  %403 = load i32, i32* %10, align 4
  %404 = trunc i32 %403 to i8
  %405 = load i8*, i8** %8, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %8, align 8
  store i8 %404, i8* %405, align 1
  %407 = load i32*, i32** %5, align 8
  %408 = call i32 @getc(i32* %407)
  store i32 %408, i32* %10, align 4
  br label %409

409:                                              ; preds = %402
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %10, align 4
  %412 = icmp eq i32 %411, 43
  br i1 %412, label %416, label %413

413:                                              ; preds = %410
  %414 = load i32, i32* %10, align 4
  %415 = icmp eq i32 %414, 45
  br i1 %415, label %416, label %437

416:                                              ; preds = %413, %410
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %10, align 4
  %419 = load i32, i32* @EOF, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %428, label %421

421:                                              ; preds = %417
  %422 = load i8*, i8** %8, align 8
  %423 = load i8*, i8** %6, align 8
  %424 = load i64, i64* %7, align 8
  %425 = getelementptr inbounds i8, i8* %423, i64 %424
  %426 = getelementptr inbounds i8, i8* %425, i64 -1
  %427 = icmp uge i8* %422, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %421, %417
  br label %472

429:                                              ; preds = %421
  %430 = load i32, i32* %10, align 4
  %431 = trunc i32 %430 to i8
  %432 = load i8*, i8** %8, align 8
  %433 = getelementptr inbounds i8, i8* %432, i32 1
  store i8* %433, i8** %8, align 8
  store i8 %431, i8* %432, align 1
  %434 = load i32*, i32** %5, align 8
  %435 = call i32 @getc(i32* %434)
  store i32 %435, i32* %10, align 4
  br label %436

436:                                              ; preds = %429
  br label %437

437:                                              ; preds = %436, %413
  br label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438
  store i32 0, i32* %11, align 4
  br label %440

440:                                              ; preds = %464, %439
  %441 = load i32, i32* %10, align 4
  %442 = call i32 @NumPyOS_ascii_isdigit(i32 %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %465

444:                                              ; preds = %440
  br label %445

445:                                              ; preds = %444
  %446 = load i32, i32* %10, align 4
  %447 = load i32, i32* @EOF, align 4
  %448 = icmp eq i32 %446, %447
  br i1 %448, label %456, label %449

449:                                              ; preds = %445
  %450 = load i8*, i8** %8, align 8
  %451 = load i8*, i8** %6, align 8
  %452 = load i64, i64* %7, align 8
  %453 = getelementptr inbounds i8, i8* %451, i64 %452
  %454 = getelementptr inbounds i8, i8* %453, i64 -1
  %455 = icmp uge i8* %450, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %449, %445
  br label %472

457:                                              ; preds = %449
  %458 = load i32, i32* %10, align 4
  %459 = trunc i32 %458 to i8
  %460 = load i8*, i8** %8, align 8
  %461 = getelementptr inbounds i8, i8* %460, i32 1
  store i8* %461, i8** %8, align 8
  store i8 %459, i8* %460, align 1
  %462 = load i32*, i32** %5, align 8
  %463 = call i32 @getc(i32* %462)
  store i32 %463, i32* %10, align 4
  br label %464

464:                                              ; preds = %457
  store i32 1, i32* %11, align 4
  br label %440

465:                                              ; preds = %440
  %466 = load i32, i32* %11, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %465
  br label %472

469:                                              ; preds = %465
  br label %470

470:                                              ; preds = %469
  br label %471

471:                                              ; preds = %470, %386
  br label %472

472:                                              ; preds = %471, %468, %456, %428, %401, %380, %368, %342, %318, %299, %297, %280, %236, %217, %207, %183, %153, %136, %119, %75, %47
  %473 = load i32, i32* %10, align 4
  %474 = load i32*, i32** %5, align 8
  %475 = call i32 @ungetc(i32 %473, i32* %474)
  %476 = load i8*, i8** %8, align 8
  store i8 0, i8* %476, align 1
  %477 = load i8*, i8** %6, align 8
  %478 = load i8*, i8** %8, align 8
  %479 = icmp eq i8* %477, %478
  %480 = zext i1 %479 to i64
  %481 = select i1 %479, i32 0, i32 1
  store i32 %481, i32* %4, align 4
  br label %482

482:                                              ; preds = %472, %17
  %483 = load i32, i32* %4, align 4
  ret i32 %483
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @NumPyOS_ascii_isspace(i32) #1

declare dso_local i64 @NumPyOS_ascii_isalnum(i32) #1

declare dso_local i32 @NumPyOS_ascii_isdigit(i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
