; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageLine.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@gdAntiAliased = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageLine(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @gdAntiAliased, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %6
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gdImageAALine(%struct.TYPE_9__* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %44)
  br label %410

46:                                               ; preds = %6
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = call i64 @gdImageSX(%struct.TYPE_9__* %47)
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @clip_1d(i32* %8, i32* %9, i32* %10, i32* %11, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = call i64 @gdImageSY(%struct.TYPE_9__* %53)
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @clip_1d(i32* %9, i32* %8, i32* %11, i32* %10, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52, %46
  br label %410

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @abs(i32 %62) #3
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @abs(i32 %66) #3
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @gdImageVLine(%struct.TYPE_9__* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  br label %410

77:                                               ; preds = %59
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @gdImageHLine(%struct.TYPE_9__* %81, i32 %82, i32 %83, i32 %84, i32 %85)
  br label %410

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %255

92:                                               ; preds = %88
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %24, align 4
  br label %118

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @atan2(i32 %100, i32 %101)
  %103 = call double @cos(i32 %102)
  store double %103, double* %28, align 8
  %104 = load double, double* %28, align 8
  %105 = fcmp une double %104, 0.000000e+00
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* %27, align 4
  %108 = sitofp i32 %107 to double
  %109 = load double, double* %28, align 8
  %110 = fdiv double %108, %109
  %111 = fptosi double %110 to i32
  store i32 %111, i32* %24, align 4
  br label %113

112:                                              ; preds = %99
  store i32 1, i32* %24, align 4
  br label %113

113:                                              ; preds = %112, %106
  %114 = load i32, i32* %24, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, i32* %24, align 4
  br label %117

117:                                              ; preds = %116, %113
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32, i32* %14, align 4
  %120 = mul nsw i32 2, %119
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 2, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %125, %126
  %128 = mul nsw i32 2, %127
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %118
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %19, align 4
  store i32 -1, i32* %23, align 4
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %20, align 4
  br label %140

136:                                              ; preds = %118
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %19, align 4
  store i32 1, i32* %23, align 4
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %20, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %24, align 4
  %143 = sdiv i32 %142, 2
  %144 = sub nsw i32 %141, %143
  store i32 %144, i32* %26, align 4
  %145 = load i32, i32* %26, align 4
  store i32 %145, i32* %25, align 4
  br label %146

146:                                              ; preds = %158, %140
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* %26, align 4
  %149 = load i32, i32* %24, align 4
  %150 = add nsw i32 %148, %149
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %153, i32 %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %25, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %25, align 4
  br label %146

161:                                              ; preds = %146
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %9, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* %23, align 4
  %166 = mul nsw i32 %164, %165
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %211

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %209, %168
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %20, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %169
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %17, align 4
  br label %188

182:                                              ; preds = %173
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %182, %178
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %24, align 4
  %191 = sdiv i32 %190, 2
  %192 = sub nsw i32 %189, %191
  store i32 %192, i32* %26, align 4
  %193 = load i32, i32* %26, align 4
  store i32 %193, i32* %25, align 4
  br label %194

194:                                              ; preds = %206, %188
  %195 = load i32, i32* %25, align 4
  %196 = load i32, i32* %26, align 4
  %197 = load i32, i32* %24, align 4
  %198 = add nsw i32 %196, %197
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %201, i32 %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %25, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %25, align 4
  br label %194

209:                                              ; preds = %194
  br label %169

210:                                              ; preds = %169
  br label %254

211:                                              ; preds = %161
  br label %212

212:                                              ; preds = %252, %211
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %20, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %253

216:                                              ; preds = %212
  %217 = load i32, i32* %18, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %17, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %17, align 4
  br label %231

225:                                              ; preds = %216
  %226 = load i32, i32* %19, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %19, align 4
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %17, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %17, align 4
  br label %231

231:                                              ; preds = %225, %221
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %24, align 4
  %234 = sdiv i32 %233, 2
  %235 = sub nsw i32 %232, %234
  store i32 %235, i32* %26, align 4
  %236 = load i32, i32* %26, align 4
  store i32 %236, i32* %25, align 4
  br label %237

237:                                              ; preds = %249, %231
  %238 = load i32, i32* %25, align 4
  %239 = load i32, i32* %26, align 4
  %240 = load i32, i32* %24, align 4
  %241 = add nsw i32 %239, %240
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %237
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* %25, align 4
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %244, i32 %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %243
  %250 = load i32, i32* %25, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %25, align 4
  br label %237

252:                                              ; preds = %237
  br label %212

253:                                              ; preds = %212
  br label %254

254:                                              ; preds = %253, %210
  br label %410

255:                                              ; preds = %88
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @atan2(i32 %256, i32 %257)
  %259 = call double @sin(i32 %258)
  store double %259, double* %29, align 8
  %260 = load double, double* %29, align 8
  %261 = fcmp une double %260, 0.000000e+00
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load i32, i32* %27, align 4
  %264 = sitofp i32 %263 to double
  %265 = load double, double* %29, align 8
  %266 = fdiv double %264, %265
  %267 = fptosi double %266 to i32
  store i32 %267, i32* %24, align 4
  br label %269

268:                                              ; preds = %255
  store i32 1, i32* %24, align 4
  br label %269

269:                                              ; preds = %268, %262
  %270 = load i32, i32* %24, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  store i32 1, i32* %24, align 4
  br label %273

273:                                              ; preds = %272, %269
  %274 = load i32, i32* %13, align 4
  %275 = mul nsw i32 2, %274
  %276 = load i32, i32* %14, align 4
  %277 = sub nsw i32 %275, %276
  store i32 %277, i32* %17, align 4
  %278 = load i32, i32* %13, align 4
  %279 = mul nsw i32 2, %278
  store i32 %279, i32* %15, align 4
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %14, align 4
  %282 = sub nsw i32 %280, %281
  %283 = mul nsw i32 2, %282
  store i32 %283, i32* %16, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp sgt i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %273
  %288 = load i32, i32* %11, align 4
  store i32 %288, i32* %19, align 4
  %289 = load i32, i32* %10, align 4
  store i32 %289, i32* %18, align 4
  %290 = load i32, i32* %9, align 4
  store i32 %290, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  br label %295

291:                                              ; preds = %273
  %292 = load i32, i32* %9, align 4
  store i32 %292, i32* %19, align 4
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %18, align 4
  %294 = load i32, i32* %11, align 4
  store i32 %294, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %295

295:                                              ; preds = %291, %287
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* %24, align 4
  %298 = sdiv i32 %297, 2
  %299 = sub nsw i32 %296, %298
  store i32 %299, i32* %26, align 4
  %300 = load i32, i32* %26, align 4
  store i32 %300, i32* %25, align 4
  br label %301

301:                                              ; preds = %313, %295
  %302 = load i32, i32* %25, align 4
  %303 = load i32, i32* %26, align 4
  %304 = load i32, i32* %24, align 4
  %305 = add nsw i32 %303, %304
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %316

307:                                              ; preds = %301
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %19, align 4
  %311 = load i32, i32* %12, align 4
  %312 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %308, i32 %309, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %307
  %314 = load i32, i32* %25, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %25, align 4
  br label %301

316:                                              ; preds = %301
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %8, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load i32, i32* %22, align 4
  %321 = mul nsw i32 %319, %320
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %366

323:                                              ; preds = %316
  br label %324

324:                                              ; preds = %364, %323
  %325 = load i32, i32* %19, align 4
  %326 = load i32, i32* %21, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %365

328:                                              ; preds = %324
  %329 = load i32, i32* %19, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %19, align 4
  %331 = load i32, i32* %17, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = load i32, i32* %15, align 4
  %335 = load i32, i32* %17, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %17, align 4
  br label %343

337:                                              ; preds = %328
  %338 = load i32, i32* %18, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %18, align 4
  %340 = load i32, i32* %16, align 4
  %341 = load i32, i32* %17, align 4
  %342 = add nsw i32 %341, %340
  store i32 %342, i32* %17, align 4
  br label %343

343:                                              ; preds = %337, %333
  %344 = load i32, i32* %18, align 4
  %345 = load i32, i32* %24, align 4
  %346 = sdiv i32 %345, 2
  %347 = sub nsw i32 %344, %346
  store i32 %347, i32* %26, align 4
  %348 = load i32, i32* %26, align 4
  store i32 %348, i32* %25, align 4
  br label %349

349:                                              ; preds = %361, %343
  %350 = load i32, i32* %25, align 4
  %351 = load i32, i32* %26, align 4
  %352 = load i32, i32* %24, align 4
  %353 = add nsw i32 %351, %352
  %354 = icmp slt i32 %350, %353
  br i1 %354, label %355, label %364

355:                                              ; preds = %349
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %357 = load i32, i32* %25, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* %12, align 4
  %360 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %356, i32 %357, i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %355
  %362 = load i32, i32* %25, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %25, align 4
  br label %349

364:                                              ; preds = %349
  br label %324

365:                                              ; preds = %324
  br label %409

366:                                              ; preds = %316
  br label %367

367:                                              ; preds = %407, %366
  %368 = load i32, i32* %19, align 4
  %369 = load i32, i32* %21, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %408

371:                                              ; preds = %367
  %372 = load i32, i32* %19, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %19, align 4
  %374 = load i32, i32* %17, align 4
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %371
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %17, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* %17, align 4
  br label %386

380:                                              ; preds = %371
  %381 = load i32, i32* %18, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %18, align 4
  %383 = load i32, i32* %16, align 4
  %384 = load i32, i32* %17, align 4
  %385 = add nsw i32 %384, %383
  store i32 %385, i32* %17, align 4
  br label %386

386:                                              ; preds = %380, %376
  %387 = load i32, i32* %18, align 4
  %388 = load i32, i32* %24, align 4
  %389 = sdiv i32 %388, 2
  %390 = sub nsw i32 %387, %389
  store i32 %390, i32* %26, align 4
  %391 = load i32, i32* %26, align 4
  store i32 %391, i32* %25, align 4
  br label %392

392:                                              ; preds = %404, %386
  %393 = load i32, i32* %25, align 4
  %394 = load i32, i32* %26, align 4
  %395 = load i32, i32* %24, align 4
  %396 = add nsw i32 %394, %395
  %397 = icmp slt i32 %393, %396
  br i1 %397, label %398, label %407

398:                                              ; preds = %392
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %400 = load i32, i32* %25, align 4
  %401 = load i32, i32* %19, align 4
  %402 = load i32, i32* %12, align 4
  %403 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %399, i32 %400, i32 %401, i32 %402)
  br label %404

404:                                              ; preds = %398
  %405 = load i32, i32* %25, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %25, align 4
  br label %392

407:                                              ; preds = %392
  br label %367

408:                                              ; preds = %367
  br label %409

409:                                              ; preds = %408, %365
  br label %410

410:                                              ; preds = %36, %58, %70, %80, %409, %254
  ret void
}

declare dso_local i32 @gdImageAALine(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clip_1d(i32*, i32*, i32*, i32*, i64) #1

declare dso_local i64 @gdImageSX(%struct.TYPE_9__*) #1

declare dso_local i64 @gdImageSY(%struct.TYPE_9__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @gdImageVLine(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageHLine(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local double @cos(i32) #1

declare dso_local i32 @atan2(i32, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local double @sin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
