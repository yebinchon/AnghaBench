; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntrySlong8Array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntrySlong8Array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrAlloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i8***)* @TIFFReadDirEntrySlong8Array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntrySlong8Array(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8*** %2, i8**** %7, align 8
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
  br label %293

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = call i32 @TIFFReadDirEntryArray(%struct.TYPE_8__* %39, %struct.TYPE_7__* %40, i32* %9, i32 8, i8** %10)
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
  %49 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %49, align 8
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %293

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %112 [
    i32 133, label %55
    i32 129, label %94
  ]

55:                                               ; preds = %51
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %86, %55
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TIFF_SWAB, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @TIFFSwabLong8(i32* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @TIFFReadDirEntryCheckRangeSlong8Long8(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @_TIFFfree(i8* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %293

83:                                               ; preds = %72
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %12, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %58

89:                                               ; preds = %58
  %90 = load i8*, i8** %10, align 8
  %91 = bitcast i8* %90 to i8**
  %92 = load i8***, i8**** %7, align 8
  store i8** %91, i8*** %92, align 8
  %93 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %93, i32* %4, align 4
  br label %293

94:                                               ; preds = %51
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to i8**
  %97 = load i8***, i8**** %7, align 8
  store i8** %96, i8*** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TIFF_SWAB, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %94
  %105 = load i8***, i8**** %7, align 8
  %106 = load i8**, i8*** %105, align 8
  %107 = bitcast i8** %106 to i32*
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @TIFFSwabArrayOfLong8(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %94
  %111 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %111, i32* %4, align 4
  br label %293

112:                                              ; preds = %51
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %113, 8
  %115 = call i64 @_TIFFmalloc(i32 %114)
  %116 = inttoptr i64 %115 to i8**
  store i8** %116, i8*** %11, align 8
  %117 = load i8**, i8*** %11, align 8
  %118 = icmp eq i8** %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @_TIFFfree(i8* %120)
  %122 = load i32, i32* @TIFFReadDirEntryErrAlloc, align 4
  store i32 %122, i32* %4, align 4
  br label %293

123:                                              ; preds = %112
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %287 [
    i32 135, label %127
    i32 132, label %147
    i32 131, label %167
    i32 128, label %197
    i32 134, label %227
    i32 130, label %257
  ]

127:                                              ; preds = %123
  %128 = load i8*, i8** %10, align 8
  %129 = bitcast i8* %128 to i32*
  store i32* %129, i32** %14, align 8
  %130 = load i8**, i8*** %11, align 8
  store i8** %130, i8*** %15, align 8
  store i32 0, i32* %16, align 4
  br label %131

131:                                              ; preds = %143, %127
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %14, align 8
  %138 = load i32, i32* %136, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load i8**, i8*** %15, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i32 1
  store i8** %142, i8*** %15, align 8
  store i8* %140, i8** %141, align 8
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %131

146:                                              ; preds = %131
  br label %287

147:                                              ; preds = %123
  %148 = load i8*, i8** %10, align 8
  %149 = bitcast i8* %148 to i32*
  store i32* %149, i32** %17, align 8
  %150 = load i8**, i8*** %11, align 8
  store i8** %150, i8*** %18, align 8
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %163, %147
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load i32*, i32** %17, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %17, align 8
  %158 = load i32, i32* %156, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = load i8**, i8*** %18, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i32 1
  store i8** %162, i8*** %18, align 8
  store i8* %160, i8** %161, align 8
  br label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %19, align 4
  br label %151

166:                                              ; preds = %151
  br label %287

167:                                              ; preds = %123
  %168 = load i8*, i8** %10, align 8
  %169 = bitcast i8* %168 to i32*
  store i32* %169, i32** %20, align 8
  %170 = load i8**, i8*** %11, align 8
  store i8** %170, i8*** %21, align 8
  store i32 0, i32* %22, align 4
  br label %171

171:                                              ; preds = %193, %167
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %171
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @TIFF_SWAB, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i32*, i32** %20, align 8
  %184 = call i32 @TIFFSwabShort(i32* %183)
  br label %185

185:                                              ; preds = %182, %175
  %186 = load i32*, i32** %20, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %20, align 8
  %188 = load i32, i32* %186, align 4
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = load i8**, i8*** %21, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %192, i8*** %21, align 8
  store i8* %190, i8** %191, align 8
  br label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %22, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %22, align 4
  br label %171

196:                                              ; preds = %171
  br label %287

197:                                              ; preds = %123
  %198 = load i8*, i8** %10, align 8
  %199 = bitcast i8* %198 to i32*
  store i32* %199, i32** %23, align 8
  %200 = load i8**, i8*** %11, align 8
  store i8** %200, i8*** %24, align 8
  store i32 0, i32* %25, align 4
  br label %201

201:                                              ; preds = %223, %197
  %202 = load i32, i32* %25, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %226

205:                                              ; preds = %201
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @TIFF_SWAB, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32*, i32** %23, align 8
  %214 = call i32 @TIFFSwabShort(i32* %213)
  br label %215

215:                                              ; preds = %212, %205
  %216 = load i32*, i32** %23, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %23, align 8
  %218 = load i32, i32* %216, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = load i8**, i8*** %24, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i32 1
  store i8** %222, i8*** %24, align 8
  store i8* %220, i8** %221, align 8
  br label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %25, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %25, align 4
  br label %201

226:                                              ; preds = %201
  br label %287

227:                                              ; preds = %123
  %228 = load i8*, i8** %10, align 8
  %229 = bitcast i8* %228 to i32*
  store i32* %229, i32** %26, align 8
  %230 = load i8**, i8*** %11, align 8
  store i8** %230, i8*** %27, align 8
  store i32 0, i32* %28, align 4
  br label %231

231:                                              ; preds = %253, %227
  %232 = load i32, i32* %28, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %256

235:                                              ; preds = %231
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @TIFF_SWAB, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i32*, i32** %26, align 8
  %244 = call i32 @TIFFSwabLong(i32* %243)
  br label %245

245:                                              ; preds = %242, %235
  %246 = load i32*, i32** %26, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %26, align 8
  %248 = load i32, i32* %246, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = load i8**, i8*** %27, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i32 1
  store i8** %252, i8*** %27, align 8
  store i8* %250, i8** %251, align 8
  br label %253

253:                                              ; preds = %245
  %254 = load i32, i32* %28, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %28, align 4
  br label %231

256:                                              ; preds = %231
  br label %287

257:                                              ; preds = %123
  %258 = load i8*, i8** %10, align 8
  %259 = bitcast i8* %258 to i32*
  store i32* %259, i32** %29, align 8
  %260 = load i8**, i8*** %11, align 8
  store i8** %260, i8*** %30, align 8
  store i32 0, i32* %31, align 4
  br label %261

261:                                              ; preds = %283, %257
  %262 = load i32, i32* %31, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %286

265:                                              ; preds = %261
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @TIFF_SWAB, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load i32*, i32** %29, align 8
  %274 = call i32 @TIFFSwabLong(i32* %273)
  br label %275

275:                                              ; preds = %272, %265
  %276 = load i32*, i32** %29, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %29, align 8
  %278 = load i32, i32* %276, align 4
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i8*
  %281 = load i8**, i8*** %30, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i32 1
  store i8** %282, i8*** %30, align 8
  store i8* %280, i8** %281, align 8
  br label %283

283:                                              ; preds = %275
  %284 = load i32, i32* %31, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %31, align 4
  br label %261

286:                                              ; preds = %261
  br label %287

287:                                              ; preds = %123, %286, %256, %226, %196, %166, %146
  %288 = load i8*, i8** %10, align 8
  %289 = call i32 @_TIFFfree(i8* %288)
  %290 = load i8**, i8*** %11, align 8
  %291 = load i8***, i8**** %7, align 8
  store i8** %290, i8*** %291, align 8
  %292 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %287, %119, %110, %89, %79, %48, %36
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i32 @TIFFReadDirEntryArray(%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32, i8**) #1

declare dso_local i32 @TIFFSwabLong8(i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeSlong8Long8(i32) #1

declare dso_local i32 @_TIFFfree(i8*) #1

declare dso_local i32 @TIFFSwabArrayOfLong8(i32*, i32) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFSwabShort(i32*) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
