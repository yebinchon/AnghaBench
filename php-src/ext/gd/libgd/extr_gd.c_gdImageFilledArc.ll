; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFilledArc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFilledArc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@gdCosT = common dso_local global i64* null, align 8
@gdSinT = common dso_local global i64* null, align 8
@gdChord = common dso_local global i32 0, align 4
@gdNoFill = common dso_local global i32 0, align 4
@gdEdged = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageFilledArc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [363 x %struct.TYPE_3__], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  store i32 -1, i32* %28, align 4
  store i32 -1, i32* %29, align 4
  %32 = load i32, i32* %15, align 4
  %33 = srem i32 %32, 360
  %34 = load i32, i32* %16, align 4
  %35 = srem i32 %34, 360
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %9
  store i32 0, i32* %15, align 4
  store i32 360, i32* %16, align 4
  br label %71

38:                                               ; preds = %9
  %39 = load i32, i32* %15, align 4
  %40 = icmp sgt i32 %39, 360
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = srem i32 %42, 360
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %16, align 4
  %46 = icmp sgt i32 %45, 360
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = srem i32 %48, 360
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %54, %50
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 360
  store i32 %56, i32* %15, align 4
  br label %51

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 360
  store i32 %64, i32* %16, align 4
  br label %58

65:                                               ; preds = %58
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %15, align 4
  store i32 360, i32* %16, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %73

73:                                               ; preds = %204, %71
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %209

77:                                               ; preds = %73
  %78 = load i64*, i64** @gdCosT, align 8
  %79 = load i32, i32* %20, align 4
  %80 = srem i32 %79, 360
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %83, %85
  %87 = sdiv i64 %86, 2048
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %28, align 4
  store i32 %91, i32* %30, align 4
  %92 = load i64*, i64** @gdSinT, align 8
  %93 = load i32, i32* %20, align 4
  %94 = srem i32 %93, 360
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %97, %99
  %101 = sdiv i64 %100, 2048
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %29, align 4
  store i32 %105, i32* %31, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %174

109:                                              ; preds = %77
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @gdChord, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %173, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @gdNoFill, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %30, align 4
  %124 = load i32, i32* %31, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @gdImageLine(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  br label %172

127:                                              ; preds = %114
  %128 = load i32, i32* %31, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %127
  %132 = load i32, i32* %21, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp sgt i32 %134, 270
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %20, align 4
  %138 = icmp slt i32 %137, 90
  br i1 %138, label %139, label %143

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %30, align 4
  %141 = load i32, i32* %22, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %153, label %143

143:                                              ; preds = %139, %136
  %144 = load i32, i32* %20, align 4
  %145 = icmp sgt i32 %144, 90
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32, i32* %20, align 4
  %148 = icmp slt i32 %147, 270
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %30, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149, %139
  %154 = load i32, i32* %30, align 4
  %155 = load i32, i32* %21, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 8
  br label %159

159:                                              ; preds = %153, %149, %146, %143
  br label %171

160:                                              ; preds = %127
  %161 = load i32, i32* %30, align 4
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 8
  %166 = load i32, i32* %31, align 4
  %167 = load i32, i32* %21, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %160, %159
  br label %172

172:                                              ; preds = %171, %119
  br label %173

173:                                              ; preds = %172, %109
  br label %201

174:                                              ; preds = %77
  %175 = load i32, i32* %30, align 4
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %31, align 4
  store i32 %176, i32* %25, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* @gdChord, align 4
  %179 = load i32, i32* @gdNoFill, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %177, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %200, label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %11, align 4
  %185 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 16
  %187 = load i32, i32* %12, align 4
  %188 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %30, align 4
  store i32 %190, i32* %26, align 4
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  store i32 %190, i32* %194, align 8
  %195 = load i32, i32* %31, align 4
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %183, %174
  br label %201

201:                                              ; preds = %200, %173
  %202 = load i32, i32* %30, align 4
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %31, align 4
  store i32 %203, i32* %23, align 4
  br label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %21, align 4
  br label %73

209:                                              ; preds = %73
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* @gdChord, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %271

214:                                              ; preds = %209
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* @gdNoFill, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %247

219:                                              ; preds = %214
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* @gdEdged, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %219
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32, i32* %17, align 4
  %231 = call i32 @gdImageLine(i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %24, align 4
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %17, align 4
  %238 = call i32 @gdImageLine(i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %224, %219
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %24, align 4
  %242 = load i32, i32* %25, align 4
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* %17, align 4
  %246 = call i32 @gdImageLine(i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  br label %270

247:                                              ; preds = %214
  %248 = load i32, i32* %24, align 4
  %249 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 16
  %251 = load i32, i32* %25, align 4
  %252 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %22, align 4
  %255 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 1
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* %23, align 4
  %258 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 1
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %11, align 4
  %261 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 2
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 16
  %263 = load i32, i32* %12, align 4
  %264 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 2
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %10, align 4
  %267 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %268 = load i32, i32* %17, align 4
  %269 = call i32 @gdImageFilledPolygon(i32 %266, %struct.TYPE_3__* %267, i32 3, i32 %268)
  br label %270

270:                                              ; preds = %247, %239
  br label %402

271:                                              ; preds = %209
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* @gdNoFill, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %297

276:                                              ; preds = %271
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* @gdEdged, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %276
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %22, align 4
  %286 = load i32, i32* %23, align 4
  %287 = load i32, i32* %17, align 4
  %288 = call i32 @gdImageLine(i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287)
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %24, align 4
  %293 = load i32, i32* %25, align 4
  %294 = load i32, i32* %17, align 4
  %295 = call i32 @gdImageLine(i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %281, %276
  br label %401

297:                                              ; preds = %271
  %298 = load i32, i32* %16, align 4
  %299 = load i32, i32* %15, align 4
  %300 = sub nsw i32 %298, %299
  %301 = icmp slt i32 %300, 360
  br i1 %301, label %302, label %384

302:                                              ; preds = %297
  %303 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 1
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %26, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %352

308:                                              ; preds = %302
  %309 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 1
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %27, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %352

314:                                              ; preds = %308
  %315 = load i32, i32* %21, align 4
  store i32 %315, i32* %20, align 4
  br label %316

316:                                              ; preds = %340, %314
  %317 = load i32, i32* %20, align 4
  %318 = icmp sgt i32 %317, 1
  br i1 %318, label %319, label %343

319:                                              ; preds = %316
  %320 = load i32, i32* %20, align 4
  %321 = sub nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %20, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 0
  store i32 %325, i32* %329, align 8
  %330 = load i32, i32* %20, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %20, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 1
  store i32 %335, i32* %339, align 4
  br label %340

340:                                              ; preds = %319
  %341 = load i32, i32* %20, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %20, align 4
  br label %316

343:                                              ; preds = %316
  %344 = load i32, i32* %26, align 4
  %345 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 1
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 0
  store i32 %344, i32* %346, align 8
  %347 = load i32, i32* %27, align 4
  %348 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 1
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* %21, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %21, align 4
  br label %352

352:                                              ; preds = %343, %308, %302
  %353 = load i32, i32* %21, align 4
  %354 = sub nsw i32 %353, 1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* %28, align 4
  %360 = icmp ne i32 %358, %359
  br i1 %360, label %361, label %383

361:                                              ; preds = %352
  %362 = load i32, i32* %21, align 4
  %363 = sub nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %29, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %383

370:                                              ; preds = %361
  %371 = load i32, i32* %28, align 4
  %372 = load i32, i32* %21, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 0
  store i32 %371, i32* %375, align 8
  %376 = load i32, i32* %29, align 4
  %377 = load i32, i32* %21, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 1
  store i32 %376, i32* %380, align 4
  %381 = load i32, i32* %21, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %21, align 4
  br label %383

383:                                              ; preds = %370, %361, %352
  br label %384

384:                                              ; preds = %383, %297
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* %21, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 0
  store i32 %385, i32* %389, align 8
  %390 = load i32, i32* %12, align 4
  %391 = load i32, i32* %21, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 1
  store i32 %390, i32* %394, align 4
  %395 = load i32, i32* %10, align 4
  %396 = getelementptr inbounds [363 x %struct.TYPE_3__], [363 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %397 = load i32, i32* %21, align 4
  %398 = add nsw i32 %397, 1
  %399 = load i32, i32* %17, align 4
  %400 = call i32 @gdImageFilledPolygon(i32 %395, %struct.TYPE_3__* %396, i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %384, %296
  br label %402

402:                                              ; preds = %401, %270
  ret void
}

declare dso_local i32 @gdImageLine(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageFilledPolygon(i32, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
