; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_rle.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@BMP_RLE_COMMAND = common dso_local global i32 0, align 4
@BMP_RLE_ENDOFLINE = common dso_local global i32 0, align 4
@BMP_RLE_DELTA = common dso_local global i32 0, align 4
@BMP_RLE_ENDOFBITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, %struct.TYPE_7__*)* @bmp_read_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_read_rle(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
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
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 8, %22
  store i32 %23, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %310, %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %31, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %24 ], [ %35, %30 ]
  br i1 %37, label %38, label %311

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @gdGetByte(i32* %12, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @gdGetByte(i32* %13, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %38
  store i32 1, i32* %4, align 4
  br label %312

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @BMP_RLE_COMMAND, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %155

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %66, %57
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %153, %73
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br label %84

84:                                               ; preds = %78, %74
  %85 = phi i1 [ false, %74 ], [ %83, %78 ]
  br i1 %85, label %86, label %154

86:                                               ; preds = %84
  store i32 1, i32* %16, align 4
  br label %87

87:                                               ; preds = %146, %86
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  br label %101

101:                                              ; preds = %97, %91, %87
  %102 = phi i1 [ false, %91 ], [ false, %87 ], [ %100, %97 ]
  br i1 %102, label %103, label %153

103:                                              ; preds = %101
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 1, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = sub nsw i32 8, %114
  %116 = shl i32 %109, %115
  %117 = and i32 %104, %116
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = sub nsw i32 8, %122
  %124 = ashr i32 %117, %123
  store i32 %124, i32* %11, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %103
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %133, %103
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @gdImageSetPixel(%struct.TYPE_6__* %141, i32 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %87

153:                                              ; preds = %101
  br label %74

154:                                              ; preds = %84
  br label %310

155:                                              ; preds = %47
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @BMP_RLE_COMMAND, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %262

159:                                              ; preds = %155
  %160 = load i32, i32* %13, align 4
  %161 = icmp sgt i32 %160, 2
  br i1 %161, label %162, label %262

162:                                              ; preds = %159
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %163

163:                                              ; preds = %248, %162
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br label %173

173:                                              ; preds = %167, %163
  %174 = phi i1 [ false, %163 ], [ %172, %167 ]
  br i1 %174, label %175, label %252

175:                                              ; preds = %173
  %176 = load i32, i32* %17, align 4
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @gdGetByte(i32* %11, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  store i32 1, i32* %4, align 4
  br label %312

181:                                              ; preds = %175
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %15, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* %18, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 %190, %191
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %189, %181
  store i32 1, i32* %16, align 4
  br label %194

194:                                              ; preds = %242, %193
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br label %204

204:                                              ; preds = %198, %194
  %205 = phi i1 [ false, %194 ], [ %203, %198 ]
  br i1 %205, label %206, label %247

206:                                              ; preds = %204
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = sub nsw i32 8, %212
  %214 = ashr i32 %207, %213
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 1, %217
  %219 = sub nsw i32 %218, 1
  %220 = and i32 %214, %219
  store i32 %220, i32* %19, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %206
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %229, %206
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %19, align 4
  %241 = call i32 @gdImageSetPixel(%struct.TYPE_6__* %237, i32 %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %16, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %16, align 4
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %194

247:                                              ; preds = %204
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %15, align 4
  br label %163

252:                                              ; preds = %173
  %253 = load i32, i32* %14, align 4
  %254 = srem i32 %253, 2
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @gdGetByte(i32* %11, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  store i32 1, i32* %4, align 4
  br label %312

261:                                              ; preds = %256, %252
  br label %309

262:                                              ; preds = %159, %155
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* @BMP_RLE_COMMAND, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %262
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* @BMP_RLE_ENDOFLINE, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  store i32 0, i32* %9, align 4
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %8, align 4
  br label %308

273:                                              ; preds = %266, %262
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* @BMP_RLE_COMMAND, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %297

277:                                              ; preds = %273
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* @BMP_RLE_DELTA, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %297

281:                                              ; preds = %277
  %282 = load i32, i32* %6, align 4
  %283 = call i32 @gdGetByte(i32* %12, i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @gdGetByte(i32* %13, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %285, %281
  store i32 1, i32* %4, align 4
  br label %312

290:                                              ; preds = %285
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %9, align 4
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %8, align 4
  br label %307

297:                                              ; preds = %277, %273
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* @BMP_RLE_COMMAND, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* @BMP_RLE_ENDOFBITMAP, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  br label %311

306:                                              ; preds = %301, %297
  br label %307

307:                                              ; preds = %306, %290
  br label %308

308:                                              ; preds = %307, %270
  br label %309

309:                                              ; preds = %308, %261
  br label %310

310:                                              ; preds = %309, %154
  br label %24

311:                                              ; preds = %305, %36
  store i32 0, i32* %4, align 4
  br label %312

312:                                              ; preds = %311, %289, %260, %180, %46
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local i32 @gdGetByte(i32*, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
