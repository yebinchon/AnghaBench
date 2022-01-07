; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformPremultiply.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformPremultiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgTransformPremultiply(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca [6 x float], align 16
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %6 = getelementptr inbounds [6 x float], [6 x float]* %5, i64 0, i64 0
  %7 = load float*, float** %4, align 8
  %8 = call i32 @memcpy(float* %6, float* %7, i32 24)
  %9 = getelementptr inbounds [6 x float], [6 x float]* %5, i64 0, i64 0
  %10 = load float*, float** %3, align 8
  %11 = call i32 @nvgTransformMultiply(float* %9, float* %10)
  %12 = load float*, float** %3, align 8
  %13 = getelementptr inbounds [6 x float], [6 x float]* %5, i64 0, i64 0
  %14 = call i32 @memcpy(float* %12, float* %13, i32 24)
  ret void
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @nvgTransformMultiply(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
