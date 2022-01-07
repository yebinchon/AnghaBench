; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed5_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed5_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slaed5_.b = internal global float 0.000000e+00, align 4
@slaed5_.c__ = internal global float 0.000000e+00, align 4
@slaed5_.w = internal global float 0.000000e+00, align 4
@slaed5_.del = internal global float 0.000000e+00, align 4
@slaed5_.tau = internal global float 0.000000e+00, align 4
@slaed5_.temp = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaed5_(i32* %0, float* %1, float* %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %14 = load float*, float** %10, align 8
  %15 = getelementptr inbounds float, float* %14, i32 -1
  store float* %15, float** %10, align 8
  %16 = load float*, float** %9, align 8
  %17 = getelementptr inbounds float, float* %16, i32 -1
  store float* %17, float** %9, align 8
  %18 = load float*, float** %8, align 8
  %19 = getelementptr inbounds float, float* %18, i32 -1
  store float* %19, float** %8, align 8
  %20 = load float*, float** %8, align 8
  %21 = getelementptr inbounds float, float* %20, i64 2
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %8, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = fsub float %22, %25
  store float %26, float* @slaed5_.del, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %238

30:                                               ; preds = %6
  %31 = load float*, float** %11, align 8
  %32 = load float, float* %31, align 4
  %33 = fmul float %32, 2.000000e+00
  %34 = load float*, float** %9, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %9, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  %39 = load float, float* %38, align 4
  %40 = fmul float %36, %39
  %41 = load float*, float** %9, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = load float*, float** %9, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fmul float %43, %46
  %48 = fsub float %40, %47
  %49 = fmul float %33, %48
  %50 = load float, float* @slaed5_.del, align 4
  %51 = fdiv float %49, %50
  %52 = fadd float %51, 1.000000e+00
  store float %52, float* @slaed5_.w, align 4
  %53 = load float, float* @slaed5_.w, align 4
  %54 = fcmp ogt float %53, 0.000000e+00
  br i1 %54, label %55, label %126

55:                                               ; preds = %30
  %56 = load float, float* @slaed5_.del, align 4
  %57 = load float*, float** %11, align 8
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %9, align 8
  %60 = getelementptr inbounds float, float* %59, i64 1
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %9, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  %64 = load float, float* %63, align 4
  %65 = fmul float %61, %64
  %66 = load float*, float** %9, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %9, align 8
  %70 = getelementptr inbounds float, float* %69, i64 2
  %71 = load float, float* %70, align 4
  %72 = fmul float %68, %71
  %73 = fadd float %65, %72
  %74 = fmul float %58, %73
  %75 = fadd float %56, %74
  store float %75, float* @slaed5_.b, align 4
  %76 = load float*, float** %11, align 8
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %9, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  %80 = load float, float* %79, align 4
  %81 = fmul float %77, %80
  %82 = load float*, float** %9, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  %84 = load float, float* %83, align 4
  %85 = fmul float %81, %84
  %86 = load float, float* @slaed5_.del, align 4
  %87 = fmul float %85, %86
  store float %87, float* @slaed5_.c__, align 4
  %88 = load float, float* @slaed5_.c__, align 4
  %89 = fmul float %88, 2.000000e+00
  %90 = load float, float* @slaed5_.b, align 4
  %91 = load float, float* @slaed5_.b, align 4
  %92 = load float, float* @slaed5_.b, align 4
  %93 = fmul float %91, %92
  %94 = load float, float* @slaed5_.c__, align 4
  %95 = fmul float %94, 4.000000e+00
  %96 = fsub float %93, %95
  store float %96, float* %13, align 4
  %97 = load float, float* %13, align 4
  %98 = call i32 @dabs(float %97)
  %99 = sitofp i32 %98 to float
  %100 = call float @sqrt(float %99)
  %101 = fadd float %90, %100
  %102 = fdiv float %89, %101
  store float %102, float* @slaed5_.tau, align 4
  %103 = load float*, float** %8, align 8
  %104 = getelementptr inbounds float, float* %103, i64 1
  %105 = load float, float* %104, align 4
  %106 = load float, float* @slaed5_.tau, align 4
  %107 = fadd float %105, %106
  %108 = load float*, float** %12, align 8
  store float %107, float* %108, align 4
  %109 = load float*, float** %9, align 8
  %110 = getelementptr inbounds float, float* %109, i64 1
  %111 = load float, float* %110, align 4
  %112 = fneg float %111
  %113 = load float, float* @slaed5_.tau, align 4
  %114 = fdiv float %112, %113
  %115 = load float*, float** %10, align 8
  %116 = getelementptr inbounds float, float* %115, i64 1
  store float %114, float* %116, align 4
  %117 = load float*, float** %9, align 8
  %118 = getelementptr inbounds float, float* %117, i64 2
  %119 = load float, float* %118, align 4
  %120 = load float, float* @slaed5_.del, align 4
  %121 = load float, float* @slaed5_.tau, align 4
  %122 = fsub float %120, %121
  %123 = fdiv float %119, %122
  %124 = load float*, float** %10, align 8
  %125 = getelementptr inbounds float, float* %124, i64 2
  store float %123, float* %125, align 4
  br label %211

126:                                              ; preds = %30
  %127 = load float, float* @slaed5_.del, align 4
  %128 = fneg float %127
  %129 = load float*, float** %11, align 8
  %130 = load float, float* %129, align 4
  %131 = load float*, float** %9, align 8
  %132 = getelementptr inbounds float, float* %131, i64 1
  %133 = load float, float* %132, align 4
  %134 = load float*, float** %9, align 8
  %135 = getelementptr inbounds float, float* %134, i64 1
  %136 = load float, float* %135, align 4
  %137 = fmul float %133, %136
  %138 = load float*, float** %9, align 8
  %139 = getelementptr inbounds float, float* %138, i64 2
  %140 = load float, float* %139, align 4
  %141 = load float*, float** %9, align 8
  %142 = getelementptr inbounds float, float* %141, i64 2
  %143 = load float, float* %142, align 4
  %144 = fmul float %140, %143
  %145 = fadd float %137, %144
  %146 = fmul float %130, %145
  %147 = fadd float %128, %146
  store float %147, float* @slaed5_.b, align 4
  %148 = load float*, float** %11, align 8
  %149 = load float, float* %148, align 4
  %150 = load float*, float** %9, align 8
  %151 = getelementptr inbounds float, float* %150, i64 2
  %152 = load float, float* %151, align 4
  %153 = fmul float %149, %152
  %154 = load float*, float** %9, align 8
  %155 = getelementptr inbounds float, float* %154, i64 2
  %156 = load float, float* %155, align 4
  %157 = fmul float %153, %156
  %158 = load float, float* @slaed5_.del, align 4
  %159 = fmul float %157, %158
  store float %159, float* @slaed5_.c__, align 4
  %160 = load float, float* @slaed5_.b, align 4
  %161 = fcmp ogt float %160, 0.000000e+00
  br i1 %161, label %162, label %175

162:                                              ; preds = %126
  %163 = load float, float* @slaed5_.c__, align 4
  %164 = fmul float %163, -2.000000e+00
  %165 = load float, float* @slaed5_.b, align 4
  %166 = load float, float* @slaed5_.b, align 4
  %167 = load float, float* @slaed5_.b, align 4
  %168 = fmul float %166, %167
  %169 = load float, float* @slaed5_.c__, align 4
  %170 = fmul float %169, 4.000000e+00
  %171 = fadd float %168, %170
  %172 = call float @sqrt(float %171)
  %173 = fadd float %165, %172
  %174 = fdiv float %164, %173
  store float %174, float* @slaed5_.tau, align 4
  br label %186

175:                                              ; preds = %126
  %176 = load float, float* @slaed5_.b, align 4
  %177 = load float, float* @slaed5_.b, align 4
  %178 = load float, float* @slaed5_.b, align 4
  %179 = fmul float %177, %178
  %180 = load float, float* @slaed5_.c__, align 4
  %181 = fmul float %180, 4.000000e+00
  %182 = fadd float %179, %181
  %183 = call float @sqrt(float %182)
  %184 = fsub float %176, %183
  %185 = fdiv float %184, 2.000000e+00
  store float %185, float* @slaed5_.tau, align 4
  br label %186

186:                                              ; preds = %175, %162
  %187 = load float*, float** %8, align 8
  %188 = getelementptr inbounds float, float* %187, i64 2
  %189 = load float, float* %188, align 4
  %190 = load float, float* @slaed5_.tau, align 4
  %191 = fadd float %189, %190
  %192 = load float*, float** %12, align 8
  store float %191, float* %192, align 4
  %193 = load float*, float** %9, align 8
  %194 = getelementptr inbounds float, float* %193, i64 1
  %195 = load float, float* %194, align 4
  %196 = fneg float %195
  %197 = load float, float* @slaed5_.del, align 4
  %198 = load float, float* @slaed5_.tau, align 4
  %199 = fadd float %197, %198
  %200 = fdiv float %196, %199
  %201 = load float*, float** %10, align 8
  %202 = getelementptr inbounds float, float* %201, i64 1
  store float %200, float* %202, align 4
  %203 = load float*, float** %9, align 8
  %204 = getelementptr inbounds float, float* %203, i64 2
  %205 = load float, float* %204, align 4
  %206 = fneg float %205
  %207 = load float, float* @slaed5_.tau, align 4
  %208 = fdiv float %206, %207
  %209 = load float*, float** %10, align 8
  %210 = getelementptr inbounds float, float* %209, i64 2
  store float %208, float* %210, align 4
  br label %211

211:                                              ; preds = %186, %55
  %212 = load float*, float** %10, align 8
  %213 = getelementptr inbounds float, float* %212, i64 1
  %214 = load float, float* %213, align 4
  %215 = load float*, float** %10, align 8
  %216 = getelementptr inbounds float, float* %215, i64 1
  %217 = load float, float* %216, align 4
  %218 = fmul float %214, %217
  %219 = load float*, float** %10, align 8
  %220 = getelementptr inbounds float, float* %219, i64 2
  %221 = load float, float* %220, align 4
  %222 = load float*, float** %10, align 8
  %223 = getelementptr inbounds float, float* %222, i64 2
  %224 = load float, float* %223, align 4
  %225 = fmul float %221, %224
  %226 = fadd float %218, %225
  %227 = call float @sqrt(float %226)
  store float %227, float* @slaed5_.temp, align 4
  %228 = load float, float* @slaed5_.temp, align 4
  %229 = load float*, float** %10, align 8
  %230 = getelementptr inbounds float, float* %229, i64 1
  %231 = load float, float* %230, align 4
  %232 = fdiv float %231, %228
  store float %232, float* %230, align 4
  %233 = load float, float* @slaed5_.temp, align 4
  %234 = load float*, float** %10, align 8
  %235 = getelementptr inbounds float, float* %234, i64 2
  %236 = load float, float* %235, align 4
  %237 = fdiv float %236, %233
  store float %237, float* %235, align 4
  br label %350

238:                                              ; preds = %6
  %239 = load float, float* @slaed5_.del, align 4
  %240 = fneg float %239
  %241 = load float*, float** %11, align 8
  %242 = load float, float* %241, align 4
  %243 = load float*, float** %9, align 8
  %244 = getelementptr inbounds float, float* %243, i64 1
  %245 = load float, float* %244, align 4
  %246 = load float*, float** %9, align 8
  %247 = getelementptr inbounds float, float* %246, i64 1
  %248 = load float, float* %247, align 4
  %249 = fmul float %245, %248
  %250 = load float*, float** %9, align 8
  %251 = getelementptr inbounds float, float* %250, i64 2
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %9, align 8
  %254 = getelementptr inbounds float, float* %253, i64 2
  %255 = load float, float* %254, align 4
  %256 = fmul float %252, %255
  %257 = fadd float %249, %256
  %258 = fmul float %242, %257
  %259 = fadd float %240, %258
  store float %259, float* @slaed5_.b, align 4
  %260 = load float*, float** %11, align 8
  %261 = load float, float* %260, align 4
  %262 = load float*, float** %9, align 8
  %263 = getelementptr inbounds float, float* %262, i64 2
  %264 = load float, float* %263, align 4
  %265 = fmul float %261, %264
  %266 = load float*, float** %9, align 8
  %267 = getelementptr inbounds float, float* %266, i64 2
  %268 = load float, float* %267, align 4
  %269 = fmul float %265, %268
  %270 = load float, float* @slaed5_.del, align 4
  %271 = fmul float %269, %270
  store float %271, float* @slaed5_.c__, align 4
  %272 = load float, float* @slaed5_.b, align 4
  %273 = fcmp ogt float %272, 0.000000e+00
  br i1 %273, label %274, label %285

274:                                              ; preds = %238
  %275 = load float, float* @slaed5_.b, align 4
  %276 = load float, float* @slaed5_.b, align 4
  %277 = load float, float* @slaed5_.b, align 4
  %278 = fmul float %276, %277
  %279 = load float, float* @slaed5_.c__, align 4
  %280 = fmul float %279, 4.000000e+00
  %281 = fadd float %278, %280
  %282 = call float @sqrt(float %281)
  %283 = fadd float %275, %282
  %284 = fdiv float %283, 2.000000e+00
  store float %284, float* @slaed5_.tau, align 4
  br label %299

285:                                              ; preds = %238
  %286 = load float, float* @slaed5_.c__, align 4
  %287 = fmul float %286, 2.000000e+00
  %288 = load float, float* @slaed5_.b, align 4
  %289 = fneg float %288
  %290 = load float, float* @slaed5_.b, align 4
  %291 = load float, float* @slaed5_.b, align 4
  %292 = fmul float %290, %291
  %293 = load float, float* @slaed5_.c__, align 4
  %294 = fmul float %293, 4.000000e+00
  %295 = fadd float %292, %294
  %296 = call float @sqrt(float %295)
  %297 = fadd float %289, %296
  %298 = fdiv float %287, %297
  store float %298, float* @slaed5_.tau, align 4
  br label %299

299:                                              ; preds = %285, %274
  %300 = load float*, float** %8, align 8
  %301 = getelementptr inbounds float, float* %300, i64 2
  %302 = load float, float* %301, align 4
  %303 = load float, float* @slaed5_.tau, align 4
  %304 = fadd float %302, %303
  %305 = load float*, float** %12, align 8
  store float %304, float* %305, align 4
  %306 = load float*, float** %9, align 8
  %307 = getelementptr inbounds float, float* %306, i64 1
  %308 = load float, float* %307, align 4
  %309 = fneg float %308
  %310 = load float, float* @slaed5_.del, align 4
  %311 = load float, float* @slaed5_.tau, align 4
  %312 = fadd float %310, %311
  %313 = fdiv float %309, %312
  %314 = load float*, float** %10, align 8
  %315 = getelementptr inbounds float, float* %314, i64 1
  store float %313, float* %315, align 4
  %316 = load float*, float** %9, align 8
  %317 = getelementptr inbounds float, float* %316, i64 2
  %318 = load float, float* %317, align 4
  %319 = fneg float %318
  %320 = load float, float* @slaed5_.tau, align 4
  %321 = fdiv float %319, %320
  %322 = load float*, float** %10, align 8
  %323 = getelementptr inbounds float, float* %322, i64 2
  store float %321, float* %323, align 4
  %324 = load float*, float** %10, align 8
  %325 = getelementptr inbounds float, float* %324, i64 1
  %326 = load float, float* %325, align 4
  %327 = load float*, float** %10, align 8
  %328 = getelementptr inbounds float, float* %327, i64 1
  %329 = load float, float* %328, align 4
  %330 = fmul float %326, %329
  %331 = load float*, float** %10, align 8
  %332 = getelementptr inbounds float, float* %331, i64 2
  %333 = load float, float* %332, align 4
  %334 = load float*, float** %10, align 8
  %335 = getelementptr inbounds float, float* %334, i64 2
  %336 = load float, float* %335, align 4
  %337 = fmul float %333, %336
  %338 = fadd float %330, %337
  %339 = call float @sqrt(float %338)
  store float %339, float* @slaed5_.temp, align 4
  %340 = load float, float* @slaed5_.temp, align 4
  %341 = load float*, float** %10, align 8
  %342 = getelementptr inbounds float, float* %341, i64 1
  %343 = load float, float* %342, align 4
  %344 = fdiv float %343, %340
  store float %344, float* %342, align 4
  %345 = load float, float* @slaed5_.temp, align 4
  %346 = load float*, float** %10, align 8
  %347 = getelementptr inbounds float, float* %346, i64 2
  %348 = load float, float* %347, align 4
  %349 = fdiv float %348, %345
  store float %349, float* %347, align 4
  br label %350

350:                                              ; preds = %299, %211
  ret i32 0
}

declare dso_local float @sqrt(float) #1

declare dso_local i32 @dabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
