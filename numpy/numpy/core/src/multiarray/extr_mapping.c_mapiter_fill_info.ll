; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c_mapiter_fill_info.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c_mapiter_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32*, i32*, i32*, i64* }
%struct.TYPE_5__ = type { i32, i32, i64 }

@HAS_FANCY = common dso_local global i32 0, align 4
@HAS_INTEGER = common dso_local global i32 0, align 4
@HAS_0D_BOOL = common dso_local global i32 0, align 4
@HAS_ELLIPSIS = common dso_local global i32 0, align 4
@HAS_NEWAXIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"shape mismatch: indexing arrays could not be broadcast together with shapes \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PyExc_IndexError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32*)* @mapiter_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapiter_fill_info(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %33, %4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %291, %36
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %294

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @HAS_FANCY, align 4
  %51 = load i32, i32* @HAS_INTEGER, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %43
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %14, align 4
  br label %69

62:                                               ; preds = %55
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  store i32 2, i32* %14, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %58
  br label %75

70:                                               ; preds = %43
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %74, %69
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HAS_FANCY, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %177

84:                                               ; preds = %75
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i64 @PyArray_STRIDE(i32* %85, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %87, i64* %93, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i8* @PyArray_DIM(i32* %94, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %104, i32* %112, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %16, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = call i32 @PyArray_NDIM(i32* %122)
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %173, %84
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %176

128:                                              ; preds = %125
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %16, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32, i32* %15, align 4
  %139 = call i8* @PyArray_DIM(i32* %137, i32 %138)
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %172

143:                                              ; preds = %128
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %144, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %143
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %329

163:                                              ; preds = %153
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  br label %171

171:                                              ; preds = %163, %143
  br label %172

172:                                              ; preds = %171, %128
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %15, align 4
  br label %125

176:                                              ; preds = %125
  br label %290

177:                                              ; preds = %75
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HAS_0D_BOOL, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %244

186:                                              ; preds = %177
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 6
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 1, i32* %198, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 -1, i32* %205, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %186
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %216, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %226

225:                                              ; preds = %213
  br label %329

226:                                              ; preds = %213, %186
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %235, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %242, %232
  store i32 %243, i32* %241, align 4
  br label %289

244:                                              ; preds = %177
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @HAS_ELLIPSIS, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %270

253:                                              ; preds = %244
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %12, align 4
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %13, align 4
  br label %288

270:                                              ; preds = %244
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @HAS_NEWAXIS, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %270
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %13, align 4
  br label %287

284:                                              ; preds = %270
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %13, align 4
  br label %287

287:                                              ; preds = %284, %279
  br label %288

288:                                              ; preds = %287, %253
  br label %289

289:                                              ; preds = %288, %226
  br label %290

290:                                              ; preds = %289, %176
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %11, align 4
  br label %39

294:                                              ; preds = %39
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 5
  %297 = load i32*, i32** %296, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %328

299:                                              ; preds = %294
  store i32 0, i32* %11, align 4
  br label %300

300:                                              ; preds = %324, %299
  %301 = load i32, i32* %11, align 4
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 5
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @PyArray_NDIM(i32* %304)
  %306 = icmp slt i32 %301, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %300
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %11, align 4
  %312 = call i8* @PyArray_DIM(i32* %310, i32 %311)
  %313 = ptrtoint i8* %312 to i32
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %319, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %316, i64 %322
  store i32 %313, i32* %323, align 4
  br label %324

324:                                              ; preds = %307
  %325 = load i32, i32* %11, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %11, align 4
  br label %300

327:                                              ; preds = %300
  br label %328

328:                                              ; preds = %327, %294
  store i32 0, i32* %5, align 4
  br label %387

329:                                              ; preds = %225, %162
  %330 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  store i32* %330, i32** %18, align 8
  %331 = load i32*, i32** %18, align 8
  %332 = icmp eq i32* %331, null
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  store i32 -1, i32* %5, align 4
  br label %387

334:                                              ; preds = %329
  store i32 0, i32* %11, align 4
  br label %335

335:                                              ; preds = %378, %334
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %381

339:                                              ; preds = %335
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @HAS_FANCY, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %339
  br label %378

350:                                              ; preds = %339
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %352 = load i32, i32* %11, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = inttoptr i64 %356 to i32*
  %358 = call i32 @PyArray_NDIM(i32* %357)
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = inttoptr i64 %364 to i32*
  %366 = call i32 @PyArray_SHAPE(i32* %365)
  %367 = call i32* @convert_shape_to_string(i32 %358, i32 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %367, i32** %19, align 8
  %368 = load i32*, i32** %19, align 8
  %369 = icmp eq i32* %368, null
  br i1 %369, label %370, label %371

370:                                              ; preds = %350
  store i32 -1, i32* %5, align 4
  br label %387

371:                                              ; preds = %350
  %372 = load i32*, i32** %19, align 8
  %373 = call i32 @PyUString_ConcatAndDel(i32** %18, i32* %372)
  %374 = load i32*, i32** %18, align 8
  %375 = icmp eq i32* %374, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %371
  store i32 -1, i32* %5, align 4
  br label %387

377:                                              ; preds = %371
  br label %378

378:                                              ; preds = %377, %349
  %379 = load i32, i32* %11, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %11, align 4
  br label %335

381:                                              ; preds = %335
  %382 = load i32, i32* @PyExc_IndexError, align 4
  %383 = load i32*, i32** %18, align 8
  %384 = call i32 @PyErr_SetObject(i32 %382, i32* %383)
  %385 = load i32*, i32** %18, align 8
  %386 = call i32 @Py_DECREF(i32* %385)
  store i32 -1, i32* %5, align 4
  br label %387

387:                                              ; preds = %381, %376, %370, %333, %328
  %388 = load i32, i32* %5, align 4
  ret i32 %388
}

declare dso_local i64 @PyArray_STRIDE(i32*, i32) #1

declare dso_local i8* @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32* @PyUString_FromString(i8*) #1

declare dso_local i32* @convert_shape_to_string(i32, i32, i8*) #1

declare dso_local i32 @PyArray_SHAPE(i32*) #1

declare dso_local i32 @PyUString_ConcatAndDel(i32**, i32*) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
