; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_expand.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"in png_do_expand\0A\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_expand(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
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
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %349

34:                                               ; preds = %3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %214

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %206 [
    i32 1, label %52
    i32 2, label %102
    i32 4, label %158
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %53, 1
  %55 = mul nsw i32 %54, 255
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 1
  %59 = ashr i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = getelementptr inbounds i32, i32* %65, i64 -1
  store i32* %66, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 7
  %69 = and i32 %68, 7
  %70 = sub nsw i32 7, %69
  store i32 %70, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %98, %52
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %77, %78
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32*, i32** %10, align 8
  store i32 255, i32* %83, align 4
  br label %86

84:                                               ; preds = %75
  %85 = load i32*, i32** %10, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 7
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 -1
  store i32* %91, i32** %9, align 8
  br label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 -1
  store i32* %97, i32** %10, align 8
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %71

101:                                              ; preds = %71
  br label %206

102:                                              ; preds = %48
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, 3
  %105 = mul nsw i32 %104, 85
  store i32 %105, i32* %13, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %107, 1
  %109 = ashr i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32* %111, i32** %9, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = getelementptr inbounds i32, i32* %115, i64 -1
  store i32* %116, i32** %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 3
  %119 = and i32 %118, 3
  %120 = sub nsw i32 3, %119
  %121 = shl i32 %120, 1
  store i32 %121, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %154, %102
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %122
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %7, align 4
  %130 = ashr i32 %128, %129
  %131 = and i32 %130, 3
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = shl i32 %133, 2
  %135 = or i32 %132, %134
  %136 = load i32, i32* %8, align 4
  %137 = shl i32 %136, 4
  %138 = or i32 %135, %137
  %139 = load i32, i32* %8, align 4
  %140 = shl i32 %139, 6
  %141 = or i32 %138, %140
  %142 = load i32*, i32** %10, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 6
  br i1 %144, label %145, label %148

145:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 -1
  store i32* %147, i32** %9, align 8
  br label %151

148:                                              ; preds = %126
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 2
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 -1
  store i32* %153, i32** %10, align 8
  br label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %122

157:                                              ; preds = %122
  br label %206

158:                                              ; preds = %48
  %159 = load i32, i32* %13, align 4
  %160 = and i32 %159, 15
  %161 = mul nsw i32 %160, 17
  store i32 %161, i32* %13, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sub nsw i32 %163, 1
  %165 = ashr i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  store i32* %167, i32** %9, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = getelementptr inbounds i32, i32* %171, i64 -1
  store i32* %172, i32** %10, align 8
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  %175 = and i32 %174, 1
  %176 = sub nsw i32 1, %175
  %177 = shl i32 %176, 2
  store i32 %177, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %202, %158
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %205

182:                                              ; preds = %178
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %7, align 4
  %186 = ashr i32 %184, %185
  %187 = and i32 %186, 15
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = shl i32 %189, 4
  %191 = or i32 %188, %190
  %192 = load i32*, i32** %10, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 4
  br i1 %194, label %195, label %198

195:                                              ; preds = %182
  store i32 0, i32* %7, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 -1
  store i32* %197, i32** %9, align 8
  br label %199

198:                                              ; preds = %182
  store i32 4, i32* %7, align 4
  br label %199

199:                                              ; preds = %198, %195
  %200 = load i32*, i32** %10, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 -1
  store i32* %201, i32** %10, align 8
  br label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %178

205:                                              ; preds = %178
  br label %206

206:                                              ; preds = %48, %205, %157, %101
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  store i32 8, i32* %208, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  store i32 8, i32* %210, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %206, %42
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %216 = icmp ne %struct.TYPE_6__* %215, null
  br i1 %216, label %217, label %348

217:                                              ; preds = %214
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %261

222:                                              ; preds = %217
  %223 = load i32, i32* %13, align 4
  %224 = and i32 %223, 255
  store i32 %224, i32* %13, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = getelementptr inbounds i32, i32* %228, i64 -1
  store i32* %229, i32** %9, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %12, align 4
  %232 = shl i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = getelementptr inbounds i32, i32* %234, i64 -1
  store i32* %235, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %257, %222
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %260

240:                                              ; preds = %236
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load i32*, i32** %10, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 -1
  store i32* %247, i32** %10, align 8
  store i32 0, i32* %246, align 4
  br label %251

248:                                              ; preds = %240
  %249 = load i32*, i32** %10, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 -1
  store i32* %250, i32** %10, align 8
  store i32 255, i32* %249, align 4
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i32*, i32** %9, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 -1
  store i32* %253, i32** %9, align 8
  %254 = load i32, i32* %252, align 4
  %255 = load i32*, i32** %10, align 8
  %256 = getelementptr inbounds i32, i32* %255, i32 -1
  store i32* %256, i32** %10, align 8
  store i32 %254, i32* %255, align 4
  br label %257

257:                                              ; preds = %251
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %236

260:                                              ; preds = %236
  br label %328

261:                                              ; preds = %217
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 16
  br i1 %265, label %266, label %327

266:                                              ; preds = %261
  %267 = load i32, i32* %13, align 4
  %268 = ashr i32 %267, 8
  %269 = and i32 %268, 255
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %13, align 4
  %271 = and i32 %270, 255
  store i32 %271, i32* %15, align 4
  %272 = load i32*, i32** %5, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  %278 = getelementptr inbounds i32, i32* %277, i64 -1
  store i32* %278, i32** %9, align 8
  %279 = load i32*, i32** %5, align 8
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = shl i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %279, i64 %284
  %286 = getelementptr inbounds i32, i32* %285, i64 -1
  store i32* %286, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %287

287:                                              ; preds = %323, %266
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %12, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %326

291:                                              ; preds = %287
  %292 = load i32*, i32** %9, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 -1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %291
  %298 = load i32*, i32** %9, align 8
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %15, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load i32*, i32** %10, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 -1
  store i32* %304, i32** %10, align 8
  store i32 0, i32* %303, align 4
  %305 = load i32*, i32** %10, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 -1
  store i32* %306, i32** %10, align 8
  store i32 0, i32* %305, align 4
  br label %312

307:                                              ; preds = %297, %291
  %308 = load i32*, i32** %10, align 8
  %309 = getelementptr inbounds i32, i32* %308, i32 -1
  store i32* %309, i32** %10, align 8
  store i32 255, i32* %308, align 4
  %310 = load i32*, i32** %10, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 -1
  store i32* %311, i32** %10, align 8
  store i32 255, i32* %310, align 4
  br label %312

312:                                              ; preds = %307, %302
  %313 = load i32*, i32** %9, align 8
  %314 = getelementptr inbounds i32, i32* %313, i32 -1
  store i32* %314, i32** %9, align 8
  %315 = load i32, i32* %313, align 4
  %316 = load i32*, i32** %10, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 -1
  store i32* %317, i32** %10, align 8
  store i32 %315, i32* %316, align 4
  %318 = load i32*, i32** %9, align 8
  %319 = getelementptr inbounds i32, i32* %318, i32 -1
  store i32* %319, i32** %9, align 8
  %320 = load i32, i32* %318, align 4
  %321 = load i32*, i32** %10, align 8
  %322 = getelementptr inbounds i32, i32* %321, i32 -1
  store i32* %322, i32** %10, align 8
  store i32 %320, i32* %321, align 4
  br label %323

323:                                              ; preds = %312
  %324 = load i32, i32* %11, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %11, align 4
  br label %287

326:                                              ; preds = %287
  br label %327

327:                                              ; preds = %326, %261
  br label %328

328:                                              ; preds = %327, %260
  %329 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  store i64 %329, i64* %331, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 5
  store i32 2, i32* %333, align 4
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = shl i32 %336, 1
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 3
  store i32 %337, i32* %339, align 4
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %12, align 4
  %344 = call i8* @PNG_ROWBYTES(i32 %342, i32 %343)
  %345 = ptrtoint i8* %344 to i32
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 8
  br label %348

348:                                              ; preds = %328, %214
  br label %588

349:                                              ; preds = %3
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %587

355:                                              ; preds = %349
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %357 = icmp ne %struct.TYPE_6__* %356, null
  br i1 %357, label %358, label %587

358:                                              ; preds = %355
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp eq i32 %361, 8
  br i1 %362, label %363, label %436

363:                                              ; preds = %358
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = and i32 %366, 255
  store i32 %367, i32* %16, align 4
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %370, 255
  store i32 %371, i32* %17, align 4
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 255
  store i32 %375, i32* %18, align 4
  %376 = load i32*, i32** %5, align 8
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %376, i64 %380
  %382 = getelementptr inbounds i32, i32* %381, i64 -1
  store i32* %382, i32** %9, align 8
  %383 = load i32*, i32** %5, align 8
  %384 = load i32, i32* %12, align 4
  %385 = shl i32 %384, 2
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  %388 = getelementptr inbounds i32, i32* %387, i64 -1
  store i32* %388, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %389

389:                                              ; preds = %432, %363
  %390 = load i32, i32* %11, align 4
  %391 = load i32, i32* %12, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %435

393:                                              ; preds = %389
  %394 = load i32*, i32** %9, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 -2
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* %16, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %413

399:                                              ; preds = %393
  %400 = load i32*, i32** %9, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 -1
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* %17, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %413

405:                                              ; preds = %399
  %406 = load i32*, i32** %9, align 8
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %18, align 4
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %413

410:                                              ; preds = %405
  %411 = load i32*, i32** %10, align 8
  %412 = getelementptr inbounds i32, i32* %411, i32 -1
  store i32* %412, i32** %10, align 8
  store i32 0, i32* %411, align 4
  br label %416

413:                                              ; preds = %405, %399, %393
  %414 = load i32*, i32** %10, align 8
  %415 = getelementptr inbounds i32, i32* %414, i32 -1
  store i32* %415, i32** %10, align 8
  store i32 255, i32* %414, align 4
  br label %416

416:                                              ; preds = %413, %410
  %417 = load i32*, i32** %9, align 8
  %418 = getelementptr inbounds i32, i32* %417, i32 -1
  store i32* %418, i32** %9, align 8
  %419 = load i32, i32* %417, align 4
  %420 = load i32*, i32** %10, align 8
  %421 = getelementptr inbounds i32, i32* %420, i32 -1
  store i32* %421, i32** %10, align 8
  store i32 %419, i32* %420, align 4
  %422 = load i32*, i32** %9, align 8
  %423 = getelementptr inbounds i32, i32* %422, i32 -1
  store i32* %423, i32** %9, align 8
  %424 = load i32, i32* %422, align 4
  %425 = load i32*, i32** %10, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 -1
  store i32* %426, i32** %10, align 8
  store i32 %424, i32* %425, align 4
  %427 = load i32*, i32** %9, align 8
  %428 = getelementptr inbounds i32, i32* %427, i32 -1
  store i32* %428, i32** %9, align 8
  %429 = load i32, i32* %427, align 4
  %430 = load i32*, i32** %10, align 8
  %431 = getelementptr inbounds i32, i32* %430, i32 -1
  store i32* %431, i32** %10, align 8
  store i32 %429, i32* %430, align 4
  br label %432

432:                                              ; preds = %416
  %433 = load i32, i32* %11, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %11, align 4
  br label %389

435:                                              ; preds = %389
  br label %567

436:                                              ; preds = %358
  %437 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %439, 16
  br i1 %440, label %441, label %566

441:                                              ; preds = %436
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = ashr i32 %444, 8
  %446 = and i32 %445, 255
  store i32 %446, i32* %19, align 4
  %447 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = ashr i32 %449, 8
  %451 = and i32 %450, 255
  store i32 %451, i32* %20, align 4
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = ashr i32 %454, 8
  %456 = and i32 %455, 255
  store i32 %456, i32* %21, align 4
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = and i32 %459, 255
  store i32 %460, i32* %22, align 4
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = and i32 %463, 255
  store i32 %464, i32* %23, align 4
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = and i32 %467, 255
  store i32 %468, i32* %24, align 4
  %469 = load i32*, i32** %5, align 8
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %469, i64 %473
  %475 = getelementptr inbounds i32, i32* %474, i64 -1
  store i32* %475, i32** %9, align 8
  %476 = load i32*, i32** %5, align 8
  %477 = load i32, i32* %12, align 4
  %478 = shl i32 %477, 3
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %476, i64 %479
  %481 = getelementptr inbounds i32, i32* %480, i64 -1
  store i32* %481, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %482

482:                                              ; preds = %562, %441
  %483 = load i32, i32* %11, align 4
  %484 = load i32, i32* %12, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %565

486:                                              ; preds = %482
  %487 = load i32*, i32** %9, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 -5
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %19, align 4
  %491 = icmp eq i32 %489, %490
  br i1 %491, label %492, label %526

492:                                              ; preds = %486
  %493 = load i32*, i32** %9, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 -4
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %22, align 4
  %497 = icmp eq i32 %495, %496
  br i1 %497, label %498, label %526

498:                                              ; preds = %492
  %499 = load i32*, i32** %9, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 -3
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* %20, align 4
  %503 = icmp eq i32 %501, %502
  br i1 %503, label %504, label %526

504:                                              ; preds = %498
  %505 = load i32*, i32** %9, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 -2
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* %23, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %526

510:                                              ; preds = %504
  %511 = load i32*, i32** %9, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 -1
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* %21, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %526

516:                                              ; preds = %510
  %517 = load i32*, i32** %9, align 8
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* %24, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %526

521:                                              ; preds = %516
  %522 = load i32*, i32** %10, align 8
  %523 = getelementptr inbounds i32, i32* %522, i32 -1
  store i32* %523, i32** %10, align 8
  store i32 0, i32* %522, align 4
  %524 = load i32*, i32** %10, align 8
  %525 = getelementptr inbounds i32, i32* %524, i32 -1
  store i32* %525, i32** %10, align 8
  store i32 0, i32* %524, align 4
  br label %531

526:                                              ; preds = %516, %510, %504, %498, %492, %486
  %527 = load i32*, i32** %10, align 8
  %528 = getelementptr inbounds i32, i32* %527, i32 -1
  store i32* %528, i32** %10, align 8
  store i32 255, i32* %527, align 4
  %529 = load i32*, i32** %10, align 8
  %530 = getelementptr inbounds i32, i32* %529, i32 -1
  store i32* %530, i32** %10, align 8
  store i32 255, i32* %529, align 4
  br label %531

531:                                              ; preds = %526, %521
  %532 = load i32*, i32** %9, align 8
  %533 = getelementptr inbounds i32, i32* %532, i32 -1
  store i32* %533, i32** %9, align 8
  %534 = load i32, i32* %532, align 4
  %535 = load i32*, i32** %10, align 8
  %536 = getelementptr inbounds i32, i32* %535, i32 -1
  store i32* %536, i32** %10, align 8
  store i32 %534, i32* %535, align 4
  %537 = load i32*, i32** %9, align 8
  %538 = getelementptr inbounds i32, i32* %537, i32 -1
  store i32* %538, i32** %9, align 8
  %539 = load i32, i32* %537, align 4
  %540 = load i32*, i32** %10, align 8
  %541 = getelementptr inbounds i32, i32* %540, i32 -1
  store i32* %541, i32** %10, align 8
  store i32 %539, i32* %540, align 4
  %542 = load i32*, i32** %9, align 8
  %543 = getelementptr inbounds i32, i32* %542, i32 -1
  store i32* %543, i32** %9, align 8
  %544 = load i32, i32* %542, align 4
  %545 = load i32*, i32** %10, align 8
  %546 = getelementptr inbounds i32, i32* %545, i32 -1
  store i32* %546, i32** %10, align 8
  store i32 %544, i32* %545, align 4
  %547 = load i32*, i32** %9, align 8
  %548 = getelementptr inbounds i32, i32* %547, i32 -1
  store i32* %548, i32** %9, align 8
  %549 = load i32, i32* %547, align 4
  %550 = load i32*, i32** %10, align 8
  %551 = getelementptr inbounds i32, i32* %550, i32 -1
  store i32* %551, i32** %10, align 8
  store i32 %549, i32* %550, align 4
  %552 = load i32*, i32** %9, align 8
  %553 = getelementptr inbounds i32, i32* %552, i32 -1
  store i32* %553, i32** %9, align 8
  %554 = load i32, i32* %552, align 4
  %555 = load i32*, i32** %10, align 8
  %556 = getelementptr inbounds i32, i32* %555, i32 -1
  store i32* %556, i32** %10, align 8
  store i32 %554, i32* %555, align 4
  %557 = load i32*, i32** %9, align 8
  %558 = getelementptr inbounds i32, i32* %557, i32 -1
  store i32* %558, i32** %9, align 8
  %559 = load i32, i32* %557, align 4
  %560 = load i32*, i32** %10, align 8
  %561 = getelementptr inbounds i32, i32* %560, i32 -1
  store i32* %561, i32** %10, align 8
  store i32 %559, i32* %560, align 4
  br label %562

562:                                              ; preds = %531
  %563 = load i32, i32* %11, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %11, align 4
  br label %482

565:                                              ; preds = %482
  br label %566

566:                                              ; preds = %565, %436
  br label %567

567:                                              ; preds = %566, %435
  %568 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %569 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %569, i32 0, i32 1
  store i64 %568, i64* %570, align 8
  %571 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %571, i32 0, i32 5
  store i32 4, i32* %572, align 4
  %573 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %574 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %573, i32 0, i32 2
  %575 = load i32, i32* %574, align 8
  %576 = shl i32 %575, 2
  %577 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %578 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %577, i32 0, i32 3
  store i32 %576, i32* %578, align 4
  %579 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* %12, align 4
  %583 = call i8* @PNG_ROWBYTES(i32 %581, i32 %582)
  %584 = ptrtoint i8* %583 to i32
  %585 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %586 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %585, i32 0, i32 4
  store i32 %584, i32* %586, align 8
  br label %587

587:                                              ; preds = %567, %355, %349
  br label %588

588:                                              ; preds = %587, %348
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i8* @PNG_ROWBYTES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
