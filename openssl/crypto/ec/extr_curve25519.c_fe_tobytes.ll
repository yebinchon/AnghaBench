; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_tobytes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe_tobytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBottom26Bits = common dso_local global i32 0, align 4
@kBottom25Bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @fe_tobytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_tobytes(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
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
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 9
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 19, %46
  %48 = add nsw i32 %47, 16777216
  %49 = ashr i32 %48, 25
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %50, %51
  %53 = ashr i32 %52, 26
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %54, %55
  %57 = ashr i32 %56, 25
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %58, %59
  %61 = ashr i32 %60, 26
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %62, %63
  %65 = ashr i32 %64, 25
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %66, %67
  %69 = ashr i32 %68, 26
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %70, %71
  %73 = ashr i32 %72, 25
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %74, %75
  %77 = ashr i32 %76, 26
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %78, %79
  %81 = ashr i32 %80, 25
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = ashr i32 %84, 26
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  %89 = ashr i32 %88, 25
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = mul nsw i32 19, %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, 26
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @kBottom26Bits, align 4
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 25
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @kBottom25Bits, align 4
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = ashr i32 %108, 26
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @kBottom26Bits, align 4
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 25
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @kBottom25Bits, align 4
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = ashr i32 %122, 26
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* @kBottom26Bits, align 4
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = ashr i32 %129, 25
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @kBottom25Bits, align 4
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = ashr i32 %136, 26
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* @kBottom26Bits, align 4
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = ashr i32 %143, 25
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* @kBottom25Bits, align 4
  %148 = load i32, i32* %12, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = ashr i32 %150, 26
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* @kBottom26Bits, align 4
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* @kBottom25Bits, align 4
  %158 = load i32, i32* %14, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %5, align 4
  %161 = ashr i32 %160, 0
  %162 = sext i32 %161 to i64
  %163 = load i64*, i64** %3, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  store i64 %162, i64* %164, align 8
  %165 = load i32, i32* %5, align 4
  %166 = ashr i32 %165, 8
  %167 = sext i32 %166 to i64
  %168 = load i64*, i64** %3, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 1
  store i64 %167, i64* %169, align 8
  %170 = load i32, i32* %5, align 4
  %171 = ashr i32 %170, 16
  %172 = sext i32 %171 to i64
  %173 = load i64*, i64** %3, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 2
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %5, align 4
  %176 = ashr i32 %175, 24
  %177 = load i32, i32* %6, align 4
  %178 = shl i32 %177, 2
  %179 = or i32 %176, %178
  %180 = sext i32 %179 to i64
  %181 = load i64*, i64** %3, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 3
  store i64 %180, i64* %182, align 8
  %183 = load i32, i32* %6, align 4
  %184 = ashr i32 %183, 6
  %185 = sext i32 %184 to i64
  %186 = load i64*, i64** %3, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 4
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %6, align 4
  %189 = ashr i32 %188, 14
  %190 = sext i32 %189 to i64
  %191 = load i64*, i64** %3, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 5
  store i64 %190, i64* %192, align 8
  %193 = load i32, i32* %6, align 4
  %194 = ashr i32 %193, 22
  %195 = load i32, i32* %7, align 4
  %196 = shl i32 %195, 3
  %197 = or i32 %194, %196
  %198 = sext i32 %197 to i64
  %199 = load i64*, i64** %3, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 6
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* %7, align 4
  %202 = ashr i32 %201, 5
  %203 = sext i32 %202 to i64
  %204 = load i64*, i64** %3, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 7
  store i64 %203, i64* %205, align 8
  %206 = load i32, i32* %7, align 4
  %207 = ashr i32 %206, 13
  %208 = sext i32 %207 to i64
  %209 = load i64*, i64** %3, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 8
  store i64 %208, i64* %210, align 8
  %211 = load i32, i32* %7, align 4
  %212 = ashr i32 %211, 21
  %213 = load i32, i32* %8, align 4
  %214 = shl i32 %213, 5
  %215 = or i32 %212, %214
  %216 = sext i32 %215 to i64
  %217 = load i64*, i64** %3, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 9
  store i64 %216, i64* %218, align 8
  %219 = load i32, i32* %8, align 4
  %220 = ashr i32 %219, 3
  %221 = sext i32 %220 to i64
  %222 = load i64*, i64** %3, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 10
  store i64 %221, i64* %223, align 8
  %224 = load i32, i32* %8, align 4
  %225 = ashr i32 %224, 11
  %226 = sext i32 %225 to i64
  %227 = load i64*, i64** %3, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 11
  store i64 %226, i64* %228, align 8
  %229 = load i32, i32* %8, align 4
  %230 = ashr i32 %229, 19
  %231 = load i32, i32* %9, align 4
  %232 = shl i32 %231, 6
  %233 = or i32 %230, %232
  %234 = sext i32 %233 to i64
  %235 = load i64*, i64** %3, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 12
  store i64 %234, i64* %236, align 8
  %237 = load i32, i32* %9, align 4
  %238 = ashr i32 %237, 2
  %239 = sext i32 %238 to i64
  %240 = load i64*, i64** %3, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 13
  store i64 %239, i64* %241, align 8
  %242 = load i32, i32* %9, align 4
  %243 = ashr i32 %242, 10
  %244 = sext i32 %243 to i64
  %245 = load i64*, i64** %3, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 14
  store i64 %244, i64* %246, align 8
  %247 = load i32, i32* %9, align 4
  %248 = ashr i32 %247, 18
  %249 = sext i32 %248 to i64
  %250 = load i64*, i64** %3, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 15
  store i64 %249, i64* %251, align 8
  %252 = load i32, i32* %10, align 4
  %253 = ashr i32 %252, 0
  %254 = sext i32 %253 to i64
  %255 = load i64*, i64** %3, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 16
  store i64 %254, i64* %256, align 8
  %257 = load i32, i32* %10, align 4
  %258 = ashr i32 %257, 8
  %259 = sext i32 %258 to i64
  %260 = load i64*, i64** %3, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 17
  store i64 %259, i64* %261, align 8
  %262 = load i32, i32* %10, align 4
  %263 = ashr i32 %262, 16
  %264 = sext i32 %263 to i64
  %265 = load i64*, i64** %3, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 18
  store i64 %264, i64* %266, align 8
  %267 = load i32, i32* %10, align 4
  %268 = ashr i32 %267, 24
  %269 = load i32, i32* %11, align 4
  %270 = shl i32 %269, 1
  %271 = or i32 %268, %270
  %272 = sext i32 %271 to i64
  %273 = load i64*, i64** %3, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 19
  store i64 %272, i64* %274, align 8
  %275 = load i32, i32* %11, align 4
  %276 = ashr i32 %275, 7
  %277 = sext i32 %276 to i64
  %278 = load i64*, i64** %3, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 20
  store i64 %277, i64* %279, align 8
  %280 = load i32, i32* %11, align 4
  %281 = ashr i32 %280, 15
  %282 = sext i32 %281 to i64
  %283 = load i64*, i64** %3, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 21
  store i64 %282, i64* %284, align 8
  %285 = load i32, i32* %11, align 4
  %286 = ashr i32 %285, 23
  %287 = load i32, i32* %12, align 4
  %288 = shl i32 %287, 3
  %289 = or i32 %286, %288
  %290 = sext i32 %289 to i64
  %291 = load i64*, i64** %3, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 22
  store i64 %290, i64* %292, align 8
  %293 = load i32, i32* %12, align 4
  %294 = ashr i32 %293, 5
  %295 = sext i32 %294 to i64
  %296 = load i64*, i64** %3, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 23
  store i64 %295, i64* %297, align 8
  %298 = load i32, i32* %12, align 4
  %299 = ashr i32 %298, 13
  %300 = sext i32 %299 to i64
  %301 = load i64*, i64** %3, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 24
  store i64 %300, i64* %302, align 8
  %303 = load i32, i32* %12, align 4
  %304 = ashr i32 %303, 21
  %305 = load i32, i32* %13, align 4
  %306 = shl i32 %305, 4
  %307 = or i32 %304, %306
  %308 = sext i32 %307 to i64
  %309 = load i64*, i64** %3, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 25
  store i64 %308, i64* %310, align 8
  %311 = load i32, i32* %13, align 4
  %312 = ashr i32 %311, 4
  %313 = sext i32 %312 to i64
  %314 = load i64*, i64** %3, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 26
  store i64 %313, i64* %315, align 8
  %316 = load i32, i32* %13, align 4
  %317 = ashr i32 %316, 12
  %318 = sext i32 %317 to i64
  %319 = load i64*, i64** %3, align 8
  %320 = getelementptr inbounds i64, i64* %319, i64 27
  store i64 %318, i64* %320, align 8
  %321 = load i32, i32* %13, align 4
  %322 = ashr i32 %321, 20
  %323 = load i32, i32* %14, align 4
  %324 = shl i32 %323, 6
  %325 = or i32 %322, %324
  %326 = sext i32 %325 to i64
  %327 = load i64*, i64** %3, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 28
  store i64 %326, i64* %328, align 8
  %329 = load i32, i32* %14, align 4
  %330 = ashr i32 %329, 2
  %331 = sext i32 %330 to i64
  %332 = load i64*, i64** %3, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 29
  store i64 %331, i64* %333, align 8
  %334 = load i32, i32* %14, align 4
  %335 = ashr i32 %334, 10
  %336 = sext i32 %335 to i64
  %337 = load i64*, i64** %3, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 30
  store i64 %336, i64* %338, align 8
  %339 = load i32, i32* %14, align 4
  %340 = ashr i32 %339, 18
  %341 = sext i32 %340 to i64
  %342 = load i64*, i64** %3, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 31
  store i64 %341, i64* %343, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
