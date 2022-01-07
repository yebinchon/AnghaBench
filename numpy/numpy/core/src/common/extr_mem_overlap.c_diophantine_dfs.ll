; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_mem_overlap.c_diophantine_dfs.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_mem_overlap.c_diophantine_dfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MEM_OVERLAP_TOO_HARD = common dso_local global i64 0, align 8
@MEM_OVERLAP_NO = common dso_local global i64 0, align 8
@MEM_OVERLAP_OVERFLOW = common dso_local global i64 0, align 8
@MEM_OVERLAP_YES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32*, i32*)* @diophantine_dfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @diophantine_dfs(i32 %0, i32 %1, %struct.TYPE_4__* %2, %struct.TYPE_4__* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  %48 = alloca i8, align 1
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i8 0, i8* %48, align 1
  %51 = load i32, i32* %20, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %11
  %54 = load i32*, i32** %23, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @MEM_OVERLAP_TOO_HARD, align 8
  store i64 %59, i64* %12, align 8
  br label %339

60:                                               ; preds = %53, %11
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %27, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %28, align 4
  br label %87

72:                                               ; preds = %60
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sub i32 %74, 2
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %27, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sub i32 %81, 2
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %28, align 4
  br label %87

87:                                               ; preds = %72, %63
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %29, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %30, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sub i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %24, align 4
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sub i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %25, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %26, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %24, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %31, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %24, align 4
  %124 = srem i32 %122, %123
  store i32 %124, i32* %32, align 4
  %125 = load i32, i32* %32, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %87
  %128 = load i32*, i32** %23, align 8
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load i64, i64* @MEM_OVERLAP_NO, align 8
  store i64 %131, i64* %12, align 8
  br label %339

132:                                              ; preds = %87
  %133 = load i32, i32* %29, align 4
  %134 = load i32, i32* %24, align 4
  %135 = sdiv i32 %133, %134
  store i32 %135, i32* %33, align 4
  %136 = load i32, i32* %27, align 4
  %137 = load i32, i32* %24, align 4
  %138 = sdiv i32 %136, %137
  store i32 %138, i32* %34, align 4
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %31, align 4
  %141 = call i32 @mul_64_64(i32 %139, i32 %140)
  store i32 %141, i32* %41, align 4
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* %31, align 4
  %144 = call i32 @mul_64_64(i32 %142, i32 %143)
  store i32 %144, i32* %42, align 4
  %145 = load i32, i32* %41, align 4
  %146 = call i32 @neg_128(i32 %145)
  %147 = load i32, i32* %33, align 4
  %148 = call i32 @ceildiv_128_64(i32 %146, i32 %147)
  store i32 %148, i32* %43, align 4
  %149 = load i32, i32* %42, align 4
  %150 = load i32, i32* %30, align 4
  %151 = call i32 @to_128(i32 %150)
  %152 = call i32 @sub_128(i32 %149, i32 %151, i8* %48)
  %153 = load i32, i32* %34, align 4
  %154 = call i32 @ceildiv_128_64(i32 %152, i32 %153)
  store i32 %154, i32* %44, align 4
  %155 = load i32, i32* %28, align 4
  %156 = call i32 @to_128(i32 %155)
  %157 = load i32, i32* %41, align 4
  %158 = call i32 @sub_128(i32 %156, i32 %157, i8* %48)
  %159 = load i32, i32* %33, align 4
  %160 = call i32 @floordiv_128_64(i32 %158, i32 %159)
  store i32 %160, i32* %45, align 4
  %161 = load i32, i32* %42, align 4
  %162 = load i32, i32* %34, align 4
  %163 = call i32 @floordiv_128_64(i32 %161, i32 %162)
  store i32 %163, i32* %46, align 4
  %164 = load i8, i8* %48, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %132
  %167 = load i64, i64* @MEM_OVERLAP_OVERFLOW, align 8
  store i64 %167, i64* %12, align 8
  br label %339

168:                                              ; preds = %132
  %169 = load i32, i32* %44, align 4
  %170 = load i32, i32* %43, align 4
  %171 = call i64 @gt_128(i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* %44, align 4
  store i32 %174, i32* %43, align 4
  br label %175

175:                                              ; preds = %173, %168
  %176 = load i32, i32* %45, align 4
  %177 = load i32, i32* %46, align 4
  %178 = call i64 @gt_128(i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i32, i32* %46, align 4
  store i32 %181, i32* %45, align 4
  br label %182

182:                                              ; preds = %180, %175
  %183 = load i32, i32* %43, align 4
  %184 = load i32, i32* %45, align 4
  %185 = call i64 @gt_128(i32 %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i32*, i32** %23, align 8
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load i64, i64* @MEM_OVERLAP_NO, align 8
  store i64 %191, i64* %12, align 8
  br label %339

192:                                              ; preds = %182
  %193 = load i32, i32* %43, align 4
  %194 = call i32 @to_64(i32 %193, i8* %48)
  store i32 %194, i32* %36, align 4
  %195 = load i32, i32* %45, align 4
  %196 = call i32 @to_64(i32 %195, i8* %48)
  store i32 %196, i32* %37, align 4
  %197 = load i32, i32* %41, align 4
  %198 = load i32, i32* %33, align 4
  %199 = load i32, i32* %36, align 4
  %200 = call i32 @mul_64_64(i32 %198, i32 %199)
  %201 = call i32 @add_128(i32 %197, i32 %200, i8* %48)
  store i32 %201, i32* %41, align 4
  %202 = load i32, i32* %42, align 4
  %203 = load i32, i32* %34, align 4
  %204 = load i32, i32* %36, align 4
  %205 = call i32 @mul_64_64(i32 %203, i32 %204)
  %206 = call i32 @sub_128(i32 %202, i32 %205, i8* %48)
  store i32 %206, i32* %42, align 4
  %207 = load i32, i32* %37, align 4
  %208 = load i32, i32* %36, align 4
  %209 = call i32 @safe_sub(i32 %207, i32 %208, i8* %48)
  store i32 %209, i32* %37, align 4
  store i32 0, i32* %36, align 4
  %210 = load i32, i32* %41, align 4
  %211 = call i32 @to_64(i32 %210, i8* %48)
  store i32 %211, i32* %39, align 4
  %212 = load i32, i32* %42, align 4
  %213 = call i32 @to_64(i32 %212, i8* %48)
  store i32 %213, i32* %40, align 4
  %214 = load i8, i8* %48, align 1
  %215 = icmp ne i8 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %192
  %217 = load i64, i64* @MEM_OVERLAP_OVERFLOW, align 8
  store i64 %217, i64* %12, align 8
  br label %339

218:                                              ; preds = %192
  %219 = load i32, i32* %14, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %282

221:                                              ; preds = %218
  %222 = load i32, i32* %37, align 4
  %223 = load i32, i32* %36, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %277

225:                                              ; preds = %221
  %226 = load i32, i32* %39, align 4
  %227 = load i32, i32* %33, align 4
  %228 = load i32, i32* %36, align 4
  %229 = mul nsw i32 %227, %228
  %230 = add nsw i32 %226, %229
  %231 = load i32*, i32** %22, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %40, align 4
  %234 = load i32, i32* %34, align 4
  %235 = load i32, i32* %36, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sub nsw i32 %233, %236
  %238 = load i32*, i32** %22, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %21, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %275

242:                                              ; preds = %225
  store i32 1, i32* %50, align 4
  store i32 0, i32* %49, align 4
  br label %243

243:                                              ; preds = %263, %242
  %244 = load i32, i32* %49, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %247, label %266

247:                                              ; preds = %243
  %248 = load i32*, i32** %22, align 8
  %249 = load i32, i32* %49, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %254 = load i32, i32* %49, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %258, 2
  %260 = icmp ne i32 %252, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %247
  store i32 0, i32* %50, align 4
  br label %266

262:                                              ; preds = %247
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %49, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %49, align 4
  br label %243

266:                                              ; preds = %261, %243
  %267 = load i32, i32* %50, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = load i32*, i32** %23, align 8
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = load i64, i64* @MEM_OVERLAP_NO, align 8
  store i64 %273, i64* %12, align 8
  br label %339

274:                                              ; preds = %266
  br label %275

275:                                              ; preds = %274, %225
  %276 = load i64, i64* @MEM_OVERLAP_YES, align 8
  store i64 %276, i64* %12, align 8
  br label %339

277:                                              ; preds = %221
  %278 = load i32*, i32** %23, align 8
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 4
  %281 = load i64, i64* @MEM_OVERLAP_NO, align 8
  store i64 %281, i64* %12, align 8
  br label %339

282:                                              ; preds = %218
  %283 = load i32, i32* %36, align 4
  store i32 %283, i32* %35, align 4
  br label %284

284:                                              ; preds = %331, %282
  %285 = load i32, i32* %35, align 4
  %286 = load i32, i32* %37, align 4
  %287 = icmp sle i32 %285, %286
  br i1 %287, label %288, label %334

288:                                              ; preds = %284
  %289 = load i32, i32* %40, align 4
  %290 = load i32, i32* %34, align 4
  %291 = load i32, i32* %35, align 4
  %292 = mul nsw i32 %290, %291
  %293 = sub nsw i32 %289, %292
  %294 = load i32*, i32** %22, align 8
  %295 = load i32, i32* %14, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %293, i32* %297, align 4
  %298 = load i32, i32* %19, align 4
  %299 = load i32, i32* %29, align 4
  %300 = load i32*, i32** %22, align 8
  %301 = load i32, i32* %14, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @safe_mul(i32 %299, i32 %304, i8* %48)
  %306 = call i32 @safe_sub(i32 %298, i32 %305, i8* %48)
  store i32 %306, i32* %38, align 4
  %307 = load i8, i8* %48, align 1
  %308 = icmp ne i8 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %288
  %310 = load i64, i64* @MEM_OVERLAP_OVERFLOW, align 8
  store i64 %310, i64* %12, align 8
  br label %339

311:                                              ; preds = %288
  %312 = load i32, i32* %13, align 4
  %313 = load i32, i32* %14, align 4
  %314 = sub i32 %313, 1
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %317 = load i32*, i32** %17, align 8
  %318 = load i32*, i32** %18, align 8
  %319 = load i32, i32* %38, align 4
  %320 = load i32, i32* %20, align 4
  %321 = load i32, i32* %21, align 4
  %322 = load i32*, i32** %22, align 8
  %323 = load i32*, i32** %23, align 8
  %324 = call i64 @diophantine_dfs(i32 %312, i32 %314, %struct.TYPE_4__* %315, %struct.TYPE_4__* %316, i32* %317, i32* %318, i32 %319, i32 %320, i32 %321, i32* %322, i32* %323)
  store i64 %324, i64* %47, align 8
  %325 = load i64, i64* %47, align 8
  %326 = load i64, i64* @MEM_OVERLAP_NO, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %311
  %329 = load i64, i64* %47, align 8
  store i64 %329, i64* %12, align 8
  br label %339

330:                                              ; preds = %311
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %35, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %35, align 4
  br label %284

334:                                              ; preds = %284
  %335 = load i32*, i32** %23, align 8
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 4
  %338 = load i64, i64* @MEM_OVERLAP_NO, align 8
  store i64 %338, i64* %12, align 8
  br label %339

339:                                              ; preds = %334, %328, %309, %277, %275, %269, %216, %187, %166, %127, %58
  %340 = load i64, i64* %12, align 8
  ret i64 %340
}

declare dso_local i32 @mul_64_64(i32, i32) #1

declare dso_local i32 @ceildiv_128_64(i32, i32) #1

declare dso_local i32 @neg_128(i32) #1

declare dso_local i32 @sub_128(i32, i32, i8*) #1

declare dso_local i32 @to_128(i32) #1

declare dso_local i32 @floordiv_128_64(i32, i32) #1

declare dso_local i64 @gt_128(i32, i32) #1

declare dso_local i32 @to_64(i32, i8*) #1

declare dso_local i32 @add_128(i32, i32, i8*) #1

declare dso_local i32 @safe_sub(i32, i32, i8*) #1

declare dso_local i32 @safe_mul(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
