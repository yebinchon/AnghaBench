; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryLongArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryLongArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrAlloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32**)* @TIFFReadDirEntryLongArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryLongArray(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %36 [
    i32 135, label %35
    i32 132, label %35
    i32 131, label %35
    i32 128, label %35
    i32 134, label %35
    i32 130, label %35
    i32 133, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %37, i32* %4, align 4
  br label %323

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = call i32 @TIFFReadDirEntryArray(%struct.TYPE_8__* %39, %struct.TYPE_7__* %40, i32* %9, i32 4, i8** %10)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %38
  %49 = load i32**, i32*** %7, align 8
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %323

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %112 [
    i32 134, label %55
    i32 130, label %72
  ]

55:                                               ; preds = %51
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32**, i32*** %7, align 8
  store i32* %57, i32** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TIFF_SWAB, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32**, i32*** %7, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @TIFFSwabArrayOfLong(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %55
  %71 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %71, i32* %4, align 4
  br label %323

72:                                               ; preds = %51
  %73 = load i8*, i8** %10, align 8
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %104, %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TIFF_SWAB, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @TIFFSwabLong(i32* %87)
  br label %89

89:                                               ; preds = %86, %79
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TIFFReadDirEntryCheckRangeLongSlong(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i8*, i8** %10, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = call i32 @_TIFFfree(i32* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %323

101:                                              ; preds = %89
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %12, align 8
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %75

107:                                              ; preds = %75
  %108 = load i8*, i8** %10, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = load i32**, i32*** %7, align 8
  store i32* %109, i32** %110, align 8
  %111 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %111, i32* %4, align 4
  br label %323

112:                                              ; preds = %51
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %113, 4
  %115 = call i64 @_TIFFmalloc(i32 %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %11, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i8*, i8** %10, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = call i32 @_TIFFfree(i32* %121)
  %123 = load i32, i32* @TIFFReadDirEntryErrAlloc, align 4
  store i32 %123, i32* %4, align 4
  br label %323

124:                                              ; preds = %112
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %308 [
    i32 135, label %128
    i32 132, label %146
    i32 131, label %172
    i32 128, label %200
    i32 133, label %236
    i32 129, label %272
  ]

128:                                              ; preds = %124
  %129 = load i8*, i8** %10, align 8
  %130 = bitcast i8* %129 to i32*
  store i32* %130, i32** %14, align 8
  %131 = load i32*, i32** %11, align 8
  store i32* %131, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %132

132:                                              ; preds = %142, %128
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32*, i32** %14, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %14, align 8
  %139 = load i32, i32* %137, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %15, align 8
  store i32 %139, i32* %140, align 4
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %132

145:                                              ; preds = %132
  br label %308

146:                                              ; preds = %124
  %147 = load i8*, i8** %10, align 8
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** %17, align 8
  %149 = load i32*, i32** %11, align 8
  store i32* %149, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %150

150:                                              ; preds = %168, %146
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %150
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @TIFFReadDirEntryCheckRangeLongSbyte(i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %171

162:                                              ; preds = %154
  %163 = load i32*, i32** %17, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %17, align 8
  %165 = load i32, i32* %163, align 4
  %166 = load i32*, i32** %18, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %18, align 8
  store i32 %165, i32* %166, align 4
  br label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %19, align 4
  br label %150

171:                                              ; preds = %161, %150
  br label %308

172:                                              ; preds = %124
  %173 = load i8*, i8** %10, align 8
  %174 = bitcast i8* %173 to i32*
  store i32* %174, i32** %20, align 8
  %175 = load i32*, i32** %11, align 8
  store i32* %175, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %176

176:                                              ; preds = %196, %172
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %176
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @TIFF_SWAB, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load i32*, i32** %20, align 8
  %189 = call i32 @TIFFSwabShort(i32* %188)
  br label %190

190:                                              ; preds = %187, %180
  %191 = load i32*, i32** %20, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %20, align 8
  %193 = load i32, i32* %191, align 4
  %194 = load i32*, i32** %21, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %21, align 8
  store i32 %193, i32* %194, align 4
  br label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %22, align 4
  br label %176

199:                                              ; preds = %176
  br label %308

200:                                              ; preds = %124
  %201 = load i8*, i8** %10, align 8
  %202 = bitcast i8* %201 to i32*
  store i32* %202, i32** %23, align 8
  %203 = load i32*, i32** %11, align 8
  store i32* %203, i32** %24, align 8
  store i32 0, i32* %25, align 4
  br label %204

204:                                              ; preds = %232, %200
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %235

208:                                              ; preds = %204
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @TIFF_SWAB, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load i32*, i32** %23, align 8
  %217 = call i32 @TIFFSwabShort(i32* %216)
  br label %218

218:                                              ; preds = %215, %208
  %219 = load i32*, i32** %23, align 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @TIFFReadDirEntryCheckRangeLongSshort(i32 %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %235

226:                                              ; preds = %218
  %227 = load i32*, i32** %23, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %23, align 8
  %229 = load i32, i32* %227, align 4
  %230 = load i32*, i32** %24, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %24, align 8
  store i32 %229, i32* %230, align 4
  br label %232

232:                                              ; preds = %226
  %233 = load i32, i32* %25, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %25, align 4
  br label %204

235:                                              ; preds = %225, %204
  br label %308

236:                                              ; preds = %124
  %237 = load i8*, i8** %10, align 8
  %238 = bitcast i8* %237 to i32*
  store i32* %238, i32** %26, align 8
  %239 = load i32*, i32** %11, align 8
  store i32* %239, i32** %27, align 8
  store i32 0, i32* %28, align 4
  br label %240

240:                                              ; preds = %268, %236
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %271

244:                                              ; preds = %240
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @TIFF_SWAB, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load i32*, i32** %26, align 8
  %253 = call i32 @TIFFSwabLong8(i32* %252)
  br label %254

254:                                              ; preds = %251, %244
  %255 = load i32*, i32** %26, align 8
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @TIFFReadDirEntryCheckRangeLongLong8(i32 %256)
  store i32 %257, i32* %8, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %271

262:                                              ; preds = %254
  %263 = load i32*, i32** %26, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %26, align 8
  %265 = load i32, i32* %263, align 4
  %266 = load i32*, i32** %27, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %27, align 8
  store i32 %265, i32* %266, align 4
  br label %268

268:                                              ; preds = %262
  %269 = load i32, i32* %28, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %28, align 4
  br label %240

271:                                              ; preds = %261, %240
  br label %308

272:                                              ; preds = %124
  %273 = load i8*, i8** %10, align 8
  %274 = bitcast i8* %273 to i32*
  store i32* %274, i32** %29, align 8
  %275 = load i32*, i32** %11, align 8
  store i32* %275, i32** %30, align 8
  store i32 0, i32* %31, align 4
  br label %276

276:                                              ; preds = %304, %272
  %277 = load i32, i32* %31, align 4
  %278 = load i32, i32* %9, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %307

280:                                              ; preds = %276
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @TIFF_SWAB, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %280
  %288 = load i32*, i32** %29, align 8
  %289 = call i32 @TIFFSwabLong8(i32* %288)
  br label %290

290:                                              ; preds = %287, %280
  %291 = load i32*, i32** %29, align 8
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @TIFFReadDirEntryCheckRangeLongSlong8(i32 %292)
  store i32 %293, i32* %8, align 4
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %307

298:                                              ; preds = %290
  %299 = load i32*, i32** %29, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %29, align 8
  %301 = load i32, i32* %299, align 4
  %302 = load i32*, i32** %30, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %30, align 8
  store i32 %301, i32* %302, align 4
  br label %304

304:                                              ; preds = %298
  %305 = load i32, i32* %31, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %31, align 4
  br label %276

307:                                              ; preds = %297, %276
  br label %308

308:                                              ; preds = %124, %307, %271, %235, %199, %171, %145
  %309 = load i8*, i8** %10, align 8
  %310 = bitcast i8* %309 to i32*
  %311 = call i32 @_TIFFfree(i32* %310)
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %308
  %316 = load i32*, i32** %11, align 8
  %317 = call i32 @_TIFFfree(i32* %316)
  %318 = load i32, i32* %8, align 4
  store i32 %318, i32* %4, align 4
  br label %323

319:                                              ; preds = %308
  %320 = load i32*, i32** %11, align 8
  %321 = load i32**, i32*** %7, align 8
  store i32* %320, i32** %321, align 8
  %322 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %322, i32* %4, align 4
  br label %323

323:                                              ; preds = %319, %315, %119, %107, %96, %70, %48, %36
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i32 @TIFFReadDirEntryArray(%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32, i8**) #1

declare dso_local i32 @TIFFSwabArrayOfLong(i32*, i32) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLongSlong(i32) #1

declare dso_local i32 @_TIFFfree(i32*) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLongSbyte(i32) #1

declare dso_local i32 @TIFFSwabShort(i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLongSshort(i32) #1

declare dso_local i32 @TIFFSwabLong8(i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLongLong8(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLongSlong8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
