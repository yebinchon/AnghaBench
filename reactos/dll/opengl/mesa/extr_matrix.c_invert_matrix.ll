; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_invert_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_invert_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Identity = common dso_local global float* null, align 8
@m11 = common dso_local global float 0.000000e+00, align 4
@m12 = common dso_local global float 0.000000e+00, align 4
@m13 = common dso_local global float 0.000000e+00, align 4
@m14 = common dso_local global float 0.000000e+00, align 4
@m21 = common dso_local global float 0.000000e+00, align 4
@m22 = common dso_local global float 0.000000e+00, align 4
@m23 = common dso_local global float 0.000000e+00, align 4
@m24 = common dso_local global float 0.000000e+00, align 4
@m31 = common dso_local global float 0.000000e+00, align 4
@m32 = common dso_local global float 0.000000e+00, align 4
@m33 = common dso_local global float 0.000000e+00, align 4
@m34 = common dso_local global float 0.000000e+00, align 4
@m41 = common dso_local global i32 0, align 4
@m42 = common dso_local global i32 0, align 4
@m43 = common dso_local global i32 0, align 4
@m44 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @invert_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invert_matrix(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca [16 x float], align 16
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %17 = load float*, float** %3, align 8
  %18 = getelementptr inbounds float, float* %17, i64 3
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = fcmp une double %20, 0.000000e+00
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = load float*, float** %3, align 8
  %24 = getelementptr inbounds float, float* %23, i64 7
  %25 = load float, float* %24, align 4
  %26 = fpext float %25 to double
  %27 = fcmp une double %26, 0.000000e+00
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load float*, float** %3, align 8
  %30 = getelementptr inbounds float, float* %29, i64 11
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = fcmp une double %32, 0.000000e+00
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load float*, float** %3, align 8
  %36 = getelementptr inbounds float, float* %35, i64 15
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = fcmp une double %38, 1.000000e+00
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %28, %22, %2
  %41 = load float*, float** %3, align 8
  %42 = load float*, float** %4, align 8
  %43 = call i32 @invert_matrix_general(float* %41, float* %42)
  br label %328

44:                                               ; preds = %34
  %45 = load float*, float** %3, align 8
  %46 = getelementptr inbounds float, float* %45, i64 5
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %3, align 8
  %49 = getelementptr inbounds float, float* %48, i64 10
  %50 = load float, float* %49, align 4
  %51 = fmul float %47, %50
  %52 = load float*, float** %3, align 8
  %53 = getelementptr inbounds float, float* %52, i64 9
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %3, align 8
  %56 = getelementptr inbounds float, float* %55, i64 6
  %57 = load float, float* %56, align 4
  %58 = fmul float %54, %57
  %59 = fsub float %51, %58
  %60 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 0
  store float %59, float* %60, align 16
  %61 = load float*, float** %3, align 8
  %62 = getelementptr inbounds float, float* %61, i64 9
  %63 = load float, float* %62, align 4
  %64 = load float*, float** %3, align 8
  %65 = getelementptr inbounds float, float* %64, i64 2
  %66 = load float, float* %65, align 4
  %67 = fmul float %63, %66
  %68 = load float*, float** %3, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  %70 = load float, float* %69, align 4
  %71 = load float*, float** %3, align 8
  %72 = getelementptr inbounds float, float* %71, i64 10
  %73 = load float, float* %72, align 4
  %74 = fmul float %70, %73
  %75 = fsub float %67, %74
  %76 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 1
  store float %75, float* %76, align 4
  %77 = load float*, float** %3, align 8
  %78 = getelementptr inbounds float, float* %77, i64 1
  %79 = load float, float* %78, align 4
  %80 = load float*, float** %3, align 8
  %81 = getelementptr inbounds float, float* %80, i64 6
  %82 = load float, float* %81, align 4
  %83 = fmul float %79, %82
  %84 = load float*, float** %3, align 8
  %85 = getelementptr inbounds float, float* %84, i64 5
  %86 = load float, float* %85, align 4
  %87 = load float*, float** %3, align 8
  %88 = getelementptr inbounds float, float* %87, i64 2
  %89 = load float, float* %88, align 4
  %90 = fmul float %86, %89
  %91 = fsub float %83, %90
  %92 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 2
  store float %91, float* %92, align 8
  %93 = load float*, float** %3, align 8
  %94 = getelementptr inbounds float, float* %93, i64 0
  %95 = load float, float* %94, align 4
  %96 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 0
  %97 = load float, float* %96, align 16
  %98 = fmul float %95, %97
  %99 = load float*, float** %3, align 8
  %100 = getelementptr inbounds float, float* %99, i64 4
  %101 = load float, float* %100, align 4
  %102 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 1
  %103 = load float, float* %102, align 4
  %104 = fmul float %101, %103
  %105 = fadd float %98, %104
  %106 = load float*, float** %3, align 8
  %107 = getelementptr inbounds float, float* %106, i64 8
  %108 = load float, float* %107, align 4
  %109 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 2
  %110 = load float, float* %109, align 8
  %111 = fmul float %108, %110
  %112 = fadd float %105, %111
  store float %112, float* %5, align 4
  %113 = load float, float* %5, align 4
  %114 = fcmp oeq float %113, 0.000000e+00
  br i1 %114, label %115, label %119

115:                                              ; preds = %44
  %116 = load float*, float** %4, align 8
  %117 = load float*, float** @Identity, align 8
  %118 = call i32 @MEMCPY(float* %116, float* %117, i32 64)
  br label %328

119:                                              ; preds = %44
  %120 = load float, float* %5, align 4
  %121 = fpext float %120 to double
  %122 = fdiv double 1.000000e+00, %121
  %123 = fptrunc double %122 to float
  store float %123, float* %5, align 4
  %124 = load float, float* %5, align 4
  %125 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 0
  %126 = load float, float* %125, align 16
  %127 = fmul float %126, %124
  store float %127, float* %125, align 16
  %128 = load float, float* %5, align 4
  %129 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 1
  %130 = load float, float* %129, align 4
  %131 = fmul float %130, %128
  store float %131, float* %129, align 4
  %132 = load float, float* %5, align 4
  %133 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 2
  %134 = load float, float* %133, align 8
  %135 = fmul float %134, %132
  store float %135, float* %133, align 8
  %136 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 3
  store float 0.000000e+00, float* %136, align 4
  %137 = load float*, float** %3, align 8
  %138 = getelementptr inbounds float, float* %137, i64 0
  %139 = load float, float* %138, align 4
  %140 = load float, float* %5, align 4
  %141 = fmul float %139, %140
  store float %141, float* %13, align 4
  %142 = load float*, float** %3, align 8
  %143 = getelementptr inbounds float, float* %142, i64 4
  %144 = load float, float* %143, align 4
  %145 = load float, float* %5, align 4
  %146 = fmul float %144, %145
  store float %146, float* %14, align 4
  %147 = load float*, float** %3, align 8
  %148 = getelementptr inbounds float, float* %147, i64 8
  %149 = load float, float* %148, align 4
  %150 = load float, float* %5, align 4
  %151 = fmul float %149, %150
  store float %151, float* %15, align 4
  %152 = load float*, float** %3, align 8
  %153 = getelementptr inbounds float, float* %152, i64 12
  %154 = load float, float* %153, align 4
  %155 = load float, float* %5, align 4
  %156 = fmul float %154, %155
  store float %156, float* %16, align 4
  %157 = load float, float* %15, align 4
  %158 = load float*, float** %3, align 8
  %159 = getelementptr inbounds float, float* %158, i64 6
  %160 = load float, float* %159, align 4
  %161 = fmul float %157, %160
  %162 = load float, float* %14, align 4
  %163 = load float*, float** %3, align 8
  %164 = getelementptr inbounds float, float* %163, i64 10
  %165 = load float, float* %164, align 4
  %166 = fmul float %162, %165
  %167 = fsub float %161, %166
  %168 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 4
  store float %167, float* %168, align 16
  %169 = load float, float* %13, align 4
  %170 = load float*, float** %3, align 8
  %171 = getelementptr inbounds float, float* %170, i64 10
  %172 = load float, float* %171, align 4
  %173 = fmul float %169, %172
  %174 = load float, float* %15, align 4
  %175 = load float*, float** %3, align 8
  %176 = getelementptr inbounds float, float* %175, i64 2
  %177 = load float, float* %176, align 4
  %178 = fmul float %174, %177
  %179 = fsub float %173, %178
  %180 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 5
  store float %179, float* %180, align 4
  %181 = load float, float* %14, align 4
  %182 = load float*, float** %3, align 8
  %183 = getelementptr inbounds float, float* %182, i64 2
  %184 = load float, float* %183, align 4
  %185 = fmul float %181, %184
  %186 = load float, float* %13, align 4
  %187 = load float*, float** %3, align 8
  %188 = getelementptr inbounds float, float* %187, i64 6
  %189 = load float, float* %188, align 4
  %190 = fmul float %186, %189
  %191 = fsub float %185, %190
  %192 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 6
  store float %191, float* %192, align 8
  %193 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 7
  store float 0.000000e+00, float* %193, align 4
  %194 = load float, float* %13, align 4
  %195 = load float*, float** %3, align 8
  %196 = getelementptr inbounds float, float* %195, i64 5
  %197 = load float, float* %196, align 4
  %198 = fmul float %194, %197
  %199 = load float*, float** %3, align 8
  %200 = getelementptr inbounds float, float* %199, i64 1
  %201 = load float, float* %200, align 4
  %202 = load float, float* %14, align 4
  %203 = fmul float %201, %202
  %204 = fsub float %198, %203
  store float %204, float* %7, align 4
  %205 = load float, float* %13, align 4
  %206 = load float*, float** %3, align 8
  %207 = getelementptr inbounds float, float* %206, i64 9
  %208 = load float, float* %207, align 4
  %209 = fmul float %205, %208
  %210 = load float*, float** %3, align 8
  %211 = getelementptr inbounds float, float* %210, i64 1
  %212 = load float, float* %211, align 4
  %213 = load float, float* %15, align 4
  %214 = fmul float %212, %213
  %215 = fsub float %209, %214
  store float %215, float* %8, align 4
  %216 = load float, float* %14, align 4
  %217 = load float*, float** %3, align 8
  %218 = getelementptr inbounds float, float* %217, i64 9
  %219 = load float, float* %218, align 4
  %220 = fmul float %216, %219
  %221 = load float*, float** %3, align 8
  %222 = getelementptr inbounds float, float* %221, i64 5
  %223 = load float, float* %222, align 4
  %224 = load float, float* %15, align 4
  %225 = fmul float %223, %224
  %226 = fsub float %220, %225
  store float %226, float* %9, align 4
  %227 = load float, float* %14, align 4
  %228 = load float*, float** %3, align 8
  %229 = getelementptr inbounds float, float* %228, i64 13
  %230 = load float, float* %229, align 4
  %231 = fmul float %227, %230
  %232 = load float*, float** %3, align 8
  %233 = getelementptr inbounds float, float* %232, i64 5
  %234 = load float, float* %233, align 4
  %235 = load float, float* %16, align 4
  %236 = fmul float %234, %235
  %237 = fsub float %231, %236
  store float %237, float* %10, align 4
  %238 = load float, float* %15, align 4
  %239 = load float*, float** %3, align 8
  %240 = getelementptr inbounds float, float* %239, i64 13
  %241 = load float, float* %240, align 4
  %242 = fmul float %238, %241
  %243 = load float*, float** %3, align 8
  %244 = getelementptr inbounds float, float* %243, i64 9
  %245 = load float, float* %244, align 4
  %246 = load float, float* %16, align 4
  %247 = fmul float %245, %246
  %248 = fsub float %242, %247
  store float %248, float* %11, align 4
  %249 = load float, float* %16, align 4
  %250 = load float*, float** %3, align 8
  %251 = getelementptr inbounds float, float* %250, i64 1
  %252 = load float, float* %251, align 4
  %253 = fmul float %249, %252
  %254 = load float*, float** %3, align 8
  %255 = getelementptr inbounds float, float* %254, i64 13
  %256 = load float, float* %255, align 4
  %257 = load float, float* %13, align 4
  %258 = fmul float %256, %257
  %259 = fsub float %253, %258
  store float %259, float* %12, align 4
  %260 = load float, float* %9, align 4
  %261 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 8
  store float %260, float* %261, align 16
  %262 = load float, float* %8, align 4
  %263 = fneg float %262
  %264 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 9
  store float %263, float* %264, align 4
  %265 = load float, float* %7, align 4
  %266 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 10
  store float %265, float* %266, align 8
  %267 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 11
  store float 0.000000e+00, float* %267, align 4
  %268 = load float*, float** %3, align 8
  %269 = getelementptr inbounds float, float* %268, i64 6
  %270 = load float, float* %269, align 4
  %271 = load float, float* %11, align 4
  %272 = fmul float %270, %271
  %273 = load float*, float** %3, align 8
  %274 = getelementptr inbounds float, float* %273, i64 10
  %275 = load float, float* %274, align 4
  %276 = load float, float* %10, align 4
  %277 = fmul float %275, %276
  %278 = fsub float %272, %277
  %279 = load float*, float** %3, align 8
  %280 = getelementptr inbounds float, float* %279, i64 14
  %281 = load float, float* %280, align 4
  %282 = load float, float* %9, align 4
  %283 = fmul float %281, %282
  %284 = fadd float %278, %283
  %285 = fneg float %284
  %286 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 12
  store float %285, float* %286, align 16
  %287 = load float*, float** %3, align 8
  %288 = getelementptr inbounds float, float* %287, i64 2
  %289 = load float, float* %288, align 4
  %290 = load float, float* %11, align 4
  %291 = fmul float %289, %290
  %292 = load float*, float** %3, align 8
  %293 = getelementptr inbounds float, float* %292, i64 10
  %294 = load float, float* %293, align 4
  %295 = load float, float* %12, align 4
  %296 = fmul float %294, %295
  %297 = fadd float %291, %296
  %298 = load float*, float** %3, align 8
  %299 = getelementptr inbounds float, float* %298, i64 14
  %300 = load float, float* %299, align 4
  %301 = load float, float* %8, align 4
  %302 = fmul float %300, %301
  %303 = fadd float %297, %302
  %304 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 13
  store float %303, float* %304, align 4
  %305 = load float*, float** %3, align 8
  %306 = getelementptr inbounds float, float* %305, i64 2
  %307 = load float, float* %306, align 4
  %308 = load float, float* %10, align 4
  %309 = fmul float %307, %308
  %310 = load float*, float** %3, align 8
  %311 = getelementptr inbounds float, float* %310, i64 6
  %312 = load float, float* %311, align 4
  %313 = load float, float* %12, align 4
  %314 = fmul float %312, %313
  %315 = fadd float %309, %314
  %316 = load float*, float** %3, align 8
  %317 = getelementptr inbounds float, float* %316, i64 14
  %318 = load float, float* %317, align 4
  %319 = load float, float* %7, align 4
  %320 = fmul float %318, %319
  %321 = fadd float %315, %320
  %322 = fneg float %321
  %323 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 14
  store float %322, float* %323, align 8
  %324 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 15
  store float 1.000000e+00, float* %324, align 4
  %325 = load float*, float** %4, align 8
  %326 = getelementptr inbounds [16 x float], [16 x float]* %6, i64 0, i64 0
  %327 = call i32 @MEMCPY(float* %325, float* %326, i32 64)
  br label %328

328:                                              ; preds = %40, %119, %115
  ret void
}

declare dso_local i32 @invert_matrix_general(float*, float*) #1

declare dso_local i32 @MEMCPY(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
