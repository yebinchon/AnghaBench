; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaqr1_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaqr1_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slaqr1_.s = internal global float 0.000000e+00, align 4
@slaqr1_.h21s = internal global float 0.000000e+00, align 4
@slaqr1_.h31s = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaqr1_(i32* %0, float* %1, i32* %2, float* %3, float* %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32* %0, i32** %9, align 8
  store float* %1, float** %10, align 8
  store i32* %2, i32** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = add nsw i32 1, %24
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load float*, float** %10, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds float, float* %27, i64 %29
  store float* %30, float** %10, align 8
  %31 = load float*, float** %16, align 8
  %32 = getelementptr inbounds float, float* %31, i32 -1
  store float* %32, float** %16, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %144

36:                                               ; preds = %8
  %37 = load float*, float** %10, align 8
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %37, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %14, align 8
  %44 = load float, float* %43, align 4
  %45 = fsub float %42, %44
  store float %45, float* %19, align 4
  %46 = load float, float* %19, align 4
  %47 = call i32 @dabs(float %46)
  %48 = load float*, float** %15, align 8
  %49 = load float, float* %48, align 4
  %50 = call i32 @dabs(float %49)
  %51 = add nsw i32 %47, %50
  %52 = load float*, float** %10, align 8
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %52, i64 %55
  %57 = load float, float* %56, align 4
  store float %57, float* %20, align 4
  %58 = load float, float* %20, align 4
  %59 = call i32 @dabs(float %58)
  %60 = add nsw i32 %51, %59
  %61 = sitofp i32 %60 to float
  store float %61, float* @slaqr1_.s, align 4
  %62 = load float, float* @slaqr1_.s, align 4
  %63 = fcmp oeq float %62, 0.000000e+00
  br i1 %63, label %64, label %69

64:                                               ; preds = %36
  %65 = load float*, float** %16, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  store float 0.000000e+00, float* %66, align 4
  %67 = load float*, float** %16, align 8
  %68 = getelementptr inbounds float, float* %67, i64 2
  store float 0.000000e+00, float* %68, align 4
  br label %143

69:                                               ; preds = %36
  %70 = load float*, float** %10, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %70, i64 %73
  %75 = load float, float* %74, align 4
  %76 = load float, float* @slaqr1_.s, align 4
  %77 = fdiv float %75, %76
  store float %77, float* @slaqr1_.h21s, align 4
  %78 = load float, float* @slaqr1_.h21s, align 4
  %79 = load float*, float** %10, align 8
  %80 = load i32, i32* %17, align 4
  %81 = shl i32 %80, 1
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %79, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fmul float %78, %85
  %87 = load float*, float** %10, align 8
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %87, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %12, align 8
  %94 = load float, float* %93, align 4
  %95 = fsub float %92, %94
  %96 = load float*, float** %10, align 8
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %96, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %14, align 8
  %103 = load float, float* %102, align 4
  %104 = fsub float %101, %103
  %105 = load float, float* @slaqr1_.s, align 4
  %106 = fdiv float %104, %105
  %107 = fmul float %95, %106
  %108 = fadd float %86, %107
  %109 = load float*, float** %13, align 8
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %15, align 8
  %112 = load float, float* %111, align 4
  %113 = load float, float* @slaqr1_.s, align 4
  %114 = fdiv float %112, %113
  %115 = fmul float %110, %114
  %116 = fsub float %108, %115
  %117 = load float*, float** %16, align 8
  %118 = getelementptr inbounds float, float* %117, i64 1
  store float %116, float* %118, align 4
  %119 = load float, float* @slaqr1_.h21s, align 4
  %120 = load float*, float** %10, align 8
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %120, i64 %123
  %125 = load float, float* %124, align 4
  %126 = load float*, float** %10, align 8
  %127 = load i32, i32* %17, align 4
  %128 = shl i32 %127, 1
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %126, i64 %130
  %132 = load float, float* %131, align 4
  %133 = fadd float %125, %132
  %134 = load float*, float** %12, align 8
  %135 = load float, float* %134, align 4
  %136 = fsub float %133, %135
  %137 = load float*, float** %14, align 8
  %138 = load float, float* %137, align 4
  %139 = fsub float %136, %138
  %140 = fmul float %119, %139
  %141 = load float*, float** %16, align 8
  %142 = getelementptr inbounds float, float* %141, i64 2
  store float %140, float* %142, align 4
  br label %143

143:                                              ; preds = %69, %64
  br label %325

144:                                              ; preds = %8
  %145 = load float*, float** %10, align 8
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %145, i64 %148
  %150 = load float, float* %149, align 4
  %151 = load float*, float** %14, align 8
  %152 = load float, float* %151, align 4
  %153 = fsub float %150, %152
  store float %153, float* %19, align 4
  %154 = load float, float* %19, align 4
  %155 = call i32 @dabs(float %154)
  %156 = load float*, float** %15, align 8
  %157 = load float, float* %156, align 4
  %158 = call i32 @dabs(float %157)
  %159 = add nsw i32 %155, %158
  %160 = load float*, float** %10, align 8
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %160, i64 %163
  %165 = load float, float* %164, align 4
  store float %165, float* %20, align 4
  %166 = load float, float* %20, align 4
  %167 = call i32 @dabs(float %166)
  %168 = add nsw i32 %159, %167
  %169 = load float*, float** %10, align 8
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %169, i64 %172
  %174 = load float, float* %173, align 4
  store float %174, float* %21, align 4
  %175 = load float, float* %21, align 4
  %176 = call i32 @dabs(float %175)
  %177 = add nsw i32 %168, %176
  %178 = sitofp i32 %177 to float
  store float %178, float* @slaqr1_.s, align 4
  %179 = load float, float* @slaqr1_.s, align 4
  %180 = fcmp oeq float %179, 0.000000e+00
  br i1 %180, label %181, label %188

181:                                              ; preds = %144
  %182 = load float*, float** %16, align 8
  %183 = getelementptr inbounds float, float* %182, i64 1
  store float 0.000000e+00, float* %183, align 4
  %184 = load float*, float** %16, align 8
  %185 = getelementptr inbounds float, float* %184, i64 2
  store float 0.000000e+00, float* %185, align 4
  %186 = load float*, float** %16, align 8
  %187 = getelementptr inbounds float, float* %186, i64 3
  store float 0.000000e+00, float* %187, align 4
  br label %324

188:                                              ; preds = %144
  %189 = load float*, float** %10, align 8
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %189, i64 %192
  %194 = load float, float* %193, align 4
  %195 = load float, float* @slaqr1_.s, align 4
  %196 = fdiv float %194, %195
  store float %196, float* @slaqr1_.h21s, align 4
  %197 = load float*, float** %10, align 8
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 3
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %197, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load float, float* @slaqr1_.s, align 4
  %204 = fdiv float %202, %203
  store float %204, float* @slaqr1_.h31s, align 4
  %205 = load float*, float** %10, align 8
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %205, i64 %208
  %210 = load float, float* %209, align 4
  %211 = load float*, float** %12, align 8
  %212 = load float, float* %211, align 4
  %213 = fsub float %210, %212
  %214 = load float*, float** %10, align 8
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %214, i64 %217
  %219 = load float, float* %218, align 4
  %220 = load float*, float** %14, align 8
  %221 = load float, float* %220, align 4
  %222 = fsub float %219, %221
  %223 = load float, float* @slaqr1_.s, align 4
  %224 = fdiv float %222, %223
  %225 = fmul float %213, %224
  %226 = load float*, float** %13, align 8
  %227 = load float, float* %226, align 4
  %228 = load float*, float** %15, align 8
  %229 = load float, float* %228, align 4
  %230 = load float, float* @slaqr1_.s, align 4
  %231 = fdiv float %229, %230
  %232 = fmul float %227, %231
  %233 = fsub float %225, %232
  %234 = load float*, float** %10, align 8
  %235 = load i32, i32* %17, align 4
  %236 = shl i32 %235, 1
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %234, i64 %238
  %240 = load float, float* %239, align 4
  %241 = load float, float* @slaqr1_.h21s, align 4
  %242 = fmul float %240, %241
  %243 = fadd float %233, %242
  %244 = load float*, float** %10, align 8
  %245 = load i32, i32* %17, align 4
  %246 = mul nsw i32 %245, 3
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %244, i64 %248
  %250 = load float, float* %249, align 4
  %251 = load float, float* @slaqr1_.h31s, align 4
  %252 = fmul float %250, %251
  %253 = fadd float %243, %252
  %254 = load float*, float** %16, align 8
  %255 = getelementptr inbounds float, float* %254, i64 1
  store float %253, float* %255, align 4
  %256 = load float, float* @slaqr1_.h21s, align 4
  %257 = load float*, float** %10, align 8
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %257, i64 %260
  %262 = load float, float* %261, align 4
  %263 = load float*, float** %10, align 8
  %264 = load i32, i32* %17, align 4
  %265 = shl i32 %264, 1
  %266 = add nsw i32 %265, 2
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %263, i64 %267
  %269 = load float, float* %268, align 4
  %270 = fadd float %262, %269
  %271 = load float*, float** %12, align 8
  %272 = load float, float* %271, align 4
  %273 = fsub float %270, %272
  %274 = load float*, float** %14, align 8
  %275 = load float, float* %274, align 4
  %276 = fsub float %273, %275
  %277 = fmul float %256, %276
  %278 = load float*, float** %10, align 8
  %279 = load i32, i32* %17, align 4
  %280 = mul nsw i32 %279, 3
  %281 = add nsw i32 %280, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %278, i64 %282
  %284 = load float, float* %283, align 4
  %285 = load float, float* @slaqr1_.h31s, align 4
  %286 = fmul float %284, %285
  %287 = fadd float %277, %286
  %288 = load float*, float** %16, align 8
  %289 = getelementptr inbounds float, float* %288, i64 2
  store float %287, float* %289, align 4
  %290 = load float, float* @slaqr1_.h31s, align 4
  %291 = load float*, float** %10, align 8
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %291, i64 %294
  %296 = load float, float* %295, align 4
  %297 = load float*, float** %10, align 8
  %298 = load i32, i32* %17, align 4
  %299 = mul nsw i32 %298, 3
  %300 = add nsw i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %297, i64 %301
  %303 = load float, float* %302, align 4
  %304 = fadd float %296, %303
  %305 = load float*, float** %12, align 8
  %306 = load float, float* %305, align 4
  %307 = fsub float %304, %306
  %308 = load float*, float** %14, align 8
  %309 = load float, float* %308, align 4
  %310 = fsub float %307, %309
  %311 = fmul float %290, %310
  %312 = load float, float* @slaqr1_.h21s, align 4
  %313 = load float*, float** %10, align 8
  %314 = load i32, i32* %17, align 4
  %315 = shl i32 %314, 1
  %316 = add nsw i32 %315, 3
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %313, i64 %317
  %319 = load float, float* %318, align 4
  %320 = fmul float %312, %319
  %321 = fadd float %311, %320
  %322 = load float*, float** %16, align 8
  %323 = getelementptr inbounds float, float* %322, i64 3
  store float %321, float* %323, align 4
  br label %324

324:                                              ; preds = %188, %181
  br label %325

325:                                              ; preds = %324, %143
  ret i32 0
}

declare dso_local i32 @dabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
