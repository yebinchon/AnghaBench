; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_mcelem_array_contained_selec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_mcelem_array_contained_selec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_CONTAIN_SEL = common dso_local global float 0.000000e+00, align 4
@float_compare_desc = common dso_local global i32 0, align 4
@EFFORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, i32, float*, i32, i32*, i32, float*, i32, i32, i32*)* @mcelem_array_contained_selec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @mcelem_array_contained_selec(i32* %0, i32 %1, float* %2, i32 %3, i32* %4, i32 %5, float* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store float* %2, float** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store float* %6, float** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %24, align 4
  %39 = load float*, float** %14, align 8
  %40 = icmp eq float* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %10
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 3
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %10
  %47 = load float, float* @DEFAULT_CONTAIN_SEL, align 4
  store float %47, float* %11, align 4
  br label %310

48:                                               ; preds = %41
  %49 = load float*, float** %18, align 8
  %50 = icmp eq float* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %19, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %48
  %55 = load float, float* @DEFAULT_CONTAIN_SEL, align 4
  store float %55, float* %11, align 4
  br label %310

56:                                               ; preds = %51
  %57 = load float*, float** %14, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  store float %61, float* %26, align 4
  %62 = load float*, float** %14, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %62, i64 %65
  %67 = load float, float* %66, align 4
  store float %67, float* %27, align 4
  %68 = load float*, float** %18, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  store float %73, float* %31, align 4
  %74 = load float, float* %31, align 4
  store float %74, float* %33, align 4
  store float 1.000000e+00, float* %32, align 4
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i64 @palloc(i32 %78)
  %80 = inttoptr i64 %79 to float*
  store float* %80, float** %34, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %81

81:                                               ; preds = %178, %56
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %181

85:                                               ; preds = %81
  store i32 0, i32* %35, align 4
  %86 = load i32, i32* %23, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* %23, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32*, i32** %21, align 8
  %99 = call i32 @element_compare(i32* %93, i32* %97, i32* %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %178

102:                                              ; preds = %88, %85
  br label %103

103:                                              ; preds = %143, %102
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %22, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %23, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32*, i32** %21, align 8
  %117 = call i32 @element_compare(i32* %111, i32* %115, i32* %116)
  store i32 %117, i32* %36, align 4
  %118 = load i32, i32* %36, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %107
  %121 = load float*, float** %14, align 8
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  %125 = load float, float* %124, align 4
  %126 = fsub float 1.000000e+00, %125
  %127 = load float, float* %32, align 4
  %128 = fmul float %127, %126
  store float %128, float* %32, align 4
  %129 = load float*, float** %14, align 8
  %130 = load i32, i32* %22, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float, float* %33, align 4
  %135 = fsub float %134, %133
  store float %135, float* %33, align 4
  %136 = load i32, i32* %22, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %22, align 4
  br label %143

138:                                              ; preds = %107
  %139 = load i32, i32* %36, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* %35, align 4
  br label %142

142:                                              ; preds = %141, %138
  br label %144

143:                                              ; preds = %120
  br label %103

144:                                              ; preds = %142, %103
  %145 = load i32, i32* %35, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %144
  %148 = load float*, float** %14, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %34, align 8
  %154 = load i32, i32* %24, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  store float %152, float* %156, align 4
  %157 = load float*, float** %14, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  %161 = load float, float* %160, align 4
  %162 = load float, float* %33, align 4
  %163 = fsub float %162, %161
  store float %163, float* %33, align 4
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %22, align 4
  br label %175

166:                                              ; preds = %144
  %167 = load float, float* @DEFAULT_CONTAIN_SEL, align 4
  %168 = load float, float* %26, align 4
  %169 = fdiv float %168, 2.000000e+00
  %170 = call float @Min(float %167, float %169)
  %171 = load float*, float** %34, align 8
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  store float %170, float* %174, align 4
  br label %175

175:                                              ; preds = %166, %147
  %176 = load i32, i32* %24, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %24, align 4
  br label %178

178:                                              ; preds = %175, %101
  %179 = load i32, i32* %23, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %23, align 4
  br label %81

181:                                              ; preds = %81
  br label %182

182:                                              ; preds = %186, %181
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %182
  %187 = load float*, float** %14, align 8
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fsub float 1.000000e+00, %191
  %193 = load float, float* %32, align 4
  %194 = fmul float %193, %192
  store float %194, float* %32, align 4
  %195 = load float*, float** %14, align 8
  %196 = load i32, i32* %22, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  %199 = load float, float* %198, align 4
  %200 = load float, float* %33, align 4
  %201 = fsub float %200, %199
  store float %201, float* %33, align 4
  %202 = load i32, i32* %22, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %22, align 4
  br label %182

204:                                              ; preds = %182
  %205 = load float, float* %33, align 4
  %206 = fneg float %205
  %207 = call float @exp(float %206)
  %208 = load float, float* %32, align 4
  %209 = fmul float %208, %207
  store float %209, float* %32, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %24, align 4
  %212 = add nsw i32 %210, %211
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %242

214:                                              ; preds = %204
  %215 = load i32, i32* %24, align 4
  %216 = load i32, i32* %13, align 4
  %217 = mul nsw i32 100, %216
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %24, align 4
  %220 = add nsw i32 %218, %219
  %221 = sdiv i32 %217, %220
  %222 = icmp sgt i32 %215, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %214
  %224 = load i32, i32* %13, align 4
  %225 = sitofp i32 %224 to double
  store double %225, double* %37, align 8
  %226 = load double, double* %37, align 8
  %227 = load double, double* %37, align 8
  %228 = fmul double %226, %227
  %229 = load double, double* %37, align 8
  %230 = fmul double 4.000000e+02, %229
  %231 = fadd double %228, %230
  %232 = call double @sqrt(double %231) #3
  %233 = load double, double* %37, align 8
  %234 = fsub double %232, %233
  %235 = fdiv double %234, 2.000000e+00
  %236 = fptosi double %235 to i32
  store i32 %236, i32* %38, align 4
  %237 = load float*, float** %34, align 8
  %238 = load i32, i32* %24, align 4
  %239 = load i32, i32* @float_compare_desc, align 4
  %240 = call i32 @qsort(float* %237, i32 %238, i32 4, i32 %239)
  %241 = load i32, i32* %38, align 4
  store i32 %241, i32* %24, align 4
  br label %242

242:                                              ; preds = %223, %214, %204
  %243 = load float*, float** %34, align 8
  %244 = load i32, i32* %24, align 4
  %245 = load i32, i32* %24, align 4
  %246 = call float* @calc_distr(float* %243, i32 %244, i32 %245, float 0.000000e+00)
  store float* %246, float** %28, align 8
  %247 = load float*, float** %14, align 8
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* %24, align 4
  %250 = load float, float* %33, align 4
  %251 = call float* @calc_distr(float* %247, i32 %248, i32 %249, float %250)
  store float* %251, float** %29, align 8
  %252 = load float*, float** %18, align 8
  %253 = load i32, i32* %19, align 4
  %254 = sub nsw i32 %253, 1
  %255 = load i32, i32* %24, align 4
  %256 = call float* @calc_hist(float* %252, i32 %254, i32 %255)
  store float* %256, float** %30, align 8
  store float 0.000000e+00, float* %25, align 4
  store i32 0, i32* %23, align 4
  br label %257

257:                                              ; preds = %291, %242
  %258 = load i32, i32* %23, align 4
  %259 = load i32, i32* %24, align 4
  %260 = icmp sle i32 %258, %259
  br i1 %260, label %261, label %294

261:                                              ; preds = %257
  %262 = load float*, float** %29, align 8
  %263 = load i32, i32* %23, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = fcmp ogt float %266, 0.000000e+00
  br i1 %267, label %268, label %290

268:                                              ; preds = %261
  %269 = load float*, float** %30, align 8
  %270 = load i32, i32* %23, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %269, i64 %271
  %273 = load float, float* %272, align 4
  %274 = load float, float* %32, align 4
  %275 = fmul float %273, %274
  %276 = load float*, float** %28, align 8
  %277 = load i32, i32* %23, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %276, i64 %278
  %280 = load float, float* %279, align 4
  %281 = fmul float %275, %280
  %282 = load float*, float** %29, align 8
  %283 = load i32, i32* %23, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %282, i64 %284
  %286 = load float, float* %285, align 4
  %287 = fdiv float %281, %286
  %288 = load float, float* %25, align 4
  %289 = fadd float %288, %287
  store float %289, float* %25, align 4
  br label %290

290:                                              ; preds = %268, %261
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %23, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %23, align 4
  br label %257

294:                                              ; preds = %257
  %295 = load float*, float** %28, align 8
  %296 = call i32 @pfree(float* %295)
  %297 = load float*, float** %29, align 8
  %298 = call i32 @pfree(float* %297)
  %299 = load float*, float** %30, align 8
  %300 = call i32 @pfree(float* %299)
  %301 = load float*, float** %34, align 8
  %302 = call i32 @pfree(float* %301)
  %303 = load float, float* %27, align 4
  %304 = fsub float 1.000000e+00, %303
  %305 = load float, float* %25, align 4
  %306 = fmul float %305, %304
  store float %306, float* %25, align 4
  %307 = load float, float* %25, align 4
  %308 = call i32 @CLAMP_PROBABILITY(float %307)
  %309 = load float, float* %25, align 4
  store float %309, float* %11, align 4
  br label %310

310:                                              ; preds = %294, %54, %46
  %311 = load float, float* %11, align 4
  ret float %311
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @element_compare(i32*, i32*, i32*) #1

declare dso_local float @Min(float, float) #1

declare dso_local float @exp(float) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @qsort(float*, i32, i32, i32) #1

declare dso_local float* @calc_distr(float*, i32, i32, float) #1

declare dso_local float* @calc_hist(float*, i32, i32) #1

declare dso_local i32 @pfree(float*) #1

declare dso_local i32 @CLAMP_PROBABILITY(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
