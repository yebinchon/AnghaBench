; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryDoubleArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryDoubleArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrAlloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, double**)* @TIFFReadDirEntryDoubleArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryDoubleArray(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, double** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca double**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca double*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca double*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca double*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64*, align 8
  %28 = alloca double*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca double*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca double*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca double*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca double*, align 8
  %45 = alloca i32, align 4
  %46 = alloca float*, align 8
  %47 = alloca double*, align 8
  %48 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store double** %2, double*** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %53 [
    i32 139, label %52
    i32 133, label %52
    i32 132, label %52
    i32 128, label %52
    i32 136, label %52
    i32 131, label %52
    i32 135, label %52
    i32 130, label %52
    i32 134, label %52
    i32 129, label %52
    i32 137, label %52
    i32 138, label %52
  ]

52:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %54, i32* %4, align 4
  br label %474

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = call i32 @TIFFReadDirEntryArray(%struct.TYPE_10__* %56, %struct.TYPE_9__* %57, i32* %9, i32 8, i8** %10)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %10, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %55
  %66 = load double**, double*** %7, align 8
  store double* null, double** %66, align 8
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %474

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %94 [
    i32 138, label %72
  ]

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TIFF_SWAB, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i8*, i8** %10, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @TIFFSwabArrayOfLong8(i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = bitcast i8* %87 to double*
  %89 = call i32 @TIFFCvtIEEEDoubleToNative(%struct.TYPE_10__* %85, i32 %86, double* %88)
  %90 = load i8*, i8** %10, align 8
  %91 = bitcast i8* %90 to double*
  %92 = load double**, double*** %7, align 8
  store double* %91, double** %92, align 8
  %93 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %93, i32* %4, align 4
  br label %474

94:                                               ; preds = %68
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i64 @_TIFFmalloc(i32 %98)
  %100 = inttoptr i64 %99 to double*
  store double* %100, double** %11, align 8
  %101 = load double*, double** %11, align 8
  %102 = icmp eq double* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @_TIFFfree(i8* %104)
  %106 = load i32, i32* @TIFFReadDirEntryErrAlloc, align 4
  store i32 %106, i32* %4, align 4
  br label %474

107:                                              ; preds = %94
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %468 [
    i32 139, label %111
    i32 133, label %130
    i32 132, label %149
    i32 128, label %178
    i32 136, label %207
    i32 131, label %236
    i32 135, label %266
    i32 130, label %295
    i32 134, label %324
    i32 129, label %377
    i32 137, label %432
  ]

111:                                              ; preds = %107
  %112 = load i8*, i8** %10, align 8
  %113 = bitcast i8* %112 to i32*
  store i32* %113, i32** %12, align 8
  %114 = load double*, double** %11, align 8
  store double* %114, double** %13, align 8
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %126, %111
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %12, align 8
  %122 = load i32, i32* %120, align 4
  %123 = sitofp i32 %122 to double
  %124 = load double*, double** %13, align 8
  %125 = getelementptr inbounds double, double* %124, i32 1
  store double* %125, double** %13, align 8
  store double %123, double* %124, align 8
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %115

129:                                              ; preds = %115
  br label %468

130:                                              ; preds = %107
  %131 = load i8*, i8** %10, align 8
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %15, align 8
  %133 = load double*, double** %11, align 8
  store double* %133, double** %16, align 8
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %145, %130
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i32*, i32** %15, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %15, align 8
  %141 = load i32, i32* %139, align 4
  %142 = sitofp i32 %141 to double
  %143 = load double*, double** %16, align 8
  %144 = getelementptr inbounds double, double* %143, i32 1
  store double* %144, double** %16, align 8
  store double %142, double* %143, align 8
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %134

148:                                              ; preds = %134
  br label %468

149:                                              ; preds = %107
  %150 = load i8*, i8** %10, align 8
  %151 = bitcast i8* %150 to i32*
  store i32* %151, i32** %18, align 8
  %152 = load double*, double** %11, align 8
  store double* %152, double** %19, align 8
  store i32 0, i32* %20, align 4
  br label %153

153:                                              ; preds = %174, %149
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %153
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TIFF_SWAB, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32*, i32** %18, align 8
  %166 = call i32 @TIFFSwabShort(i32* %165)
  br label %167

167:                                              ; preds = %164, %157
  %168 = load i32*, i32** %18, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %18, align 8
  %170 = load i32, i32* %168, align 4
  %171 = sitofp i32 %170 to double
  %172 = load double*, double** %19, align 8
  %173 = getelementptr inbounds double, double* %172, i32 1
  store double* %173, double** %19, align 8
  store double %171, double* %172, align 8
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %20, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %20, align 4
  br label %153

177:                                              ; preds = %153
  br label %468

178:                                              ; preds = %107
  %179 = load i8*, i8** %10, align 8
  %180 = bitcast i8* %179 to i32*
  store i32* %180, i32** %21, align 8
  %181 = load double*, double** %11, align 8
  store double* %181, double** %22, align 8
  store i32 0, i32* %23, align 4
  br label %182

182:                                              ; preds = %203, %178
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %206

186:                                              ; preds = %182
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @TIFF_SWAB, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load i32*, i32** %21, align 8
  %195 = call i32 @TIFFSwabShort(i32* %194)
  br label %196

196:                                              ; preds = %193, %186
  %197 = load i32*, i32** %21, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %21, align 8
  %199 = load i32, i32* %197, align 4
  %200 = sitofp i32 %199 to double
  %201 = load double*, double** %22, align 8
  %202 = getelementptr inbounds double, double* %201, i32 1
  store double* %202, double** %22, align 8
  store double %200, double* %201, align 8
  br label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %23, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %23, align 4
  br label %182

206:                                              ; preds = %182
  br label %468

207:                                              ; preds = %107
  %208 = load i8*, i8** %10, align 8
  %209 = bitcast i8* %208 to i32*
  store i32* %209, i32** %24, align 8
  %210 = load double*, double** %11, align 8
  store double* %210, double** %25, align 8
  store i32 0, i32* %26, align 4
  br label %211

211:                                              ; preds = %232, %207
  %212 = load i32, i32* %26, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %235

215:                                              ; preds = %211
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @TIFF_SWAB, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load i32*, i32** %24, align 8
  %224 = call i32 @TIFFSwabLong(i32* %223)
  br label %225

225:                                              ; preds = %222, %215
  %226 = load i32*, i32** %24, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %24, align 8
  %228 = load i32, i32* %226, align 4
  %229 = sitofp i32 %228 to double
  %230 = load double*, double** %25, align 8
  %231 = getelementptr inbounds double, double* %230, i32 1
  store double* %231, double** %25, align 8
  store double %229, double* %230, align 8
  br label %232

232:                                              ; preds = %225
  %233 = load i32, i32* %26, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %26, align 4
  br label %211

235:                                              ; preds = %211
  br label %468

236:                                              ; preds = %107
  %237 = load i8*, i8** %10, align 8
  %238 = bitcast i8* %237 to i64*
  store i64* %238, i64** %27, align 8
  %239 = load double*, double** %11, align 8
  store double* %239, double** %28, align 8
  store i32 0, i32* %29, align 4
  br label %240

240:                                              ; preds = %262, %236
  %241 = load i32, i32* %29, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %265

244:                                              ; preds = %240
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @TIFF_SWAB, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i64*, i64** %27, align 8
  %253 = bitcast i64* %252 to i32*
  %254 = call i32 @TIFFSwabLong(i32* %253)
  br label %255

255:                                              ; preds = %251, %244
  %256 = load i64*, i64** %27, align 8
  %257 = getelementptr inbounds i64, i64* %256, i32 1
  store i64* %257, i64** %27, align 8
  %258 = load i64, i64* %256, align 8
  %259 = sitofp i64 %258 to double
  %260 = load double*, double** %28, align 8
  %261 = getelementptr inbounds double, double* %260, i32 1
  store double* %261, double** %28, align 8
  store double %259, double* %260, align 8
  br label %262

262:                                              ; preds = %255
  %263 = load i32, i32* %29, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %29, align 4
  br label %240

265:                                              ; preds = %240
  br label %468

266:                                              ; preds = %107
  %267 = load i8*, i8** %10, align 8
  %268 = bitcast i8* %267 to i32*
  store i32* %268, i32** %30, align 8
  %269 = load double*, double** %11, align 8
  store double* %269, double** %31, align 8
  store i32 0, i32* %32, align 4
  br label %270

270:                                              ; preds = %291, %266
  %271 = load i32, i32* %32, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %294

274:                                              ; preds = %270
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @TIFF_SWAB, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %274
  %282 = load i32*, i32** %30, align 8
  %283 = call i32 @TIFFSwabLong8(i32* %282)
  br label %284

284:                                              ; preds = %281, %274
  %285 = load i32*, i32** %30, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %30, align 8
  %287 = load i32, i32* %285, align 4
  %288 = sitofp i32 %287 to double
  %289 = load double*, double** %31, align 8
  %290 = getelementptr inbounds double, double* %289, i32 1
  store double* %290, double** %31, align 8
  store double %288, double* %289, align 8
  br label %291

291:                                              ; preds = %284
  %292 = load i32, i32* %32, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %32, align 4
  br label %270

294:                                              ; preds = %270
  br label %468

295:                                              ; preds = %107
  %296 = load i8*, i8** %10, align 8
  %297 = bitcast i8* %296 to i32*
  store i32* %297, i32** %33, align 8
  %298 = load double*, double** %11, align 8
  store double* %298, double** %34, align 8
  store i32 0, i32* %35, align 4
  br label %299

299:                                              ; preds = %320, %295
  %300 = load i32, i32* %35, align 4
  %301 = load i32, i32* %9, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %299
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @TIFF_SWAB, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %303
  %311 = load i32*, i32** %33, align 8
  %312 = call i32 @TIFFSwabLong8(i32* %311)
  br label %313

313:                                              ; preds = %310, %303
  %314 = load i32*, i32** %33, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %33, align 8
  %316 = load i32, i32* %314, align 4
  %317 = sitofp i32 %316 to double
  %318 = load double*, double** %34, align 8
  %319 = getelementptr inbounds double, double* %318, i32 1
  store double* %319, double** %34, align 8
  store double %317, double* %318, align 8
  br label %320

320:                                              ; preds = %313
  %321 = load i32, i32* %35, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %35, align 4
  br label %299

323:                                              ; preds = %299
  br label %468

324:                                              ; preds = %107
  %325 = load i8*, i8** %10, align 8
  %326 = bitcast i8* %325 to i32*
  store i32* %326, i32** %36, align 8
  %327 = load double*, double** %11, align 8
  store double* %327, double** %39, align 8
  store i32 0, i32* %40, align 4
  br label %328

328:                                              ; preds = %373, %324
  %329 = load i32, i32* %40, align 4
  %330 = load i32, i32* %9, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %376

332:                                              ; preds = %328
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @TIFF_SWAB, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = load i32*, i32** %36, align 8
  %341 = call i32 @TIFFSwabLong(i32* %340)
  br label %342

342:                                              ; preds = %339, %332
  %343 = load i32*, i32** %36, align 8
  %344 = getelementptr inbounds i32, i32* %343, i32 1
  store i32* %344, i32** %36, align 8
  %345 = load i32, i32* %343, align 4
  store i32 %345, i32* %37, align 4
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @TIFF_SWAB, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %342
  %353 = load i32*, i32** %36, align 8
  %354 = call i32 @TIFFSwabLong(i32* %353)
  br label %355

355:                                              ; preds = %352, %342
  %356 = load i32*, i32** %36, align 8
  %357 = getelementptr inbounds i32, i32* %356, i32 1
  store i32* %357, i32** %36, align 8
  %358 = load i32, i32* %356, align 4
  store i32 %358, i32* %38, align 4
  %359 = load i32, i32* %38, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %355
  %362 = load double*, double** %39, align 8
  %363 = getelementptr inbounds double, double* %362, i32 1
  store double* %363, double** %39, align 8
  store double 0.000000e+00, double* %362, align 8
  br label %372

364:                                              ; preds = %355
  %365 = load i32, i32* %37, align 4
  %366 = sitofp i32 %365 to double
  %367 = load i32, i32* %38, align 4
  %368 = sitofp i32 %367 to double
  %369 = fdiv double %366, %368
  %370 = load double*, double** %39, align 8
  %371 = getelementptr inbounds double, double* %370, i32 1
  store double* %371, double** %39, align 8
  store double %369, double* %370, align 8
  br label %372

372:                                              ; preds = %364, %361
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %40, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %40, align 4
  br label %328

376:                                              ; preds = %328
  br label %468

377:                                              ; preds = %107
  %378 = load i8*, i8** %10, align 8
  %379 = bitcast i8* %378 to i32*
  store i32* %379, i32** %41, align 8
  %380 = load double*, double** %11, align 8
  store double* %380, double** %44, align 8
  store i32 0, i32* %45, align 4
  br label %381

381:                                              ; preds = %428, %377
  %382 = load i32, i32* %45, align 4
  %383 = load i32, i32* %9, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %431

385:                                              ; preds = %381
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @TIFF_SWAB, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %385
  %393 = load i32*, i32** %41, align 8
  %394 = call i32 @TIFFSwabLong(i32* %393)
  br label %395

395:                                              ; preds = %392, %385
  %396 = load i32*, i32** %41, align 8
  %397 = bitcast i32* %396 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %42, align 8
  %399 = load i32*, i32** %41, align 8
  %400 = getelementptr inbounds i32, i32* %399, i32 1
  store i32* %400, i32** %41, align 8
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @TIFF_SWAB, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %395
  %408 = load i32*, i32** %41, align 8
  %409 = call i32 @TIFFSwabLong(i32* %408)
  br label %410

410:                                              ; preds = %407, %395
  %411 = load i32*, i32** %41, align 8
  %412 = getelementptr inbounds i32, i32* %411, i32 1
  store i32* %412, i32** %41, align 8
  %413 = load i32, i32* %411, align 4
  store i32 %413, i32* %43, align 4
  %414 = load i32, i32* %43, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %410
  %417 = load double*, double** %44, align 8
  %418 = getelementptr inbounds double, double* %417, i32 1
  store double* %418, double** %44, align 8
  store double 0.000000e+00, double* %417, align 8
  br label %427

419:                                              ; preds = %410
  %420 = load i64, i64* %42, align 8
  %421 = sitofp i64 %420 to double
  %422 = load i32, i32* %43, align 4
  %423 = sitofp i32 %422 to double
  %424 = fdiv double %421, %423
  %425 = load double*, double** %44, align 8
  %426 = getelementptr inbounds double, double* %425, i32 1
  store double* %426, double** %44, align 8
  store double %424, double* %425, align 8
  br label %427

427:                                              ; preds = %419, %416
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %45, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %45, align 4
  br label %381

431:                                              ; preds = %381
  br label %468

432:                                              ; preds = %107
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @TIFF_SWAB, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %432
  %440 = load i8*, i8** %10, align 8
  %441 = bitcast i8* %440 to i32*
  %442 = load i32, i32* %9, align 4
  %443 = call i32 @TIFFSwabArrayOfLong(i32* %441, i32 %442)
  br label %444

444:                                              ; preds = %439, %432
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %446 = load i32, i32* %9, align 4
  %447 = load i8*, i8** %10, align 8
  %448 = bitcast i8* %447 to float*
  %449 = call i32 @TIFFCvtIEEEFloatToNative(%struct.TYPE_10__* %445, i32 %446, float* %448)
  %450 = load i8*, i8** %10, align 8
  %451 = bitcast i8* %450 to float*
  store float* %451, float** %46, align 8
  %452 = load double*, double** %11, align 8
  store double* %452, double** %47, align 8
  store i32 0, i32* %48, align 4
  br label %453

453:                                              ; preds = %464, %444
  %454 = load i32, i32* %48, align 4
  %455 = load i32, i32* %9, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %457, label %467

457:                                              ; preds = %453
  %458 = load float*, float** %46, align 8
  %459 = getelementptr inbounds float, float* %458, i32 1
  store float* %459, float** %46, align 8
  %460 = load float, float* %458, align 4
  %461 = fpext float %460 to double
  %462 = load double*, double** %47, align 8
  %463 = getelementptr inbounds double, double* %462, i32 1
  store double* %463, double** %47, align 8
  store double %461, double* %462, align 8
  br label %464

464:                                              ; preds = %457
  %465 = load i32, i32* %48, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %48, align 4
  br label %453

467:                                              ; preds = %453
  br label %468

468:                                              ; preds = %107, %467, %431, %376, %323, %294, %265, %235, %206, %177, %148, %129
  %469 = load i8*, i8** %10, align 8
  %470 = call i32 @_TIFFfree(i8* %469)
  %471 = load double*, double** %11, align 8
  %472 = load double**, double*** %7, align 8
  store double* %471, double** %472, align 8
  %473 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %473, i32* %4, align 4
  br label %474

474:                                              ; preds = %468, %103, %84, %65, %53
  %475 = load i32, i32* %4, align 4
  ret i32 %475
}

declare dso_local i32 @TIFFReadDirEntryArray(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32, i8**) #1

declare dso_local i32 @TIFFSwabArrayOfLong8(i32*, i32) #1

declare dso_local i32 @TIFFCvtIEEEDoubleToNative(%struct.TYPE_10__*, i32, double*) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @_TIFFfree(i8*) #1

declare dso_local i32 @TIFFSwabShort(i32*) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @TIFFSwabLong8(i32*) #1

declare dso_local i32 @TIFFSwabArrayOfLong(i32*, i32) #1

declare dso_local i32 @TIFFCvtIEEEFloatToNative(%struct.TYPE_10__*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
