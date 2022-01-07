; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i32] [i32 47, i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 47, i32 121, i32 101, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 47, i32 105, i32 110, i32 116, i32 101, i32 114, i32 97, i32 99, i32 116, i32 105, i32 118, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [8 x i32] [i32 47, i32 101, i32 118, i32 101, i32 114, i32 121, i32 58, i32 0], align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 47, i32 110, i32 101, i32 120, i32 116, i32 58, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 -1, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %26 = call i32 (...) @ConInitStdStreams()
  %27 = call i32 (...) @InitDaysOfWeekArray()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %354

30:                                               ; preds = %2
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %62

43:                                               ; preds = %34
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %19, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %52, %43, %34, %30
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load i32**, i32*** %5, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 47
  br i1 %74, label %75, label %103

75:                                               ; preds = %66
  %76 = load i32**, i32*** %5, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @ParseTime(i32* %80, i64* %9, i64* %10)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %20, align 4
  br label %102

88:                                               ; preds = %75
  %89 = load i32**, i32*** %5, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @ParseId(i32* %93, i64* %8)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %96, %88
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %66, %62
  br label %104

104:                                              ; preds = %232, %103
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %235

108:                                              ; preds = %104
  %109 = load i32**, i32*** %5, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 47
  br i1 %116, label %117, label %231

117:                                              ; preds = %108
  %118 = load i32**, i32*** %5, align 8
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @_wcsicmp(i32* %122, i8* bitcast ([3 x i32]* @.str to i8*))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %15, align 8
  br label %343

127:                                              ; preds = %117
  %128 = load i32**, i32*** %5, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @_wcsicmp(i32* %132, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i64, i64* @TRUE, align 8
  store i64 %136, i64* %11, align 8
  br label %229

137:                                              ; preds = %127
  %138 = load i32**, i32*** %5, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @_wcsicmp(i32* %142, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i64, i64* @TRUE, align 8
  store i64 %146, i64* %12, align 8
  br label %228

147:                                              ; preds = %137
  %148 = load i32**, i32*** %5, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @_wcsicmp(i32* %152, i8* bitcast ([13 x i32]* @.str.3 to i8*))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i64, i64* @TRUE, align 8
  store i64 %156, i64* %13, align 8
  br label %227

157:                                              ; preds = %147
  %158 = load i32**, i32*** %5, align 8
  %159 = load i32, i32* %19, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = call i64 @_wcsnicmp(i32* %162, i8* bitcast ([8 x i32]* @.str.4 to i8*), i32 7)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %157
  %166 = load i64, i64* @TRUE, align 8
  store i64 %166, i64* %14, align 8
  %167 = load i32**, i32*** %5, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 7
  %173 = call i64 @ParseDaysOfMonth(i32* %172, i64* %16)
  %174 = load i64, i64* @FALSE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %165
  %177 = load i32**, i32*** %5, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 7
  %183 = call i64 @ParseDaysOfWeek(i32* %182, i64* %17)
  %184 = load i64, i64* @FALSE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = call i64 (...) @GetCurrentDayOfMonth()
  store i64 %187, i64* %16, align 8
  br label %188

188:                                              ; preds = %186, %176
  br label %189

189:                                              ; preds = %188, %165
  br label %226

190:                                              ; preds = %157
  %191 = load i32**, i32*** %5, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = call i64 @_wcsnicmp(i32* %195, i8* bitcast ([7 x i32]* @.str.5 to i8*), i32 6)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %223

198:                                              ; preds = %190
  %199 = load i64, i64* @FALSE, align 8
  store i64 %199, i64* %14, align 8
  %200 = load i32**, i32*** %5, align 8
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 6
  %206 = call i64 @ParseDaysOfMonth(i32* %205, i64* %16)
  %207 = load i64, i64* @FALSE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %198
  %210 = load i32**, i32*** %5, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 6
  %216 = call i64 @ParseDaysOfWeek(i32* %215, i64* %17)
  %217 = load i64, i64* @FALSE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = call i64 (...) @GetCurrentDayOfMonth()
  store i64 %220, i64* %16, align 8
  br label %221

221:                                              ; preds = %219, %209
  br label %222

222:                                              ; preds = %221, %198
  br label %225

223:                                              ; preds = %190
  %224 = load i64, i64* @TRUE, align 8
  store i64 %224, i64* %15, align 8
  store i32 1, i32* %18, align 4
  br label %343

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %225, %189
  br label %227

227:                                              ; preds = %226, %155
  br label %228

228:                                              ; preds = %227, %145
  br label %229

229:                                              ; preds = %228, %135
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230, %108
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %19, align 4
  br label %104

235:                                              ; preds = %104
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* %20, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = load i32**, i32*** %5, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %240, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 47
  br i1 %248, label %249, label %256

249:                                              ; preds = %239
  %250 = load i32**, i32*** %5, align 8
  %251 = load i32, i32* %4, align 4
  %252 = sub nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32*, i32** %250, i64 %253
  %255 = load i32*, i32** %254, align 8
  store i32* %255, i32** %7, align 8
  br label %256

256:                                              ; preds = %249, %239, %235
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* @TRUE, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %286

260:                                              ; preds = %256
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* @TRUE, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %279, label %264

264:                                              ; preds = %260
  %265 = load i64, i64* %9, align 8
  %266 = icmp ne i64 %265, -1
  br i1 %266, label %279, label %267

267:                                              ; preds = %264
  %268 = load i64, i64* %10, align 8
  %269 = icmp ne i64 %268, -1
  br i1 %269, label %279, label %270

270:                                              ; preds = %267
  %271 = load i64, i64* %16, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %279, label %273

273:                                              ; preds = %270
  %274 = load i64, i64* %17, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32*, i32** %7, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %276, %273, %270, %267, %264, %260
  %280 = load i64, i64* @TRUE, align 8
  store i64 %280, i64* %15, align 8
  store i32 1, i32* %18, align 4
  br label %343

281:                                              ; preds = %276
  %282 = load i32*, i32** %6, align 8
  %283 = load i64, i64* %8, align 8
  %284 = load i64, i64* %12, align 8
  %285 = call i32 @DeleteJob(i32* %282, i64 %283, i64 %284)
  store i32 %285, i32* %18, align 4
  br label %342

286:                                              ; preds = %256
  %287 = load i64, i64* %9, align 8
  %288 = icmp ne i64 %287, -1
  br i1 %288, label %289, label %311

289:                                              ; preds = %286
  %290 = load i64, i64* %10, align 8
  %291 = icmp ne i64 %290, -1
  br i1 %291, label %292, label %311

292:                                              ; preds = %289
  %293 = load i64, i64* %12, align 8
  %294 = load i64, i64* @TRUE, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = load i32*, i32** %7, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %296, %292
  %300 = load i64, i64* @TRUE, align 8
  store i64 %300, i64* %15, align 8
  store i32 1, i32* %18, align 4
  br label %343

301:                                              ; preds = %296
  %302 = load i32*, i32** %6, align 8
  %303 = load i64, i64* %9, align 8
  %304 = load i64, i64* %10, align 8
  %305 = load i64, i64* %16, align 8
  %306 = load i64, i64* %17, align 8
  %307 = load i64, i64* %13, align 8
  %308 = load i64, i64* %14, align 8
  %309 = load i32*, i32** %7, align 8
  %310 = call i32 @AddJob(i32* %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i32* %309)
  store i32 %310, i32* %18, align 4
  br label %341

311:                                              ; preds = %289, %286
  %312 = load i64, i64* %12, align 8
  %313 = load i64, i64* @TRUE, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %328, label %315

315:                                              ; preds = %311
  %316 = load i64, i64* %13, align 8
  %317 = load i64, i64* @TRUE, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %328, label %319

319:                                              ; preds = %315
  %320 = load i64, i64* %16, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %319
  %323 = load i64, i64* %17, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = load i32*, i32** %7, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %328, label %330

328:                                              ; preds = %325, %322, %319, %315, %311
  %329 = load i64, i64* @TRUE, align 8
  store i64 %329, i64* %15, align 8
  store i32 1, i32* %18, align 4
  br label %343

330:                                              ; preds = %325
  %331 = load i64, i64* %8, align 8
  %332 = icmp eq i64 %331, -1
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i32*, i32** %6, align 8
  %335 = call i32 @PrintAllJobs(i32* %334)
  store i32 %335, i32* %18, align 4
  br label %340

336:                                              ; preds = %330
  %337 = load i32*, i32** %6, align 8
  %338 = load i64, i64* %8, align 8
  %339 = call i32 @PrintJobDetails(i32* %337, i64 %338)
  store i32 %339, i32* %18, align 4
  br label %340

340:                                              ; preds = %336, %333
  br label %341

341:                                              ; preds = %340, %301
  br label %342

342:                                              ; preds = %341, %281
  br label %343

343:                                              ; preds = %342, %328, %299, %279, %223, %125
  %344 = call i32 (...) @FreeDaysOfWeekArray()
  %345 = load i64, i64* %15, align 8
  %346 = load i64, i64* @TRUE, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %352

348:                                              ; preds = %343
  %349 = load i32, i32* @StdOut, align 4
  %350 = load i32, i32* @IDS_USAGE, align 4
  %351 = call i32 @ConResPuts(i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %343
  %353 = load i32, i32* %18, align 4
  store i32 %353, i32* %3, align 4
  br label %354

354:                                              ; preds = %352, %29
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @InitDaysOfWeekArray(...) #1

declare dso_local i64 @ParseTime(i32*, i64*, i64*) #1

declare dso_local i64 @ParseId(i32*, i64*) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i64 @_wcsnicmp(i32*, i8*, i32) #1

declare dso_local i64 @ParseDaysOfMonth(i32*, i64*) #1

declare dso_local i64 @ParseDaysOfWeek(i32*, i64*) #1

declare dso_local i64 @GetCurrentDayOfMonth(...) #1

declare dso_local i32 @DeleteJob(i32*, i64, i64) #1

declare dso_local i32 @AddJob(i32*, i64, i64, i64, i64, i64, i64, i32*) #1

declare dso_local i32 @PrintAllJobs(i32*) #1

declare dso_local i32 @PrintJobDetails(i32*, i64) #1

declare dso_local i32 @FreeDaysOfWeekArray(...) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
