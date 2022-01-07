; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwtran.c_png_do_shift.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwtran.c_png_do_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"in png_do_shift\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, %struct.TYPE_6__*)* @png_do_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_do_shift(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %31 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %376

37:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %99

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %118

99:                                               ; preds = %37
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %99, %44
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %128, %131
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %140
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %125, %118
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %147, 8
  br i1 %148, label %149, label %230

149:                                              ; preds = %144
  %150 = load i32*, i32** %5, align 8
  store i32* %150, i32** %10, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %13, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %149
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 85, i32* %12, align 4
  br label %177

164:                                              ; preds = %158, %149
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 4
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 17, i32* %12, align 4
  br label %176

175:                                              ; preds = %169, %164
  store i32 255, i32* %12, align 4
  br label %176

176:                                              ; preds = %175, %174
  br label %177

177:                                              ; preds = %176, %163
  store i64 0, i64* %11, align 8
  br label %178

178:                                              ; preds = %224, %177
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %229

182:                                              ; preds = %178
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %186 = load i32, i32* %185, align 16
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %212, %182
  %188 = load i32, i32* %14, align 4
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = sub nsw i32 0, %190
  %192 = icmp sgt i32 %188, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %187
  %194 = load i32, i32* %14, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %14, align 4
  %199 = shl i32 %197, %198
  %200 = load i32, i32* %16, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %16, align 4
  br label %211

202:                                              ; preds = %193
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %14, align 4
  %205 = sub nsw i32 0, %204
  %206 = lshr i32 %203, %205
  %207 = load i32, i32* %12, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* %16, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %16, align 4
  br label %211

211:                                              ; preds = %202, %196
  br label %212

212:                                              ; preds = %211
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %214 = load i32, i32* %213, align 16
  %215 = load i32, i32* %14, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %14, align 4
  br label %187

217:                                              ; preds = %187
  %218 = load i32, i32* %16, align 4
  %219 = and i32 %218, 255
  %220 = zext i32 %219 to i64
  %221 = inttoptr i64 %220 to i8*
  %222 = ptrtoint i8* %221 to i32
  %223 = load i32*, i32** %10, align 8
  store i32 %222, i32* %223, align 4
  br label %224

224:                                              ; preds = %217
  %225 = load i64, i64* %11, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %11, align 8
  %227 = load i32*, i32** %10, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %10, align 8
  br label %178

229:                                              ; preds = %178
  br label %375

230:                                              ; preds = %144
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 8
  br i1 %234, label %235, label %301

235:                                              ; preds = %230
  %236 = load i32*, i32** %5, align 8
  store i32* %236, i32** %17, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = mul i32 %237, %240
  store i32 %241, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %242

242:                                              ; preds = %295, %235
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %19, align 4
  %245 = icmp ult i32 %243, %244
  br i1 %245, label %246, label %300

246:                                              ; preds = %242
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %9, align 4
  %249 = urem i32 %247, %248
  store i32 %249, i32* %20, align 4
  %250 = load i32*, i32** %17, align 8
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %252 = load i32, i32* %20, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %21, align 4
  br label %256

256:                                              ; preds = %281, %246
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* %20, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 0, %261
  %263 = icmp sgt i32 %257, %262
  br i1 %263, label %264, label %288

264:                                              ; preds = %256
  %265 = load i32, i32* %21, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %264
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* %21, align 4
  %270 = shl i32 %268, %269
  %271 = load i32, i32* %23, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %23, align 4
  br label %280

273:                                              ; preds = %264
  %274 = load i32, i32* %22, align 4
  %275 = load i32, i32* %21, align 4
  %276 = sub nsw i32 0, %275
  %277 = lshr i32 %274, %276
  %278 = load i32, i32* %23, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %23, align 4
  br label %280

280:                                              ; preds = %273, %267
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %20, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %21, align 4
  %287 = sub nsw i32 %286, %285
  store i32 %287, i32* %21, align 4
  br label %256

288:                                              ; preds = %256
  %289 = load i32, i32* %23, align 4
  %290 = and i32 %289, 255
  %291 = zext i32 %290 to i64
  %292 = inttoptr i64 %291 to i8*
  %293 = ptrtoint i8* %292 to i32
  %294 = load i32*, i32** %17, align 8
  store i32 %293, i32* %294, align 4
  br label %295

295:                                              ; preds = %288
  %296 = load i32, i32* %18, align 4
  %297 = add i32 %296, 1
  store i32 %297, i32* %18, align 4
  %298 = load i32*, i32** %17, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %17, align 8
  br label %242

300:                                              ; preds = %242
  br label %374

301:                                              ; preds = %230
  %302 = load i32, i32* %9, align 4
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = mul i32 %302, %305
  store i32 %306, i32* %26, align 4
  %307 = load i32*, i32** %5, align 8
  store i32* %307, i32** %24, align 8
  store i32 0, i32* %25, align 4
  br label %308

308:                                              ; preds = %370, %301
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %26, align 4
  %311 = icmp ult i32 %309, %310
  br i1 %311, label %312, label %373

312:                                              ; preds = %308
  %313 = load i32, i32* %25, align 4
  %314 = load i32, i32* %9, align 4
  %315 = urem i32 %313, %314
  store i32 %315, i32* %27, align 4
  %316 = load i32*, i32** %24, align 8
  %317 = call i32 @png_get_uint_16(i32* %316)
  store i32 %317, i32* %30, align 4
  store i32 0, i32* %29, align 4
  %318 = load i32, i32* %27, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %28, align 4
  br label %322

322:                                              ; preds = %347, %312
  %323 = load i32, i32* %28, align 4
  %324 = load i32, i32* %27, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 0, %327
  %329 = icmp sgt i32 %323, %328
  br i1 %329, label %330, label %354

330:                                              ; preds = %322
  %331 = load i32, i32* %28, align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %330
  %334 = load i32, i32* %30, align 4
  %335 = load i32, i32* %28, align 4
  %336 = shl i32 %334, %335
  %337 = load i32, i32* %29, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %29, align 4
  br label %346

339:                                              ; preds = %330
  %340 = load i32, i32* %30, align 4
  %341 = load i32, i32* %28, align 4
  %342 = sub nsw i32 0, %341
  %343 = lshr i32 %340, %342
  %344 = load i32, i32* %29, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %29, align 4
  br label %346

346:                                              ; preds = %339, %333
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %27, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %28, align 4
  %353 = sub nsw i32 %352, %351
  store i32 %353, i32* %28, align 4
  br label %322

354:                                              ; preds = %322
  %355 = load i32, i32* %29, align 4
  %356 = lshr i32 %355, 8
  %357 = and i32 %356, 255
  %358 = zext i32 %357 to i64
  %359 = inttoptr i64 %358 to i8*
  %360 = ptrtoint i8* %359 to i32
  %361 = load i32*, i32** %24, align 8
  %362 = getelementptr inbounds i32, i32* %361, i32 1
  store i32* %362, i32** %24, align 8
  store i32 %360, i32* %361, align 4
  %363 = load i32, i32* %29, align 4
  %364 = and i32 %363, 255
  %365 = zext i32 %364 to i64
  %366 = inttoptr i64 %365 to i8*
  %367 = ptrtoint i8* %366 to i32
  %368 = load i32*, i32** %24, align 8
  %369 = getelementptr inbounds i32, i32* %368, i32 1
  store i32* %369, i32** %24, align 8
  store i32 %367, i32* %368, align 4
  br label %370

370:                                              ; preds = %354
  %371 = load i32, i32* %25, align 4
  %372 = add i32 %371, 1
  store i32 %372, i32* %25, align 4
  br label %308

373:                                              ; preds = %308
  br label %374

374:                                              ; preds = %373, %300
  br label %375

375:                                              ; preds = %374, %229
  br label %376

376:                                              ; preds = %375, %3
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_get_uint_16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
