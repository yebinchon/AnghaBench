; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_felem_reduce.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_felem_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bottom58bits = common dso_local global i32 0, align 4
@bottom52bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @felem_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @felem_reduce(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @bottom58bits, align 4
  %11 = and i32 %9, %10
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @bottom58bits, align 4
  %18 = and i32 %16, %17
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @bottom58bits, align 4
  %25 = and i32 %23, %24
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @bottom58bits, align 4
  %32 = and i32 %30, %31
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @bottom58bits, align 4
  %39 = and i32 %37, %38
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @bottom58bits, align 4
  %46 = and i32 %44, %45
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @bottom58bits, align 4
  %53 = and i32 %51, %52
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @bottom58bits, align 4
  %60 = and i32 %58, %59
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 7
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @bottom58bits, align 4
  %67 = and i32 %65, %66
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 58
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 64
  %82 = load i32, i32* @bottom52bits, align 4
  %83 = and i32 %81, %82
  %84 = shl i32 %83, 6
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 64
  %93 = ashr i32 %92, 52
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 58
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 64
  %110 = load i32, i32* @bottom52bits, align 4
  %111 = and i32 %109, %110
  %112 = shl i32 %111, 6
  %113 = load i32*, i32** %3, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 64
  %121 = ashr i32 %120, 52
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 58
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 64
  %138 = load i32, i32* @bottom52bits, align 4
  %139 = and i32 %137, %138
  %140 = shl i32 %139, 6
  %141 = load i32*, i32** %3, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 64
  %149 = ashr i32 %148, 52
  %150 = load i32*, i32** %3, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 58
  %158 = load i32*, i32** %3, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 4
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 64
  %166 = load i32, i32* @bottom52bits, align 4
  %167 = and i32 %165, %166
  %168 = shl i32 %167, 6
  %169 = load i32*, i32** %3, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 64
  %177 = ashr i32 %176, 52
  %178 = load i32*, i32** %3, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32*, i32** %4, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 4
  %184 = load i32, i32* %183, align 4
  %185 = ashr i32 %184, 58
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 5
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 4
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %192, 64
  %194 = load i32, i32* @bottom52bits, align 4
  %195 = and i32 %193, %194
  %196 = shl i32 %195, 6
  %197 = load i32*, i32** %3, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 5
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 4
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 64
  %205 = ashr i32 %204, 52
  %206 = load i32*, i32** %3, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 6
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load i32*, i32** %4, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 5
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 58
  %214 = load i32*, i32** %3, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 6
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load i32*, i32** %4, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 5
  %220 = load i32, i32* %219, align 4
  %221 = ashr i32 %220, 64
  %222 = load i32, i32* @bottom52bits, align 4
  %223 = and i32 %221, %222
  %224 = shl i32 %223, 6
  %225 = load i32*, i32** %3, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 6
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 4
  %229 = load i32*, i32** %4, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 5
  %231 = load i32, i32* %230, align 4
  %232 = ashr i32 %231, 64
  %233 = ashr i32 %232, 52
  %234 = load i32*, i32** %3, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 7
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load i32*, i32** %4, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 6
  %240 = load i32, i32* %239, align 4
  %241 = ashr i32 %240, 58
  %242 = load i32*, i32** %3, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 7
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load i32*, i32** %4, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 6
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 64
  %250 = load i32, i32* @bottom52bits, align 4
  %251 = and i32 %249, %250
  %252 = shl i32 %251, 6
  %253 = load i32*, i32** %3, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 7
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, %252
  store i32 %256, i32* %254, align 4
  %257 = load i32*, i32** %4, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 6
  %259 = load i32, i32* %258, align 4
  %260 = ashr i32 %259, 64
  %261 = ashr i32 %260, 52
  %262 = load i32*, i32** %3, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 8
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load i32*, i32** %4, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 7
  %268 = load i32, i32* %267, align 4
  %269 = ashr i32 %268, 58
  %270 = load i32*, i32** %3, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 8
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, %269
  store i32 %273, i32* %271, align 4
  %274 = load i32*, i32** %4, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 7
  %276 = load i32, i32* %275, align 4
  %277 = ashr i32 %276, 64
  %278 = load i32, i32* @bottom52bits, align 4
  %279 = and i32 %277, %278
  %280 = shl i32 %279, 6
  %281 = load i32*, i32** %3, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 8
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load i32*, i32** %4, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 7
  %287 = load i32, i32* %286, align 4
  %288 = ashr i32 %287, 64
  %289 = ashr i32 %288, 52
  store i32 %289, i32* %5, align 4
  %290 = load i32*, i32** %4, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 8
  %292 = load i32, i32* %291, align 4
  %293 = ashr i32 %292, 58
  %294 = load i32, i32* %5, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %5, align 4
  %296 = load i32*, i32** %4, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 8
  %298 = load i32, i32* %297, align 4
  %299 = ashr i32 %298, 64
  %300 = load i32, i32* @bottom52bits, align 4
  %301 = and i32 %299, %300
  %302 = shl i32 %301, 6
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %5, align 4
  %305 = load i32*, i32** %4, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 8
  %307 = load i32, i32* %306, align 4
  %308 = ashr i32 %307, 64
  %309 = ashr i32 %308, 52
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %5, align 4
  %311 = shl i32 %310, 1
  store i32 %311, i32* %5, align 4
  %312 = load i32, i32* %6, align 4
  %313 = shl i32 %312, 1
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* %5, align 4
  %315 = load i32*, i32** %3, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* %6, align 4
  %320 = load i32*, i32** %3, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, %319
  store i32 %323, i32* %321, align 4
  %324 = load i32*, i32** %3, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = ashr i32 %326, 58
  %328 = load i32*, i32** %3, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 1
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load i32, i32* @bottom58bits, align 4
  %333 = load i32*, i32** %3, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
