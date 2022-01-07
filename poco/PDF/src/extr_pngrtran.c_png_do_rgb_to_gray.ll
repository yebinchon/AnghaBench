; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_rgb_to_gray.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_rgb_to_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64*, i32**, i32**, i32, i32* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"in png_do_rgb_to_gray\0A\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_do_rgb_to_gray(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %38 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %387

45:                                               ; preds = %3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %201

60:                                               ; preds = %45
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %121

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %6, align 8
  store i32* %67, i32** %14, align 8
  store i64 0, i64* %7, align 8
  br label %68

68:                                               ; preds = %117, %65
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %120

72:                                               ; preds = %68
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %13, align 8
  %75 = load i32, i32* %73, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %15, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %13, align 8
  %79 = load i32, i32* %77, align 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %16, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %13, align 8
  %83 = load i32, i32* %81, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %17, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %72
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %88, %72
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %15, align 8
  %97 = mul nsw i64 %95, %96
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %16, align 8
  %100 = mul nsw i64 %98, %99
  %101 = add nsw i64 %97, %100
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %17, align 8
  %104 = mul nsw i64 %102, %103
  %105 = add nsw i64 %101, %104
  %106 = ashr i64 %105, 15
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %14, align 8
  store i32 %107, i32* %108, align 4
  br label %116

110:                                              ; preds = %88
  %111 = load i32*, i32** %13, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 -1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %14, align 8
  store i32 %113, i32* %114, align 4
  br label %116

116:                                              ; preds = %110, %92
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %7, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %7, align 8
  br label %68

120:                                              ; preds = %68
  br label %200

121:                                              ; preds = %60
  %122 = load i32*, i32** %6, align 8
  store i32* %122, i32** %18, align 8
  %123 = load i32*, i32** %6, align 8
  store i32* %123, i32** %19, align 8
  store i64 0, i64* %7, align 8
  br label %124

124:                                              ; preds = %196, %121
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %199

128:                                              ; preds = %124
  %129 = load i32*, i32** %18, align 8
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 8
  %132 = load i32*, i32** %18, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %131, %134
  store i32 %135, i32* %20, align 4
  %136 = load i32*, i32** %18, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  store i32* %137, i32** %18, align 8
  %138 = load i32*, i32** %18, align 8
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 8
  %141 = load i32*, i32** %18, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %140, %143
  store i32 %144, i32* %21, align 4
  %145 = load i32*, i32** %18, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32* %146, i32** %18, align 8
  %147 = load i32*, i32** %18, align 8
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 8
  %150 = load i32*, i32** %18, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %149, %152
  store i32 %153, i32* %22, align 4
  %154 = load i32*, i32** %18, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32* %155, i32** %18, align 8
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %128
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159, %128
  %164 = load i32, i32* %9, align 4
  %165 = or i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i64, i64* %10, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %167, %169
  %171 = load i64, i64* %11, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %171, %173
  %175 = add nsw i64 %170, %174
  %176 = load i64, i64* %12, align 8
  %177 = load i32, i32* %22, align 4
  %178 = sext i32 %177 to i64
  %179 = mul nsw i64 %176, %178
  %180 = add nsw i64 %175, %179
  %181 = ashr i64 %180, 15
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %23, align 4
  %183 = load i32, i32* %23, align 4
  %184 = ashr i32 %183, 8
  %185 = and i32 %184, 255
  %186 = sext i32 %185 to i64
  %187 = trunc i64 %186 to i32
  %188 = load i32*, i32** %19, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %19, align 8
  store i32 %187, i32* %188, align 4
  %190 = load i32, i32* %23, align 4
  %191 = and i32 %190, 255
  %192 = sext i32 %191 to i64
  %193 = trunc i64 %192 to i32
  %194 = load i32*, i32** %19, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %19, align 8
  store i32 %193, i32* %194, align 4
  br label %196

196:                                              ; preds = %166
  %197 = load i64, i64* %7, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %7, align 8
  br label %124

199:                                              ; preds = %124
  br label %200

200:                                              ; preds = %199, %120
  br label %201

201:                                              ; preds = %200, %45
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %357

207:                                              ; preds = %201
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 8
  br i1 %211, label %212, label %267

212:                                              ; preds = %207
  %213 = load i32*, i32** %6, align 8
  store i32* %213, i32** %24, align 8
  %214 = load i32*, i32** %6, align 8
  store i32* %214, i32** %25, align 8
  store i64 0, i64* %7, align 8
  br label %215

215:                                              ; preds = %263, %212
  %216 = load i64, i64* %7, align 8
  %217 = load i64, i64* %8, align 8
  %218 = icmp slt i64 %216, %217
  br i1 %218, label %219, label %266

219:                                              ; preds = %215
  %220 = load i32*, i32** %24, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %24, align 8
  %222 = load i32, i32* %220, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %26, align 8
  %224 = load i32*, i32** %24, align 8
  %225 = getelementptr inbounds i32, i32* %224, i32 1
  store i32* %225, i32** %24, align 8
  %226 = load i32, i32* %224, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %27, align 8
  %228 = load i32*, i32** %24, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %24, align 8
  %230 = load i32, i32* %228, align 4
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %28, align 8
  %232 = load i64, i64* %26, align 8
  %233 = load i64, i64* %27, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %219
  %236 = load i64, i64* %26, align 8
  %237 = load i64, i64* %28, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235, %219
  %240 = load i32, i32* %9, align 4
  %241 = or i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %239, %235
  %243 = load i64, i64* %10, align 8
  %244 = load i64, i64* %26, align 8
  %245 = mul nsw i64 %243, %244
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* %27, align 8
  %248 = mul nsw i64 %246, %247
  %249 = add nsw i64 %245, %248
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* %28, align 8
  %252 = mul nsw i64 %250, %251
  %253 = add nsw i64 %249, %252
  %254 = ashr i64 %253, 15
  %255 = trunc i64 %254 to i32
  %256 = load i32*, i32** %25, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %25, align 8
  store i32 %255, i32* %256, align 4
  %258 = load i32*, i32** %24, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %24, align 8
  %260 = load i32, i32* %258, align 4
  %261 = load i32*, i32** %25, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %25, align 8
  store i32 %260, i32* %261, align 4
  br label %263

263:                                              ; preds = %242
  %264 = load i64, i64* %7, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %7, align 8
  br label %215

266:                                              ; preds = %215
  br label %356

267:                                              ; preds = %207
  %268 = load i32*, i32** %6, align 8
  store i32* %268, i32** %29, align 8
  %269 = load i32*, i32** %6, align 8
  store i32* %269, i32** %30, align 8
  store i64 0, i64* %7, align 8
  br label %270

270:                                              ; preds = %352, %267
  %271 = load i64, i64* %7, align 8
  %272 = load i64, i64* %8, align 8
  %273 = icmp slt i64 %271, %272
  br i1 %273, label %274, label %355

274:                                              ; preds = %270
  %275 = load i32*, i32** %29, align 8
  %276 = load i32, i32* %275, align 4
  %277 = shl i32 %276, 8
  %278 = load i32*, i32** %29, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %277, %280
  store i32 %281, i32* %31, align 4
  %282 = load i32*, i32** %29, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 2
  store i32* %283, i32** %29, align 8
  %284 = load i32*, i32** %29, align 8
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 8
  %287 = load i32*, i32** %29, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %286, %289
  store i32 %290, i32* %32, align 4
  %291 = load i32*, i32** %29, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  store i32* %292, i32** %29, align 8
  %293 = load i32*, i32** %29, align 8
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 8
  %296 = load i32*, i32** %29, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %295, %298
  store i32 %299, i32* %33, align 4
  %300 = load i32*, i32** %29, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  store i32* %301, i32** %29, align 8
  %302 = load i32, i32* %31, align 4
  %303 = load i32, i32* %32, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %309, label %305

305:                                              ; preds = %274
  %306 = load i32, i32* %31, align 4
  %307 = load i32, i32* %33, align 4
  %308 = icmp ne i32 %306, %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %305, %274
  %310 = load i32, i32* %9, align 4
  %311 = or i32 %310, 1
  store i32 %311, i32* %9, align 4
  br label %312

312:                                              ; preds = %309, %305
  %313 = load i64, i64* %10, align 8
  %314 = load i32, i32* %31, align 4
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 %313, %315
  %317 = load i64, i64* %11, align 8
  %318 = load i32, i32* %32, align 4
  %319 = sext i32 %318 to i64
  %320 = mul nsw i64 %317, %319
  %321 = add nsw i64 %316, %320
  %322 = load i64, i64* %12, align 8
  %323 = load i32, i32* %33, align 4
  %324 = sext i32 %323 to i64
  %325 = mul nsw i64 %322, %324
  %326 = add nsw i64 %321, %325
  %327 = ashr i64 %326, 15
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %34, align 4
  %329 = load i32, i32* %34, align 4
  %330 = ashr i32 %329, 8
  %331 = and i32 %330, 255
  %332 = sext i32 %331 to i64
  %333 = trunc i64 %332 to i32
  %334 = load i32*, i32** %30, align 8
  %335 = getelementptr inbounds i32, i32* %334, i32 1
  store i32* %335, i32** %30, align 8
  store i32 %333, i32* %334, align 4
  %336 = load i32, i32* %34, align 4
  %337 = and i32 %336, 255
  %338 = sext i32 %337 to i64
  %339 = trunc i64 %338 to i32
  %340 = load i32*, i32** %30, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %30, align 8
  store i32 %339, i32* %340, align 4
  %342 = load i32*, i32** %29, align 8
  %343 = getelementptr inbounds i32, i32* %342, i32 1
  store i32* %343, i32** %29, align 8
  %344 = load i32, i32* %342, align 4
  %345 = load i32*, i32** %30, align 8
  %346 = getelementptr inbounds i32, i32* %345, i32 1
  store i32* %346, i32** %30, align 8
  store i32 %344, i32* %345, align 4
  %347 = load i32*, i32** %29, align 8
  %348 = getelementptr inbounds i32, i32* %347, i32 1
  store i32* %348, i32** %29, align 8
  %349 = load i32, i32* %347, align 4
  %350 = load i32*, i32** %30, align 8
  %351 = getelementptr inbounds i32, i32* %350, i32 1
  store i32* %351, i32** %30, align 8
  store i32 %349, i32* %350, align 4
  br label %352

352:                                              ; preds = %312
  %353 = load i64, i64* %7, align 8
  %354 = add nsw i64 %353, 1
  store i64 %354, i64* %7, align 8
  br label %270

355:                                              ; preds = %270
  br label %356

356:                                              ; preds = %355, %266
  br label %357

357:                                              ; preds = %356, %201
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = sub nsw i64 %361, 2
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %359, align 8
  %364 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %365 = xor i32 %364, -1
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = and i32 %368, %365
  store i32 %369, i32* %367, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = mul nsw i32 %372, %375
  %377 = sext i32 %376 to i64
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 4
  store i64 %377, i64* %379, align 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 4
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* %8, align 8
  %384 = call i32 @PNG_ROWBYTES(i64 %382, i64 %383)
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 5
  store i32 %384, i32* %386, align 8
  br label %387

387:                                              ; preds = %357, %3
  %388 = load i32, i32* %9, align 4
  ret i32 %388
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @PNG_ROWBYTES(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
