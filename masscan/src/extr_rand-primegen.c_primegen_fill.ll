; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_primegen_fill.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_primegen_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32**, i64, i8**, i8*, i32 }

@B32 = common dso_local global i32 0, align 4
@B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @primegen_fill(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @B32, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = call i32 @primegen_sieve(%struct.TYPE_4__* %29)
  %31 = load i64, i64* @B, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %1
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %71, -1
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  store i32 %82, i32* %8, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 5
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %101, -1
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 6
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, -1
  store i32 %112, i32* %11, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 7
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, -1
  store i32 %122, i32* %12, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 8
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %131, -1
  store i32 %132, i32* %13, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 9
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %141, -1
  store i32 %142, i32* %14, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 10
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %151, -1
  store i32 %152, i32* %15, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 11
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, -1
  store i32 %162, i32* %16, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 12
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = xor i32 %171, -1
  store i32 %172, i32* %17, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 13
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %181, -1
  store i32 %182, i32* %18, align 4
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32**, i32*** %184, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 14
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = xor i32 %191, -1
  store i32 %192, i32* %19, align 4
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32**, i32*** %194, align 8
  %196 = getelementptr inbounds i32*, i32** %195, i64 15
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = xor i32 %201, -1
  store i32 %202, i32* %20, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr i8, i8* %205, i64 1920
  store i8* %206, i8** %21, align 8
  %207 = load i8*, i8** %21, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  store i64 0, i64* %211, align 8
  store i32 -2147483648, i32* %4, align 4
  br label %212

212:                                              ; preds = %474, %38
  %213 = load i32, i32* %4, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %477

215:                                              ; preds = %212
  %216 = load i8*, i8** %21, align 8
  %217 = getelementptr i8, i8* %216, i64 -60
  store i8* %217, i8** %21, align 8
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %4, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %215
  %223 = load i8*, i8** %21, align 8
  %224 = getelementptr i8, i8* %223, i64 59
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 3
  %227 = load i8**, i8*** %226, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = getelementptr inbounds i8*, i8** %227, i64 %230
  store i8* %224, i8** %232, align 8
  br label %233

233:                                              ; preds = %222, %215
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %4, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %233
  %239 = load i8*, i8** %21, align 8
  %240 = getelementptr i8, i8* %239, i64 53
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 3
  %243 = load i8**, i8*** %242, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %246, 1
  store i64 %247, i64* %245, align 8
  %248 = getelementptr inbounds i8*, i8** %243, i64 %246
  store i8* %240, i8** %248, align 8
  br label %249

249:                                              ; preds = %238, %233
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* %4, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %249
  %255 = load i8*, i8** %21, align 8
  %256 = getelementptr i8, i8* %255, i64 49
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  %259 = load i8**, i8*** %258, align 8
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %261, align 8
  %264 = getelementptr inbounds i8*, i8** %259, i64 %262
  store i8* %256, i8** %264, align 8
  br label %265

265:                                              ; preds = %254, %249
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %4, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = load i8*, i8** %21, align 8
  %272 = getelementptr i8, i8* %271, i64 47
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 3
  %275 = load i8**, i8*** %274, align 8
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %277, align 8
  %280 = getelementptr inbounds i8*, i8** %275, i64 %278
  store i8* %272, i8** %280, align 8
  br label %281

281:                                              ; preds = %270, %265
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* %4, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %297

286:                                              ; preds = %281
  %287 = load i8*, i8** %21, align 8
  %288 = getelementptr i8, i8* %287, i64 43
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 3
  %291 = load i8**, i8*** %290, align 8
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, 1
  store i64 %295, i64* %293, align 8
  %296 = getelementptr inbounds i8*, i8** %291, i64 %294
  store i8* %288, i8** %296, align 8
  br label %297

297:                                              ; preds = %286, %281
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %4, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %297
  %303 = load i8*, i8** %21, align 8
  %304 = getelementptr i8, i8* %303, i64 41
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 3
  %307 = load i8**, i8*** %306, align 8
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %309, align 8
  %312 = getelementptr inbounds i8*, i8** %307, i64 %310
  store i8* %304, i8** %312, align 8
  br label %313

313:                                              ; preds = %302, %297
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %4, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %313
  %319 = load i8*, i8** %21, align 8
  %320 = getelementptr i8, i8* %319, i64 37
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 3
  %323 = load i8**, i8*** %322, align 8
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %326, 1
  store i64 %327, i64* %325, align 8
  %328 = getelementptr inbounds i8*, i8** %323, i64 %326
  store i8* %320, i8** %328, align 8
  br label %329

329:                                              ; preds = %318, %313
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %4, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %329
  %335 = load i8*, i8** %21, align 8
  %336 = getelementptr i8, i8* %335, i64 31
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 3
  %339 = load i8**, i8*** %338, align 8
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, 1
  store i64 %343, i64* %341, align 8
  %344 = getelementptr inbounds i8*, i8** %339, i64 %342
  store i8* %336, i8** %344, align 8
  br label %345

345:                                              ; preds = %334, %329
  %346 = load i32, i32* %12, align 4
  %347 = load i32, i32* %4, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %361

350:                                              ; preds = %345
  %351 = load i8*, i8** %21, align 8
  %352 = getelementptr i8, i8* %351, i64 29
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 3
  %355 = load i8**, i8*** %354, align 8
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %358, 1
  store i64 %359, i64* %357, align 8
  %360 = getelementptr inbounds i8*, i8** %355, i64 %358
  store i8* %352, i8** %360, align 8
  br label %361

361:                                              ; preds = %350, %345
  %362 = load i32, i32* %11, align 4
  %363 = load i32, i32* %4, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %361
  %367 = load i8*, i8** %21, align 8
  %368 = getelementptr i8, i8* %367, i64 23
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 3
  %371 = load i8**, i8*** %370, align 8
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = add nsw i64 %374, 1
  store i64 %375, i64* %373, align 8
  %376 = getelementptr inbounds i8*, i8** %371, i64 %374
  store i8* %368, i8** %376, align 8
  br label %377

377:                                              ; preds = %366, %361
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* %4, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %393

382:                                              ; preds = %377
  %383 = load i8*, i8** %21, align 8
  %384 = getelementptr i8, i8* %383, i64 19
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 3
  %387 = load i8**, i8*** %386, align 8
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %390, 1
  store i64 %391, i64* %389, align 8
  %392 = getelementptr inbounds i8*, i8** %387, i64 %390
  store i8* %384, i8** %392, align 8
  br label %393

393:                                              ; preds = %382, %377
  %394 = load i32, i32* %9, align 4
  %395 = load i32, i32* %4, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %409

398:                                              ; preds = %393
  %399 = load i8*, i8** %21, align 8
  %400 = getelementptr i8, i8* %399, i64 17
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 3
  %403 = load i8**, i8*** %402, align 8
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = add nsw i64 %406, 1
  store i64 %407, i64* %405, align 8
  %408 = getelementptr inbounds i8*, i8** %403, i64 %406
  store i8* %400, i8** %408, align 8
  br label %409

409:                                              ; preds = %398, %393
  %410 = load i32, i32* %8, align 4
  %411 = load i32, i32* %4, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %425

414:                                              ; preds = %409
  %415 = load i8*, i8** %21, align 8
  %416 = getelementptr i8, i8* %415, i64 13
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 3
  %419 = load i8**, i8*** %418, align 8
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = add nsw i64 %422, 1
  store i64 %423, i64* %421, align 8
  %424 = getelementptr inbounds i8*, i8** %419, i64 %422
  store i8* %416, i8** %424, align 8
  br label %425

425:                                              ; preds = %414, %409
  %426 = load i32, i32* %7, align 4
  %427 = load i32, i32* %4, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %441

430:                                              ; preds = %425
  %431 = load i8*, i8** %21, align 8
  %432 = getelementptr i8, i8* %431, i64 11
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 3
  %435 = load i8**, i8*** %434, align 8
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %438, 1
  store i64 %439, i64* %437, align 8
  %440 = getelementptr inbounds i8*, i8** %435, i64 %438
  store i8* %432, i8** %440, align 8
  br label %441

441:                                              ; preds = %430, %425
  %442 = load i32, i32* %6, align 4
  %443 = load i32, i32* %4, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %457

446:                                              ; preds = %441
  %447 = load i8*, i8** %21, align 8
  %448 = getelementptr i8, i8* %447, i64 7
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 3
  %451 = load i8**, i8*** %450, align 8
  %452 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = add nsw i64 %454, 1
  store i64 %455, i64* %453, align 8
  %456 = getelementptr inbounds i8*, i8** %451, i64 %454
  store i8* %448, i8** %456, align 8
  br label %457

457:                                              ; preds = %446, %441
  %458 = load i32, i32* %5, align 4
  %459 = load i32, i32* %4, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %473

462:                                              ; preds = %457
  %463 = load i8*, i8** %21, align 8
  %464 = getelementptr i8, i8* %463, i64 1
  %465 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 3
  %467 = load i8**, i8*** %466, align 8
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = add nsw i64 %470, 1
  store i64 %471, i64* %469, align 8
  %472 = getelementptr inbounds i8*, i8** %467, i64 %470
  store i8* %464, i8** %472, align 8
  br label %473

473:                                              ; preds = %462, %457
  br label %474

474:                                              ; preds = %473
  %475 = load i32, i32* %4, align 4
  %476 = ashr i32 %475, 1
  store i32 %476, i32* %4, align 4
  br label %212

477:                                              ; preds = %212
  ret void
}

declare dso_local i32 @primegen_sieve(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
