; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__normalize.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, float*)* @nvg__normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @nvg__normalize(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %7 = load float*, float** %3, align 8
  %8 = load float, float* %7, align 4
  %9 = load float*, float** %3, align 8
  %10 = load float, float* %9, align 4
  %11 = fmul float %8, %10
  %12 = load float*, float** %4, align 8
  %13 = load float, float* %12, align 4
  %14 = load float*, float** %4, align 8
  %15 = load float, float* %14, align 4
  %16 = fmul float %13, %15
  %17 = fadd float %11, %16
  %18 = call float @nvg__sqrtf(float %17)
  store float %18, float* %5, align 4
  %19 = load float, float* %5, align 4
  %20 = fcmp ogt float %19, 0x3EB0C6F7A0000000
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load float, float* %5, align 4
  %23 = fdiv float 1.000000e+00, %22
  store float %23, float* %6, align 4
  %24 = load float, float* %6, align 4
  %25 = load float*, float** %3, align 8
  %26 = load float, float* %25, align 4
  %27 = fmul float %26, %24
  store float %27, float* %25, align 4
  %28 = load float, float* %6, align 4
  %29 = load float*, float** %4, align 8
  %30 = load float, float* %29, align 4
  %31 = fmul float %30, %28
  store float %31, float* %29, align 4
  br label %32

32:                                               ; preds = %21, %2
  %33 = load float, float* %5, align 4
  ret float %33
}

declare dso_local float @nvg__sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
