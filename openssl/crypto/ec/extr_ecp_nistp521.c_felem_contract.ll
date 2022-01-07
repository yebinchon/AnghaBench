; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_felem_contract.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_felem_contract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@felem_contract.two58 = internal constant i32 -2147483648, align 4
@bottom57bits = common dso_local global i32 0, align 4
@bottom58bits = common dso_local global i32 0, align 4
@kPrime = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @felem_contract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @felem_contract(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @felem_assign(i32* %8, i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 8
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 57
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @bottom57bits, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 58
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @bottom58bits, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 58
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @bottom58bits, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 58
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @bottom58bits, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 58
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @bottom58bits, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 58
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @bottom58bits, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 58
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @bottom58bits, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 58
  %106 = load i32*, i32** %3, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @bottom58bits, align 4
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 58
  %119 = load i32*, i32** %3, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @bottom58bits, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** @kPrime, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = xor i32 %130, %133
  store i32 %134, i32* %5, align 4
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** @kPrime, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %137, %140
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** @kPrime, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = xor i32 %146, %149
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** @kPrime, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %155, %158
  %160 = load i32, i32* %5, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %5, align 4
  %162 = load i32*, i32** %3, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** @kPrime, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %164, %167
  %169 = load i32, i32* %5, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load i32*, i32** %3, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** @kPrime, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %173, %176
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load i32*, i32** %3, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 6
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** @kPrime, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 6
  %185 = load i32, i32* %184, align 4
  %186 = xor i32 %182, %185
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = load i32*, i32** %3, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 7
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** @kPrime, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 7
  %194 = load i32, i32* %193, align 4
  %195 = xor i32 %191, %194
  %196 = load i32, i32* %5, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %5, align 4
  %198 = load i32*, i32** %3, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** @kPrime, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 8
  %203 = load i32, i32* %202, align 4
  %204 = xor i32 %200, %203
  %205 = load i32, i32* %5, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = shl i32 %209, 32
  %211 = load i32, i32* %5, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %5, align 4
  %214 = shl i32 %213, 16
  %215 = load i32, i32* %5, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = shl i32 %217, 8
  %219 = load i32, i32* %5, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = shl i32 %221, 4
  %223 = load i32, i32* %5, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = shl i32 %225, 2
  %227 = load i32, i32* %5, align 4
  %228 = and i32 %227, %226
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* %5, align 4
  %230 = shl i32 %229, 1
  %231 = load i32, i32* %5, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %5, align 4
  %234 = ashr i32 %233, 63
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = xor i32 %236, -1
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* %5, align 4
  %239 = load i32*, i32** %3, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load i32*, i32** %3, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %243
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %5, align 4
  %249 = load i32*, i32** %3, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, %248
  store i32 %252, i32* %250, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32*, i32** %3, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* %5, align 4
  %259 = load i32*, i32** %3, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 4
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* %5, align 4
  %264 = load i32*, i32** %3, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 5
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* %5, align 4
  %269 = load i32*, i32** %3, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 6
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load i32*, i32** %3, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 7
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load i32, i32* %5, align 4
  %279 = load i32*, i32** %3, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 8
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load i32*, i32** %3, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 8
  %285 = load i32, i32* %284, align 4
  %286 = ashr i32 %285, 57
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = shl i32 %287, 32
  %289 = load i32, i32* %6, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %6, align 4
  %292 = shl i32 %291, 16
  %293 = load i32, i32* %6, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %6, align 4
  %295 = load i32, i32* %6, align 4
  %296 = shl i32 %295, 8
  %297 = load i32, i32* %6, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %6, align 4
  %299 = load i32, i32* %6, align 4
  %300 = shl i32 %299, 4
  %301 = load i32, i32* %6, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %6, align 4
  %303 = load i32, i32* %6, align 4
  %304 = shl i32 %303, 2
  %305 = load i32, i32* %6, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %6, align 4
  %307 = load i32, i32* %6, align 4
  %308 = shl i32 %307, 1
  %309 = load i32, i32* %6, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %6, align 4
  %311 = load i32, i32* %6, align 4
  %312 = ashr i32 %311, 63
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %6, align 4
  %314 = load i32*, i32** @kPrime, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %6, align 4
  %318 = and i32 %316, %317
  %319 = load i32*, i32** %3, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load i32*, i32** @kPrime, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %6, align 4
  %327 = and i32 %325, %326
  %328 = load i32*, i32** %3, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 1
  %330 = load i32, i32* %329, align 4
  %331 = sub nsw i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load i32*, i32** @kPrime, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %6, align 4
  %336 = and i32 %334, %335
  %337 = load i32*, i32** %3, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 2
  %339 = load i32, i32* %338, align 4
  %340 = sub nsw i32 %339, %336
  store i32 %340, i32* %338, align 4
  %341 = load i32*, i32** @kPrime, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 3
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %6, align 4
  %345 = and i32 %343, %344
  %346 = load i32*, i32** %3, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 3
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %348, %345
  store i32 %349, i32* %347, align 4
  %350 = load i32*, i32** @kPrime, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 4
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %6, align 4
  %354 = and i32 %352, %353
  %355 = load i32*, i32** %3, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 4
  %357 = load i32, i32* %356, align 4
  %358 = sub nsw i32 %357, %354
  store i32 %358, i32* %356, align 4
  %359 = load i32*, i32** @kPrime, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 5
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %6, align 4
  %363 = and i32 %361, %362
  %364 = load i32*, i32** %3, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 5
  %366 = load i32, i32* %365, align 4
  %367 = sub nsw i32 %366, %363
  store i32 %367, i32* %365, align 4
  %368 = load i32*, i32** @kPrime, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 6
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %6, align 4
  %372 = and i32 %370, %371
  %373 = load i32*, i32** %3, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 6
  %375 = load i32, i32* %374, align 4
  %376 = sub nsw i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load i32*, i32** @kPrime, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 7
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %6, align 4
  %381 = and i32 %379, %380
  %382 = load i32*, i32** %3, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 7
  %384 = load i32, i32* %383, align 4
  %385 = sub nsw i32 %384, %381
  store i32 %385, i32* %383, align 4
  %386 = load i32*, i32** @kPrime, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 8
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %6, align 4
  %390 = and i32 %388, %389
  %391 = load i32*, i32** %3, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 8
  %393 = load i32, i32* %392, align 4
  %394 = sub nsw i32 %393, %390
  store i32 %394, i32* %392, align 4
  %395 = load i32*, i32** %3, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = ashr i32 %397, 63
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %7, align 4
  %400 = load i32, i32* %7, align 4
  %401 = and i32 -2147483648, %400
  %402 = load i32*, i32** %3, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 0
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, %401
  store i32 %405, i32* %403, align 4
  %406 = load i32, i32* %7, align 4
  %407 = and i32 1, %406
  %408 = load i32*, i32** %3, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = sub nsw i32 %410, %407
  store i32 %411, i32* %409, align 4
  %412 = load i32*, i32** %3, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  %414 = load i32, i32* %413, align 4
  %415 = ashr i32 %414, 63
  %416 = sub nsw i32 0, %415
  store i32 %416, i32* %7, align 4
  %417 = load i32, i32* %7, align 4
  %418 = and i32 -2147483648, %417
  %419 = load i32*, i32** %3, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 1
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %421, %418
  store i32 %422, i32* %420, align 4
  %423 = load i32, i32* %7, align 4
  %424 = and i32 1, %423
  %425 = load i32*, i32** %3, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 2
  %427 = load i32, i32* %426, align 4
  %428 = sub nsw i32 %427, %424
  store i32 %428, i32* %426, align 4
  %429 = load i32*, i32** %3, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 2
  %431 = load i32, i32* %430, align 4
  %432 = ashr i32 %431, 63
  %433 = sub nsw i32 0, %432
  store i32 %433, i32* %7, align 4
  %434 = load i32, i32* %7, align 4
  %435 = and i32 -2147483648, %434
  %436 = load i32*, i32** %3, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 2
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %438, %435
  store i32 %439, i32* %437, align 4
  %440 = load i32, i32* %7, align 4
  %441 = and i32 1, %440
  %442 = load i32*, i32** %3, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 3
  %444 = load i32, i32* %443, align 4
  %445 = sub nsw i32 %444, %441
  store i32 %445, i32* %443, align 4
  %446 = load i32*, i32** %3, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 3
  %448 = load i32, i32* %447, align 4
  %449 = ashr i32 %448, 63
  %450 = sub nsw i32 0, %449
  store i32 %450, i32* %7, align 4
  %451 = load i32, i32* %7, align 4
  %452 = and i32 -2147483648, %451
  %453 = load i32*, i32** %3, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 3
  %455 = load i32, i32* %454, align 4
  %456 = add nsw i32 %455, %452
  store i32 %456, i32* %454, align 4
  %457 = load i32, i32* %7, align 4
  %458 = and i32 1, %457
  %459 = load i32*, i32** %3, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 4
  %461 = load i32, i32* %460, align 4
  %462 = sub nsw i32 %461, %458
  store i32 %462, i32* %460, align 4
  %463 = load i32*, i32** %3, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 4
  %465 = load i32, i32* %464, align 4
  %466 = ashr i32 %465, 63
  %467 = sub nsw i32 0, %466
  store i32 %467, i32* %7, align 4
  %468 = load i32, i32* %7, align 4
  %469 = and i32 -2147483648, %468
  %470 = load i32*, i32** %3, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 4
  %472 = load i32, i32* %471, align 4
  %473 = add nsw i32 %472, %469
  store i32 %473, i32* %471, align 4
  %474 = load i32, i32* %7, align 4
  %475 = and i32 1, %474
  %476 = load i32*, i32** %3, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 5
  %478 = load i32, i32* %477, align 4
  %479 = sub nsw i32 %478, %475
  store i32 %479, i32* %477, align 4
  %480 = load i32*, i32** %3, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 0
  %482 = load i32, i32* %481, align 4
  %483 = ashr i32 %482, 63
  %484 = sub nsw i32 0, %483
  store i32 %484, i32* %7, align 4
  %485 = load i32, i32* %7, align 4
  %486 = and i32 -2147483648, %485
  %487 = load i32*, i32** %3, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 5
  %489 = load i32, i32* %488, align 4
  %490 = add nsw i32 %489, %486
  store i32 %490, i32* %488, align 4
  %491 = load i32, i32* %7, align 4
  %492 = and i32 1, %491
  %493 = load i32*, i32** %3, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 6
  %495 = load i32, i32* %494, align 4
  %496 = sub nsw i32 %495, %492
  store i32 %496, i32* %494, align 4
  %497 = load i32*, i32** %3, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 6
  %499 = load i32, i32* %498, align 4
  %500 = ashr i32 %499, 63
  %501 = sub nsw i32 0, %500
  store i32 %501, i32* %7, align 4
  %502 = load i32, i32* %7, align 4
  %503 = and i32 -2147483648, %502
  %504 = load i32*, i32** %3, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 6
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %506, %503
  store i32 %507, i32* %505, align 4
  %508 = load i32, i32* %7, align 4
  %509 = and i32 1, %508
  %510 = load i32*, i32** %3, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 7
  %512 = load i32, i32* %511, align 4
  %513 = sub nsw i32 %512, %509
  store i32 %513, i32* %511, align 4
  %514 = load i32*, i32** %3, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 7
  %516 = load i32, i32* %515, align 4
  %517 = ashr i32 %516, 63
  %518 = sub nsw i32 0, %517
  store i32 %518, i32* %7, align 4
  %519 = load i32, i32* %7, align 4
  %520 = and i32 -2147483648, %519
  %521 = load i32*, i32** %3, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 7
  %523 = load i32, i32* %522, align 4
  %524 = add nsw i32 %523, %520
  store i32 %524, i32* %522, align 4
  %525 = load i32, i32* %7, align 4
  %526 = and i32 1, %525
  %527 = load i32*, i32** %3, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 8
  %529 = load i32, i32* %528, align 4
  %530 = sub nsw i32 %529, %526
  store i32 %530, i32* %528, align 4
  %531 = load i32*, i32** %3, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 5
  %533 = load i32, i32* %532, align 4
  %534 = ashr i32 %533, 63
  %535 = sub nsw i32 0, %534
  store i32 %535, i32* %7, align 4
  %536 = load i32, i32* %7, align 4
  %537 = and i32 -2147483648, %536
  %538 = load i32*, i32** %3, align 8
  %539 = getelementptr inbounds i32, i32* %538, i64 5
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %540, %537
  store i32 %541, i32* %539, align 4
  %542 = load i32, i32* %7, align 4
  %543 = and i32 1, %542
  %544 = load i32*, i32** %3, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 6
  %546 = load i32, i32* %545, align 4
  %547 = sub nsw i32 %546, %543
  store i32 %547, i32* %545, align 4
  %548 = load i32*, i32** %3, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 6
  %550 = load i32, i32* %549, align 4
  %551 = ashr i32 %550, 63
  %552 = sub nsw i32 0, %551
  store i32 %552, i32* %7, align 4
  %553 = load i32, i32* %7, align 4
  %554 = and i32 -2147483648, %553
  %555 = load i32*, i32** %3, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 6
  %557 = load i32, i32* %556, align 4
  %558 = add nsw i32 %557, %554
  store i32 %558, i32* %556, align 4
  %559 = load i32, i32* %7, align 4
  %560 = and i32 1, %559
  %561 = load i32*, i32** %3, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 7
  %563 = load i32, i32* %562, align 4
  %564 = sub nsw i32 %563, %560
  store i32 %564, i32* %562, align 4
  %565 = load i32*, i32** %3, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 7
  %567 = load i32, i32* %566, align 4
  %568 = ashr i32 %567, 63
  %569 = sub nsw i32 0, %568
  store i32 %569, i32* %7, align 4
  %570 = load i32, i32* %7, align 4
  %571 = and i32 -2147483648, %570
  %572 = load i32*, i32** %3, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 7
  %574 = load i32, i32* %573, align 4
  %575 = add nsw i32 %574, %571
  store i32 %575, i32* %573, align 4
  %576 = load i32, i32* %7, align 4
  %577 = and i32 1, %576
  %578 = load i32*, i32** %3, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 8
  %580 = load i32, i32* %579, align 4
  %581 = sub nsw i32 %580, %577
  store i32 %581, i32* %579, align 4
  ret void
}

declare dso_local i32 @felem_assign(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
