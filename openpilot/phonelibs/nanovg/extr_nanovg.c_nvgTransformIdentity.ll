; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformIdentity.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgTransformIdentity(float* %0) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = getelementptr inbounds float, float* %3, i64 0
  store float 1.000000e+00, float* %4, align 4
  %5 = load float*, float** %2, align 8
  %6 = getelementptr inbounds float, float* %5, i64 1
  store float 0.000000e+00, float* %6, align 4
  %7 = load float*, float** %2, align 8
  %8 = getelementptr inbounds float, float* %7, i64 2
  store float 0.000000e+00, float* %8, align 4
  %9 = load float*, float** %2, align 8
  %10 = getelementptr inbounds float, float* %9, i64 3
  store float 1.000000e+00, float* %10, align 4
  %11 = load float*, float** %2, align 8
  %12 = getelementptr inbounds float, float* %11, i64 4
  store float 0.000000e+00, float* %12, align 4
  %13 = load float*, float** %2, align 8
  %14 = getelementptr inbounds float, float* %13, i64 5
  store float 0.000000e+00, float* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
