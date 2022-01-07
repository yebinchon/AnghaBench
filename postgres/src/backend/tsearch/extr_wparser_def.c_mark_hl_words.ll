; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_wparser_def.c_mark_hl_words.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_wparser_def.c_mark_hl_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32, i32, i32)* @mark_hl_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_hl_words(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %506

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %465, %111, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @hlCover(%struct.TYPE_6__* %27, i32 %28, i32* %13, i32* %14)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %468

31:                                               ; preds = %26
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %22, align 4
  br label %33

33:                                               ; preds = %82, %31
  %34 = load i32, i32* %22, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %85

43:                                               ; preds = %41
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @NONWORDTOKEN(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %21, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %21, align 4
  br label %57

57:                                               ; preds = %54, %43
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %22, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %77, %67, %57
  %81 = load i32, i32* %22, align 4
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %22, align 4
  br label %33

85:                                               ; preds = %41
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @NOENDTOKEN(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %89
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %26

114:                                              ; preds = %100, %89, %85
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %308

119:                                              ; preds = %114
  %120 = load i32, i32* %22, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %22, align 4
  br label %122

122:                                              ; preds = %206, %119
  %123 = load i32, i32* %22, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %129, %130
  br label %132

132:                                              ; preds = %128, %122
  %133 = phi i1 [ false, %122 ], [ %131, %128 ]
  br i1 %133, label %134, label %209

134:                                              ; preds = %132
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %176

138:                                              ; preds = %134
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i32, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @NONWORDTOKEN(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %138
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %21, align 4
  br label %152

152:                                              ; preds = %149, %138
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %152
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %20, align 4
  br label %175

175:                                              ; preds = %172, %162, %152
  br label %176

176:                                              ; preds = %175, %134
  %177 = load i32, i32* %22, align 4
  store i32 %177, i32* %18, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %22, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @NOENDTOKEN(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %176
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i32, i32* %22, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = icmp sle i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %188, %176
  br label %206

200:                                              ; preds = %188
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  br label %209

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205, %199
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %22, align 4
  br label %122

209:                                              ; preds = %204, %132
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %307

213:                                              ; preds = %209
  %214 = load i32, i32* %22, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sge i32 %214, %217
  br i1 %218, label %219, label %307

219:                                              ; preds = %213
  %220 = load i32, i32* %13, align 4
  %221 = sub nsw i32 %220, 1
  store i32 %221, i32* %22, align 4
  br label %222

222:                                              ; preds = %296, %219
  %223 = load i32, i32* %22, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %299

225:                                              ; preds = %222
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = load i32, i32* %22, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @NONWORDTOKEN(i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %225
  %237 = load i32, i32* %21, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %21, align 4
  br label %239

239:                                              ; preds = %236, %225
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i32, i32* %22, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %239
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = load i32, i32* %22, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %249
  %260 = load i32, i32* %20, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %20, align 4
  br label %262

262:                                              ; preds = %259, %249, %239
  %263 = load i32, i32* %21, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp sge i32 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  br label %299

267:                                              ; preds = %262
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = load i32, i32* %22, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @NOENDTOKEN(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %289, label %278

278:                                              ; preds = %267
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = load i32, i32* %22, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %10, align 4
  %288 = icmp sle i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %278, %267
  br label %296

290:                                              ; preds = %278
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp sge i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  br label %299

295:                                              ; preds = %290
  br label %296

296:                                              ; preds = %295, %289
  %297 = load i32, i32* %22, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %22, align 4
  br label %222

299:                                              ; preds = %294, %266, %222
  %300 = load i32, i32* %22, align 4
  %301 = icmp sge i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = load i32, i32* %22, align 4
  br label %305

304:                                              ; preds = %299
  br label %305

305:                                              ; preds = %304, %302
  %306 = phi i32 [ %303, %302 ], [ 0, %304 ]
  store i32 %306, i32* %19, align 4
  br label %307

307:                                              ; preds = %305, %213, %209
  br label %385

308:                                              ; preds = %114
  %309 = load i32, i32* %22, align 4
  %310 = load i32, i32* %14, align 4
  %311 = icmp sgt i32 %309, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %308
  %313 = load i32, i32* %14, align 4
  store i32 %313, i32* %22, align 4
  br label %314

314:                                              ; preds = %312, %308
  br label %315

315:                                              ; preds = %381, %314
  %316 = load i32, i32* %21, align 4
  %317 = load i32, i32* %11, align 4
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %384

319:                                              ; preds = %315
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %321, align 8
  %323 = load i32, i32* %22, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @NONWORDTOKEN(i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %319
  %331 = load i32, i32* %21, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %21, align 4
  br label %333

333:                                              ; preds = %330, %319
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %335, align 8
  %337 = load i32, i32* %22, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 7
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %333
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = load i32, i32* %22, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 5
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %343
  %354 = load i32, i32* %20, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %20, align 4
  br label %356

356:                                              ; preds = %353, %343, %333
  %357 = load i32, i32* %22, align 4
  store i32 %357, i32* %18, align 4
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 1
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %359, align 8
  %361 = load i32, i32* %22, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 6
  %365 = load i32, i32* %364, align 8
  %366 = call i64 @NOENDTOKEN(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %379, label %368

368:                                              ; preds = %356
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %370, align 8
  %372 = load i32, i32* %22, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* %10, align 4
  %378 = icmp sle i32 %376, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %368, %356
  br label %381

380:                                              ; preds = %368
  br label %384

381:                                              ; preds = %379
  %382 = load i32, i32* %22, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %22, align 4
  br label %315

384:                                              ; preds = %380, %315
  br label %385

385:                                              ; preds = %384, %307
  %386 = load i32, i32* %17, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %461, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %20, align 4
  %390 = load i32, i32* %17, align 4
  %391 = icmp sgt i32 %389, %390
  br i1 %391, label %392, label %414

392:                                              ; preds = %388
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %394, align 8
  %396 = load i32, i32* %18, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 8
  %401 = call i64 @NOENDTOKEN(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %414, label %403

403:                                              ; preds = %392
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %405, align 8
  %407 = load i32, i32* %18, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %10, align 4
  %413 = icmp sle i32 %411, %412
  br i1 %413, label %414, label %461

414:                                              ; preds = %403, %392, %388
  %415 = load i32, i32* %17, align 4
  %416 = icmp sge i32 %415, 0
  br i1 %416, label %417, label %465

417:                                              ; preds = %414
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %419, align 8
  %421 = load i32, i32* %18, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 8
  %426 = call i64 @NOENDTOKEN(i32 %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %465, label %428

428:                                              ; preds = %417
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_5__*, %struct.TYPE_5__** %430, align 8
  %432 = load i32, i32* %18, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* %10, align 4
  %438 = icmp sle i32 %436, %437
  br i1 %438, label %465, label %439

439:                                              ; preds = %428
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 1
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** %441, align 8
  %443 = load i32, i32* %16, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 6
  %447 = load i32, i32* %446, align 8
  %448 = call i64 @NOENDTOKEN(i32 %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %461, label %450

450:                                              ; preds = %439
  %451 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 1
  %453 = load %struct.TYPE_5__*, %struct.TYPE_5__** %452, align 8
  %454 = load i32, i32* %16, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* %10, align 4
  %460 = icmp sle i32 %458, %459
  br i1 %460, label %461, label %465

461:                                              ; preds = %450, %439, %403, %385
  %462 = load i32, i32* %19, align 4
  store i32 %462, i32* %15, align 4
  %463 = load i32, i32* %18, align 4
  store i32 %463, i32* %16, align 4
  %464 = load i32, i32* %20, align 4
  store i32 %464, i32* %17, align 4
  br label %465

465:                                              ; preds = %461, %450, %428, %417, %414
  %466 = load i32, i32* %13, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %13, align 4
  br label %26

468:                                              ; preds = %26
  %469 = load i32, i32* %17, align 4
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %505

471:                                              ; preds = %468
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %472

472:                                              ; preds = %500, %471
  %473 = load i32, i32* %22, align 4
  %474 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = icmp slt i32 %473, %476
  br i1 %477, label %478, label %482

478:                                              ; preds = %472
  %479 = load i32, i32* %21, align 4
  %480 = load i32, i32* %11, align 4
  %481 = icmp slt i32 %479, %480
  br label %482

482:                                              ; preds = %478, %472
  %483 = phi i1 [ false, %472 ], [ %481, %478 ]
  br i1 %483, label %484, label %503

484:                                              ; preds = %482
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_5__*, %struct.TYPE_5__** %486, align 8
  %488 = load i32, i32* %22, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %490, i32 0, i32 6
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @NONWORDTOKEN(i32 %492)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %484
  %496 = load i32, i32* %21, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %21, align 4
  br label %498

498:                                              ; preds = %495, %484
  %499 = load i32, i32* %22, align 4
  store i32 %499, i32* %18, align 4
  br label %500

500:                                              ; preds = %498
  %501 = load i32, i32* %22, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %22, align 4
  br label %472

503:                                              ; preds = %482
  store i32 0, i32* %15, align 4
  %504 = load i32, i32* %18, align 4
  store i32 %504, i32* %16, align 4
  br label %505

505:                                              ; preds = %503, %468
  br label %511

506:                                              ; preds = %6
  store i32 0, i32* %15, align 4
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = sub nsw i32 %509, 1
  store i32 %510, i32* %16, align 4
  br label %511

511:                                              ; preds = %506, %505
  %512 = load i32, i32* %15, align 4
  store i32 %512, i32* %22, align 4
  br label %513

513:                                              ; preds = %617, %511
  %514 = load i32, i32* %22, align 4
  %515 = load i32, i32* %16, align 4
  %516 = icmp sle i32 %514, %515
  br i1 %516, label %517, label %620

517:                                              ; preds = %513
  %518 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %518, i32 0, i32 1
  %520 = load %struct.TYPE_5__*, %struct.TYPE_5__** %519, align 8
  %521 = load i32, i32* %22, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %523, i32 0, i32 7
  %525 = load i64, i64* %524, align 8
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %535

527:                                              ; preds = %517
  %528 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 1
  %530 = load %struct.TYPE_5__*, %struct.TYPE_5__** %529, align 8
  %531 = load i32, i32* %22, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %533, i32 0, i32 1
  store i32 1, i32* %534, align 4
  br label %535

535:                                              ; preds = %527, %517
  %536 = load i32, i32* %9, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %578

538:                                              ; preds = %535
  %539 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %540 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i32 0, i32 1
  %541 = load %struct.TYPE_5__*, %struct.TYPE_5__** %540, align 8
  %542 = load i32, i32* %22, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %541, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %544, i32 0, i32 6
  %546 = load i32, i32* %545, align 8
  %547 = call i64 @HLIDREPLACE(i32 %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %557

549:                                              ; preds = %538
  %550 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 1
  %552 = load %struct.TYPE_5__*, %struct.TYPE_5__** %551, align 8
  %553 = load i32, i32* %22, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %555, i32 0, i32 2
  store i32 1, i32* %556, align 8
  br label %577

557:                                              ; preds = %538
  %558 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %559 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %558, i32 0, i32 1
  %560 = load %struct.TYPE_5__*, %struct.TYPE_5__** %559, align 8
  %561 = load i32, i32* %22, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %560, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 6
  %565 = load i32, i32* %564, align 8
  %566 = call i64 @HLIDSKIP(i32 %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %576

568:                                              ; preds = %557
  %569 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %569, i32 0, i32 1
  %571 = load %struct.TYPE_5__*, %struct.TYPE_5__** %570, align 8
  %572 = load i32, i32* %22, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %571, i64 %573
  %575 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i32 0, i32 3
  store i32 1, i32* %575, align 4
  br label %576

576:                                              ; preds = %568, %557
  br label %577

577:                                              ; preds = %576, %549
  br label %598

578:                                              ; preds = %535
  %579 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i32 0, i32 1
  %581 = load %struct.TYPE_5__*, %struct.TYPE_5__** %580, align 8
  %582 = load i32, i32* %22, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %581, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i32 0, i32 6
  %586 = load i32, i32* %585, align 8
  %587 = call i64 @XMLHLIDSKIP(i32 %586)
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %597

589:                                              ; preds = %578
  %590 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %590, i32 0, i32 1
  %592 = load %struct.TYPE_5__*, %struct.TYPE_5__** %591, align 8
  %593 = load i32, i32* %22, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %595, i32 0, i32 3
  store i32 1, i32* %596, align 4
  br label %597

597:                                              ; preds = %589, %578
  br label %598

598:                                              ; preds = %597, %577
  %599 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %600 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %599, i32 0, i32 1
  %601 = load %struct.TYPE_5__*, %struct.TYPE_5__** %600, align 8
  %602 = load i32, i32* %22, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %601, i64 %603
  %605 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %604, i32 0, i32 5
  %606 = load i64, i64* %605, align 8
  %607 = icmp ne i64 %606, 0
  %608 = zext i1 %607 to i64
  %609 = select i1 %607, i32 0, i32 1
  %610 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %611 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %610, i32 0, i32 1
  %612 = load %struct.TYPE_5__*, %struct.TYPE_5__** %611, align 8
  %613 = load i32, i32* %22, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %612, i64 %614
  %616 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %615, i32 0, i32 4
  store i32 %609, i32* %616, align 8
  br label %617

617:                                              ; preds = %598
  %618 = load i32, i32* %22, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %22, align 4
  br label %513

620:                                              ; preds = %513
  ret void
}

declare dso_local i64 @hlCover(%struct.TYPE_6__*, i32, i32*, i32*) #1

declare dso_local i32 @NONWORDTOKEN(i32) #1

declare dso_local i64 @NOENDTOKEN(i32) #1

declare dso_local i64 @HLIDREPLACE(i32) #1

declare dso_local i64 @HLIDSKIP(i32) #1

declare dso_local i64 @XMLHLIDSKIP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
