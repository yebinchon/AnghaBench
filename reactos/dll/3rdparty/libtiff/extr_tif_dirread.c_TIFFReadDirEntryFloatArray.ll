; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryFloatArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryFloatArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrAlloc = common dso_local global i32 0, align 4
@FLT_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, float**)* @TIFFReadDirEntryFloatArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryFloatArray(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, float** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64*, align 8
  %28 = alloca float*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca float*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca float*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca float*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca float*, align 8
  %45 = alloca i32, align 4
  %46 = alloca double*, align 8
  %47 = alloca float*, align 8
  %48 = alloca i32, align 4
  %49 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store float** %2, float*** %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %54 [
    i32 139, label %53
    i32 133, label %53
    i32 132, label %53
    i32 128, label %53
    i32 136, label %53
    i32 131, label %53
    i32 135, label %53
    i32 130, label %53
    i32 134, label %53
    i32 129, label %53
    i32 137, label %53
    i32 138, label %53
  ]

53:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %55, i32* %4, align 4
  br label %491

56:                                               ; preds = %53
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = call i32 @TIFFReadDirEntryArray(%struct.TYPE_9__* %57, %struct.TYPE_8__* %58, i32* %9, i32 4, i8** %10)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %56
  %67 = load float**, float*** %7, align 8
  store float* null, float** %67, align 8
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %491

69:                                               ; preds = %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %95 [
    i32 137, label %73
  ]

73:                                               ; preds = %69
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TIFF_SWAB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i8*, i8** %10, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @TIFFSwabArrayOfLong(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = bitcast i8* %88 to float*
  %90 = call i32 (%struct.TYPE_9__*, i32, ...) @TIFFCvtIEEEDoubleToNative(%struct.TYPE_9__* %86, i32 %87, float* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = bitcast i8* %91 to float*
  %93 = load float**, float*** %7, align 8
  store float* %92, float** %93, align 8
  %94 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %94, i32* %4, align 4
  br label %491

95:                                               ; preds = %69
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i64 @_TIFFmalloc(i32 %99)
  %101 = inttoptr i64 %100 to float*
  store float* %101, float** %11, align 8
  %102 = load float*, float** %11, align 8
  %103 = icmp eq float* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @_TIFFfree(i8* %105)
  %107 = load i32, i32* @TIFFReadDirEntryErrAlloc, align 4
  store i32 %107, i32* %4, align 4
  br label %491

108:                                              ; preds = %95
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %485 [
    i32 139, label %112
    i32 133, label %131
    i32 132, label %150
    i32 128, label %179
    i32 136, label %208
    i32 131, label %237
    i32 135, label %267
    i32 130, label %296
    i32 134, label %325
    i32 129, label %378
    i32 138, label %433
  ]

112:                                              ; preds = %108
  %113 = load i8*, i8** %10, align 8
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %12, align 8
  %115 = load float*, float** %11, align 8
  store float* %115, float** %13, align 8
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %127, %112
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %12, align 8
  %123 = load i32, i32* %121, align 4
  %124 = sitofp i32 %123 to float
  %125 = load float*, float** %13, align 8
  %126 = getelementptr inbounds float, float* %125, i32 1
  store float* %126, float** %13, align 8
  store float %124, float* %125, align 4
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %116

130:                                              ; preds = %116
  br label %485

131:                                              ; preds = %108
  %132 = load i8*, i8** %10, align 8
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %15, align 8
  %134 = load float*, float** %11, align 8
  store float* %134, float** %16, align 8
  store i32 0, i32* %17, align 4
  br label %135

135:                                              ; preds = %146, %131
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i32*, i32** %15, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %15, align 8
  %142 = load i32, i32* %140, align 4
  %143 = sitofp i32 %142 to float
  %144 = load float*, float** %16, align 8
  %145 = getelementptr inbounds float, float* %144, i32 1
  store float* %145, float** %16, align 8
  store float %143, float* %144, align 4
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %135

149:                                              ; preds = %135
  br label %485

150:                                              ; preds = %108
  %151 = load i8*, i8** %10, align 8
  %152 = bitcast i8* %151 to i32*
  store i32* %152, i32** %18, align 8
  %153 = load float*, float** %11, align 8
  store float* %153, float** %19, align 8
  store i32 0, i32* %20, align 4
  br label %154

154:                                              ; preds = %175, %150
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %154
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @TIFF_SWAB, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32*, i32** %18, align 8
  %167 = call i32 @TIFFSwabShort(i32* %166)
  br label %168

168:                                              ; preds = %165, %158
  %169 = load i32*, i32** %18, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %18, align 8
  %171 = load i32, i32* %169, align 4
  %172 = sitofp i32 %171 to float
  %173 = load float*, float** %19, align 8
  %174 = getelementptr inbounds float, float* %173, i32 1
  store float* %174, float** %19, align 8
  store float %172, float* %173, align 4
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %20, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %20, align 4
  br label %154

178:                                              ; preds = %154
  br label %485

179:                                              ; preds = %108
  %180 = load i8*, i8** %10, align 8
  %181 = bitcast i8* %180 to i32*
  store i32* %181, i32** %21, align 8
  %182 = load float*, float** %11, align 8
  store float* %182, float** %22, align 8
  store i32 0, i32* %23, align 4
  br label %183

183:                                              ; preds = %204, %179
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %183
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @TIFF_SWAB, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load i32*, i32** %21, align 8
  %196 = call i32 @TIFFSwabShort(i32* %195)
  br label %197

197:                                              ; preds = %194, %187
  %198 = load i32*, i32** %21, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %21, align 8
  %200 = load i32, i32* %198, align 4
  %201 = sitofp i32 %200 to float
  %202 = load float*, float** %22, align 8
  %203 = getelementptr inbounds float, float* %202, i32 1
  store float* %203, float** %22, align 8
  store float %201, float* %202, align 4
  br label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %23, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %23, align 4
  br label %183

207:                                              ; preds = %183
  br label %485

208:                                              ; preds = %108
  %209 = load i8*, i8** %10, align 8
  %210 = bitcast i8* %209 to i32*
  store i32* %210, i32** %24, align 8
  %211 = load float*, float** %11, align 8
  store float* %211, float** %25, align 8
  store i32 0, i32* %26, align 4
  br label %212

212:                                              ; preds = %233, %208
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %212
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @TIFF_SWAB, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load i32*, i32** %24, align 8
  %225 = call i32 @TIFFSwabLong(i32* %224)
  br label %226

226:                                              ; preds = %223, %216
  %227 = load i32*, i32** %24, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %24, align 8
  %229 = load i32, i32* %227, align 4
  %230 = sitofp i32 %229 to float
  %231 = load float*, float** %25, align 8
  %232 = getelementptr inbounds float, float* %231, i32 1
  store float* %232, float** %25, align 8
  store float %230, float* %231, align 4
  br label %233

233:                                              ; preds = %226
  %234 = load i32, i32* %26, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %26, align 4
  br label %212

236:                                              ; preds = %212
  br label %485

237:                                              ; preds = %108
  %238 = load i8*, i8** %10, align 8
  %239 = bitcast i8* %238 to i64*
  store i64* %239, i64** %27, align 8
  %240 = load float*, float** %11, align 8
  store float* %240, float** %28, align 8
  store i32 0, i32* %29, align 4
  br label %241

241:                                              ; preds = %263, %237
  %242 = load i32, i32* %29, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %266

245:                                              ; preds = %241
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @TIFF_SWAB, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %245
  %253 = load i64*, i64** %27, align 8
  %254 = bitcast i64* %253 to i32*
  %255 = call i32 @TIFFSwabLong(i32* %254)
  br label %256

256:                                              ; preds = %252, %245
  %257 = load i64*, i64** %27, align 8
  %258 = getelementptr inbounds i64, i64* %257, i32 1
  store i64* %258, i64** %27, align 8
  %259 = load i64, i64* %257, align 8
  %260 = sitofp i64 %259 to float
  %261 = load float*, float** %28, align 8
  %262 = getelementptr inbounds float, float* %261, i32 1
  store float* %262, float** %28, align 8
  store float %260, float* %261, align 4
  br label %263

263:                                              ; preds = %256
  %264 = load i32, i32* %29, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %29, align 4
  br label %241

266:                                              ; preds = %241
  br label %485

267:                                              ; preds = %108
  %268 = load i8*, i8** %10, align 8
  %269 = bitcast i8* %268 to i32*
  store i32* %269, i32** %30, align 8
  %270 = load float*, float** %11, align 8
  store float* %270, float** %31, align 8
  store i32 0, i32* %32, align 4
  br label %271

271:                                              ; preds = %292, %267
  %272 = load i32, i32* %32, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %295

275:                                              ; preds = %271
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @TIFF_SWAB, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %275
  %283 = load i32*, i32** %30, align 8
  %284 = call i32 @TIFFSwabLong8(i32* %283)
  br label %285

285:                                              ; preds = %282, %275
  %286 = load i32*, i32** %30, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %30, align 8
  %288 = load i32, i32* %286, align 4
  %289 = sitofp i32 %288 to float
  %290 = load float*, float** %31, align 8
  %291 = getelementptr inbounds float, float* %290, i32 1
  store float* %291, float** %31, align 8
  store float %289, float* %290, align 4
  br label %292

292:                                              ; preds = %285
  %293 = load i32, i32* %32, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %32, align 4
  br label %271

295:                                              ; preds = %271
  br label %485

296:                                              ; preds = %108
  %297 = load i8*, i8** %10, align 8
  %298 = bitcast i8* %297 to i32*
  store i32* %298, i32** %33, align 8
  %299 = load float*, float** %11, align 8
  store float* %299, float** %34, align 8
  store i32 0, i32* %35, align 4
  br label %300

300:                                              ; preds = %321, %296
  %301 = load i32, i32* %35, align 4
  %302 = load i32, i32* %9, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %324

304:                                              ; preds = %300
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @TIFF_SWAB, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %304
  %312 = load i32*, i32** %33, align 8
  %313 = call i32 @TIFFSwabLong8(i32* %312)
  br label %314

314:                                              ; preds = %311, %304
  %315 = load i32*, i32** %33, align 8
  %316 = getelementptr inbounds i32, i32* %315, i32 1
  store i32* %316, i32** %33, align 8
  %317 = load i32, i32* %315, align 4
  %318 = sitofp i32 %317 to float
  %319 = load float*, float** %34, align 8
  %320 = getelementptr inbounds float, float* %319, i32 1
  store float* %320, float** %34, align 8
  store float %318, float* %319, align 4
  br label %321

321:                                              ; preds = %314
  %322 = load i32, i32* %35, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %35, align 4
  br label %300

324:                                              ; preds = %300
  br label %485

325:                                              ; preds = %108
  %326 = load i8*, i8** %10, align 8
  %327 = bitcast i8* %326 to i32*
  store i32* %327, i32** %36, align 8
  %328 = load float*, float** %11, align 8
  store float* %328, float** %39, align 8
  store i32 0, i32* %40, align 4
  br label %329

329:                                              ; preds = %374, %325
  %330 = load i32, i32* %40, align 4
  %331 = load i32, i32* %9, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %377

333:                                              ; preds = %329
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @TIFF_SWAB, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %333
  %341 = load i32*, i32** %36, align 8
  %342 = call i32 @TIFFSwabLong(i32* %341)
  br label %343

343:                                              ; preds = %340, %333
  %344 = load i32*, i32** %36, align 8
  %345 = getelementptr inbounds i32, i32* %344, i32 1
  store i32* %345, i32** %36, align 8
  %346 = load i32, i32* %344, align 4
  store i32 %346, i32* %37, align 4
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @TIFF_SWAB, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %343
  %354 = load i32*, i32** %36, align 8
  %355 = call i32 @TIFFSwabLong(i32* %354)
  br label %356

356:                                              ; preds = %353, %343
  %357 = load i32*, i32** %36, align 8
  %358 = getelementptr inbounds i32, i32* %357, i32 1
  store i32* %358, i32** %36, align 8
  %359 = load i32, i32* %357, align 4
  store i32 %359, i32* %38, align 4
  %360 = load i32, i32* %38, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %356
  %363 = load float*, float** %39, align 8
  %364 = getelementptr inbounds float, float* %363, i32 1
  store float* %364, float** %39, align 8
  store float 0.000000e+00, float* %363, align 4
  br label %373

365:                                              ; preds = %356
  %366 = load i32, i32* %37, align 4
  %367 = sitofp i32 %366 to float
  %368 = load i32, i32* %38, align 4
  %369 = sitofp i32 %368 to float
  %370 = fdiv float %367, %369
  %371 = load float*, float** %39, align 8
  %372 = getelementptr inbounds float, float* %371, i32 1
  store float* %372, float** %39, align 8
  store float %370, float* %371, align 4
  br label %373

373:                                              ; preds = %365, %362
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %40, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %40, align 4
  br label %329

377:                                              ; preds = %329
  br label %485

378:                                              ; preds = %108
  %379 = load i8*, i8** %10, align 8
  %380 = bitcast i8* %379 to i32*
  store i32* %380, i32** %41, align 8
  %381 = load float*, float** %11, align 8
  store float* %381, float** %44, align 8
  store i32 0, i32* %45, align 4
  br label %382

382:                                              ; preds = %429, %378
  %383 = load i32, i32* %45, align 4
  %384 = load i32, i32* %9, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %432

386:                                              ; preds = %382
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @TIFF_SWAB, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %386
  %394 = load i32*, i32** %41, align 8
  %395 = call i32 @TIFFSwabLong(i32* %394)
  br label %396

396:                                              ; preds = %393, %386
  %397 = load i32*, i32** %41, align 8
  %398 = bitcast i32* %397 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %42, align 8
  %400 = load i32*, i32** %41, align 8
  %401 = getelementptr inbounds i32, i32* %400, i32 1
  store i32* %401, i32** %41, align 8
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @TIFF_SWAB, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %396
  %409 = load i32*, i32** %41, align 8
  %410 = call i32 @TIFFSwabLong(i32* %409)
  br label %411

411:                                              ; preds = %408, %396
  %412 = load i32*, i32** %41, align 8
  %413 = getelementptr inbounds i32, i32* %412, i32 1
  store i32* %413, i32** %41, align 8
  %414 = load i32, i32* %412, align 4
  store i32 %414, i32* %43, align 4
  %415 = load i32, i32* %43, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %411
  %418 = load float*, float** %44, align 8
  %419 = getelementptr inbounds float, float* %418, i32 1
  store float* %419, float** %44, align 8
  store float 0.000000e+00, float* %418, align 4
  br label %428

420:                                              ; preds = %411
  %421 = load i64, i64* %42, align 8
  %422 = sitofp i64 %421 to float
  %423 = load i32, i32* %43, align 4
  %424 = sitofp i32 %423 to float
  %425 = fdiv float %422, %424
  %426 = load float*, float** %44, align 8
  %427 = getelementptr inbounds float, float* %426, i32 1
  store float* %427, float** %44, align 8
  store float %425, float* %426, align 4
  br label %428

428:                                              ; preds = %420, %417
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %45, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %45, align 4
  br label %382

432:                                              ; preds = %382
  br label %485

433:                                              ; preds = %108
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @TIFF_SWAB, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %433
  %441 = load i8*, i8** %10, align 8
  %442 = bitcast i8* %441 to i32*
  %443 = load i32, i32* %9, align 4
  %444 = call i32 @TIFFSwabArrayOfLong8(i32* %442, i32 %443)
  br label %445

445:                                              ; preds = %440, %433
  %446 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %447 = load i32, i32* %9, align 4
  %448 = load i8*, i8** %10, align 8
  %449 = bitcast i8* %448 to double*
  %450 = call i32 (%struct.TYPE_9__*, i32, ...) @TIFFCvtIEEEDoubleToNative(%struct.TYPE_9__* %446, i32 %447, double* %449)
  %451 = load i8*, i8** %10, align 8
  %452 = bitcast i8* %451 to double*
  store double* %452, double** %46, align 8
  %453 = load float*, float** %11, align 8
  store float* %453, float** %47, align 8
  store i32 0, i32* %48, align 4
  br label %454

454:                                              ; preds = %481, %445
  %455 = load i32, i32* %48, align 4
  %456 = load i32, i32* %9, align 4
  %457 = icmp slt i32 %455, %456
  br i1 %457, label %458, label %484

458:                                              ; preds = %454
  %459 = load double*, double** %46, align 8
  %460 = getelementptr inbounds double, double* %459, i32 1
  store double* %460, double** %46, align 8
  %461 = load double, double* %459, align 8
  store double %461, double* %49, align 8
  %462 = load double, double* %49, align 8
  %463 = load double, double* @FLT_MAX, align 8
  %464 = fcmp ogt double %462, %463
  br i1 %464, label %465, label %467

465:                                              ; preds = %458
  %466 = load double, double* @FLT_MAX, align 8
  store double %466, double* %49, align 8
  br label %476

467:                                              ; preds = %458
  %468 = load double, double* %49, align 8
  %469 = load double, double* @FLT_MAX, align 8
  %470 = fneg double %469
  %471 = fcmp olt double %468, %470
  br i1 %471, label %472, label %475

472:                                              ; preds = %467
  %473 = load double, double* @FLT_MAX, align 8
  %474 = fneg double %473
  store double %474, double* %49, align 8
  br label %475

475:                                              ; preds = %472, %467
  br label %476

476:                                              ; preds = %475, %465
  %477 = load double, double* %49, align 8
  %478 = fptrunc double %477 to float
  %479 = load float*, float** %47, align 8
  %480 = getelementptr inbounds float, float* %479, i32 1
  store float* %480, float** %47, align 8
  store float %478, float* %479, align 4
  br label %481

481:                                              ; preds = %476
  %482 = load i32, i32* %48, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %48, align 4
  br label %454

484:                                              ; preds = %454
  br label %485

485:                                              ; preds = %108, %484, %432, %377, %324, %295, %266, %236, %207, %178, %149, %130
  %486 = load i8*, i8** %10, align 8
  %487 = call i32 @_TIFFfree(i8* %486)
  %488 = load float*, float** %11, align 8
  %489 = load float**, float*** %7, align 8
  store float* %488, float** %489, align 8
  %490 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %490, i32* %4, align 4
  br label %491

491:                                              ; preds = %485, %104, %85, %66, %54
  %492 = load i32, i32* %4, align 4
  ret i32 %492
}

declare dso_local i32 @TIFFReadDirEntryArray(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32, i8**) #1

declare dso_local i32 @TIFFSwabArrayOfLong(i32*, i32) #1

declare dso_local i32 @TIFFCvtIEEEDoubleToNative(%struct.TYPE_9__*, i32, ...) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @_TIFFfree(i8*) #1

declare dso_local i32 @TIFFSwabShort(i32*) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @TIFFSwabLong8(i32*) #1

declare dso_local i32 @TIFFSwabArrayOfLong8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
