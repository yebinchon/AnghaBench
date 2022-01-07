; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRoundedRectVarying.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRoundedRectVarying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVG_MOVETO = common dso_local global float 0.000000e+00, align 4
@NVG_LINETO = common dso_local global float 0.000000e+00, align 4
@NVG_BEZIERTO = common dso_local global float 0.000000e+00, align 4
@NVG_KAPPA90 = common dso_local global i32 0, align 4
@NVG_CLOSE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgRoundedRectVarying(i32* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca [44 x float], align 16
  store i32* %0, i32** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %30 = load float, float* %15, align 4
  %31 = fcmp olt float %30, 0x3FB99999A0000000
  br i1 %31, label %32, label %48

32:                                               ; preds = %9
  %33 = load float, float* %16, align 4
  %34 = fcmp olt float %33, 0x3FB99999A0000000
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load float, float* %17, align 4
  %37 = fcmp olt float %36, 0x3FB99999A0000000
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load float, float* %18, align 4
  %40 = fcmp olt float %39, 0x3FB99999A0000000
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = load float, float* %11, align 4
  %44 = load float, float* %12, align 4
  %45 = load float, float* %13, align 4
  %46 = load float, float* %14, align 4
  %47 = call i32 @nvgRect(i32* %42, float %43, float %44, float %45, float %46)
  br label %294

48:                                               ; preds = %38, %35, %32, %9
  %49 = load float, float* %13, align 4
  %50 = call float @nvg__absf(float %49)
  %51 = fmul float %50, 5.000000e-01
  store float %51, float* %19, align 4
  %52 = load float, float* %14, align 4
  %53 = call float @nvg__absf(float %52)
  %54 = fmul float %53, 5.000000e-01
  store float %54, float* %20, align 4
  %55 = load float, float* %18, align 4
  %56 = load float, float* %19, align 4
  %57 = call float @nvg__minf(float %55, float %56)
  %58 = load float, float* %13, align 4
  %59 = call float @nvg__signf(float %58)
  %60 = fmul float %57, %59
  store float %60, float* %21, align 4
  %61 = load float, float* %18, align 4
  %62 = load float, float* %20, align 4
  %63 = call float @nvg__minf(float %61, float %62)
  %64 = load float, float* %14, align 4
  %65 = call float @nvg__signf(float %64)
  %66 = fmul float %63, %65
  store float %66, float* %22, align 4
  %67 = load float, float* %17, align 4
  %68 = load float, float* %19, align 4
  %69 = call float @nvg__minf(float %67, float %68)
  %70 = load float, float* %13, align 4
  %71 = call float @nvg__signf(float %70)
  %72 = fmul float %69, %71
  store float %72, float* %23, align 4
  %73 = load float, float* %17, align 4
  %74 = load float, float* %20, align 4
  %75 = call float @nvg__minf(float %73, float %74)
  %76 = load float, float* %14, align 4
  %77 = call float @nvg__signf(float %76)
  %78 = fmul float %75, %77
  store float %78, float* %24, align 4
  %79 = load float, float* %16, align 4
  %80 = load float, float* %19, align 4
  %81 = call float @nvg__minf(float %79, float %80)
  %82 = load float, float* %13, align 4
  %83 = call float @nvg__signf(float %82)
  %84 = fmul float %81, %83
  store float %84, float* %25, align 4
  %85 = load float, float* %16, align 4
  %86 = load float, float* %20, align 4
  %87 = call float @nvg__minf(float %85, float %86)
  %88 = load float, float* %14, align 4
  %89 = call float @nvg__signf(float %88)
  %90 = fmul float %87, %89
  store float %90, float* %26, align 4
  %91 = load float, float* %15, align 4
  %92 = load float, float* %19, align 4
  %93 = call float @nvg__minf(float %91, float %92)
  %94 = load float, float* %13, align 4
  %95 = call float @nvg__signf(float %94)
  %96 = fmul float %93, %95
  store float %96, float* %27, align 4
  %97 = load float, float* %15, align 4
  %98 = load float, float* %20, align 4
  %99 = call float @nvg__minf(float %97, float %98)
  %100 = load float, float* %14, align 4
  %101 = call float @nvg__signf(float %100)
  %102 = fmul float %99, %101
  store float %102, float* %28, align 4
  %103 = getelementptr inbounds [44 x float], [44 x float]* %29, i64 0, i64 0
  %104 = load float, float* @NVG_MOVETO, align 4
  store float %104, float* %103, align 4
  %105 = getelementptr inbounds float, float* %103, i64 1
  %106 = load float, float* %11, align 4
  store float %106, float* %105, align 4
  %107 = getelementptr inbounds float, float* %105, i64 1
  %108 = load float, float* %12, align 4
  %109 = load float, float* %28, align 4
  %110 = fadd float %108, %109
  store float %110, float* %107, align 4
  %111 = getelementptr inbounds float, float* %107, i64 1
  %112 = load float, float* @NVG_LINETO, align 4
  store float %112, float* %111, align 4
  %113 = getelementptr inbounds float, float* %111, i64 1
  %114 = load float, float* %11, align 4
  store float %114, float* %113, align 4
  %115 = getelementptr inbounds float, float* %113, i64 1
  %116 = load float, float* %12, align 4
  %117 = load float, float* %14, align 4
  %118 = fadd float %116, %117
  %119 = load float, float* %22, align 4
  %120 = fsub float %118, %119
  store float %120, float* %115, align 4
  %121 = getelementptr inbounds float, float* %115, i64 1
  %122 = load float, float* @NVG_BEZIERTO, align 4
  store float %122, float* %121, align 4
  %123 = getelementptr inbounds float, float* %121, i64 1
  %124 = load float, float* %11, align 4
  store float %124, float* %123, align 4
  %125 = getelementptr inbounds float, float* %123, i64 1
  %126 = load float, float* %12, align 4
  %127 = load float, float* %14, align 4
  %128 = fadd float %126, %127
  %129 = load float, float* %22, align 4
  %130 = load i32, i32* @NVG_KAPPA90, align 4
  %131 = sub nsw i32 1, %130
  %132 = sitofp i32 %131 to float
  %133 = fmul float %129, %132
  %134 = fsub float %128, %133
  store float %134, float* %125, align 4
  %135 = getelementptr inbounds float, float* %125, i64 1
  %136 = load float, float* %11, align 4
  %137 = load float, float* %21, align 4
  %138 = load i32, i32* @NVG_KAPPA90, align 4
  %139 = sub nsw i32 1, %138
  %140 = sitofp i32 %139 to float
  %141 = fmul float %137, %140
  %142 = fadd float %136, %141
  store float %142, float* %135, align 4
  %143 = getelementptr inbounds float, float* %135, i64 1
  %144 = load float, float* %12, align 4
  %145 = load float, float* %14, align 4
  %146 = fadd float %144, %145
  store float %146, float* %143, align 4
  %147 = getelementptr inbounds float, float* %143, i64 1
  %148 = load float, float* %11, align 4
  %149 = load float, float* %21, align 4
  %150 = fadd float %148, %149
  store float %150, float* %147, align 4
  %151 = getelementptr inbounds float, float* %147, i64 1
  %152 = load float, float* %12, align 4
  %153 = load float, float* %14, align 4
  %154 = fadd float %152, %153
  store float %154, float* %151, align 4
  %155 = getelementptr inbounds float, float* %151, i64 1
  %156 = load float, float* @NVG_LINETO, align 4
  store float %156, float* %155, align 4
  %157 = getelementptr inbounds float, float* %155, i64 1
  %158 = load float, float* %11, align 4
  %159 = load float, float* %13, align 4
  %160 = fadd float %158, %159
  %161 = load float, float* %23, align 4
  %162 = fsub float %160, %161
  store float %162, float* %157, align 4
  %163 = getelementptr inbounds float, float* %157, i64 1
  %164 = load float, float* %12, align 4
  %165 = load float, float* %14, align 4
  %166 = fadd float %164, %165
  store float %166, float* %163, align 4
  %167 = getelementptr inbounds float, float* %163, i64 1
  %168 = load float, float* @NVG_BEZIERTO, align 4
  store float %168, float* %167, align 4
  %169 = getelementptr inbounds float, float* %167, i64 1
  %170 = load float, float* %11, align 4
  %171 = load float, float* %13, align 4
  %172 = fadd float %170, %171
  %173 = load float, float* %23, align 4
  %174 = load i32, i32* @NVG_KAPPA90, align 4
  %175 = sub nsw i32 1, %174
  %176 = sitofp i32 %175 to float
  %177 = fmul float %173, %176
  %178 = fsub float %172, %177
  store float %178, float* %169, align 4
  %179 = getelementptr inbounds float, float* %169, i64 1
  %180 = load float, float* %12, align 4
  %181 = load float, float* %14, align 4
  %182 = fadd float %180, %181
  store float %182, float* %179, align 4
  %183 = getelementptr inbounds float, float* %179, i64 1
  %184 = load float, float* %11, align 4
  %185 = load float, float* %13, align 4
  %186 = fadd float %184, %185
  store float %186, float* %183, align 4
  %187 = getelementptr inbounds float, float* %183, i64 1
  %188 = load float, float* %12, align 4
  %189 = load float, float* %14, align 4
  %190 = fadd float %188, %189
  %191 = load float, float* %24, align 4
  %192 = load i32, i32* @NVG_KAPPA90, align 4
  %193 = sub nsw i32 1, %192
  %194 = sitofp i32 %193 to float
  %195 = fmul float %191, %194
  %196 = fsub float %190, %195
  store float %196, float* %187, align 4
  %197 = getelementptr inbounds float, float* %187, i64 1
  %198 = load float, float* %11, align 4
  %199 = load float, float* %13, align 4
  %200 = fadd float %198, %199
  store float %200, float* %197, align 4
  %201 = getelementptr inbounds float, float* %197, i64 1
  %202 = load float, float* %12, align 4
  %203 = load float, float* %14, align 4
  %204 = fadd float %202, %203
  %205 = load float, float* %24, align 4
  %206 = fsub float %204, %205
  store float %206, float* %201, align 4
  %207 = getelementptr inbounds float, float* %201, i64 1
  %208 = load float, float* @NVG_LINETO, align 4
  store float %208, float* %207, align 4
  %209 = getelementptr inbounds float, float* %207, i64 1
  %210 = load float, float* %11, align 4
  %211 = load float, float* %13, align 4
  %212 = fadd float %210, %211
  store float %212, float* %209, align 4
  %213 = getelementptr inbounds float, float* %209, i64 1
  %214 = load float, float* %12, align 4
  %215 = load float, float* %26, align 4
  %216 = fadd float %214, %215
  store float %216, float* %213, align 4
  %217 = getelementptr inbounds float, float* %213, i64 1
  %218 = load float, float* @NVG_BEZIERTO, align 4
  store float %218, float* %217, align 4
  %219 = getelementptr inbounds float, float* %217, i64 1
  %220 = load float, float* %11, align 4
  %221 = load float, float* %13, align 4
  %222 = fadd float %220, %221
  store float %222, float* %219, align 4
  %223 = getelementptr inbounds float, float* %219, i64 1
  %224 = load float, float* %12, align 4
  %225 = load float, float* %26, align 4
  %226 = load i32, i32* @NVG_KAPPA90, align 4
  %227 = sub nsw i32 1, %226
  %228 = sitofp i32 %227 to float
  %229 = fmul float %225, %228
  %230 = fadd float %224, %229
  store float %230, float* %223, align 4
  %231 = getelementptr inbounds float, float* %223, i64 1
  %232 = load float, float* %11, align 4
  %233 = load float, float* %13, align 4
  %234 = fadd float %232, %233
  %235 = load float, float* %25, align 4
  %236 = load i32, i32* @NVG_KAPPA90, align 4
  %237 = sub nsw i32 1, %236
  %238 = sitofp i32 %237 to float
  %239 = fmul float %235, %238
  %240 = fsub float %234, %239
  store float %240, float* %231, align 4
  %241 = getelementptr inbounds float, float* %231, i64 1
  %242 = load float, float* %12, align 4
  store float %242, float* %241, align 4
  %243 = getelementptr inbounds float, float* %241, i64 1
  %244 = load float, float* %11, align 4
  %245 = load float, float* %13, align 4
  %246 = fadd float %244, %245
  %247 = load float, float* %25, align 4
  %248 = fsub float %246, %247
  store float %248, float* %243, align 4
  %249 = getelementptr inbounds float, float* %243, i64 1
  %250 = load float, float* %12, align 4
  store float %250, float* %249, align 4
  %251 = getelementptr inbounds float, float* %249, i64 1
  %252 = load float, float* @NVG_LINETO, align 4
  store float %252, float* %251, align 4
  %253 = getelementptr inbounds float, float* %251, i64 1
  %254 = load float, float* %11, align 4
  %255 = load float, float* %27, align 4
  %256 = fadd float %254, %255
  store float %256, float* %253, align 4
  %257 = getelementptr inbounds float, float* %253, i64 1
  %258 = load float, float* %12, align 4
  store float %258, float* %257, align 4
  %259 = getelementptr inbounds float, float* %257, i64 1
  %260 = load float, float* @NVG_BEZIERTO, align 4
  store float %260, float* %259, align 4
  %261 = getelementptr inbounds float, float* %259, i64 1
  %262 = load float, float* %11, align 4
  %263 = load float, float* %27, align 4
  %264 = load i32, i32* @NVG_KAPPA90, align 4
  %265 = sub nsw i32 1, %264
  %266 = sitofp i32 %265 to float
  %267 = fmul float %263, %266
  %268 = fadd float %262, %267
  store float %268, float* %261, align 4
  %269 = getelementptr inbounds float, float* %261, i64 1
  %270 = load float, float* %12, align 4
  store float %270, float* %269, align 4
  %271 = getelementptr inbounds float, float* %269, i64 1
  %272 = load float, float* %11, align 4
  store float %272, float* %271, align 4
  %273 = getelementptr inbounds float, float* %271, i64 1
  %274 = load float, float* %12, align 4
  %275 = load float, float* %28, align 4
  %276 = load i32, i32* @NVG_KAPPA90, align 4
  %277 = sub nsw i32 1, %276
  %278 = sitofp i32 %277 to float
  %279 = fmul float %275, %278
  %280 = fadd float %274, %279
  store float %280, float* %273, align 4
  %281 = getelementptr inbounds float, float* %273, i64 1
  %282 = load float, float* %11, align 4
  store float %282, float* %281, align 4
  %283 = getelementptr inbounds float, float* %281, i64 1
  %284 = load float, float* %12, align 4
  %285 = load float, float* %28, align 4
  %286 = fadd float %284, %285
  store float %286, float* %283, align 4
  %287 = getelementptr inbounds float, float* %283, i64 1
  %288 = load float, float* @NVG_CLOSE, align 4
  store float %288, float* %287, align 4
  %289 = load i32*, i32** %10, align 8
  %290 = getelementptr inbounds [44 x float], [44 x float]* %29, i64 0, i64 0
  %291 = getelementptr inbounds [44 x float], [44 x float]* %29, i64 0, i64 0
  %292 = call i32 @NVG_COUNTOF(float* %291)
  %293 = call i32 @nvg__appendCommands(i32* %289, float* %290, i32 %292)
  br label %294

294:                                              ; preds = %41, %48
  ret void
}

declare dso_local i32 @nvgRect(i32*, float, float, float, float) #1

declare dso_local float @nvg__absf(float) #1

declare dso_local float @nvg__minf(float, float) #1

declare dso_local float @nvg__signf(float) #1

declare dso_local i32 @nvg__appendCommands(i32*, float*, i32) #1

declare dso_local i32 @NVG_COUNTOF(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
