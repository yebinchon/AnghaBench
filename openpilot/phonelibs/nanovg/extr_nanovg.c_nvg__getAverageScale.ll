; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__getAverageScale.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__getAverageScale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*)* @nvg__getAverageScale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @nvg__getAverageScale(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float* %0, float** %2, align 8
  %5 = load float*, float** %2, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %2, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = fmul float %7, %10
  %12 = load float*, float** %2, align 8
  %13 = getelementptr inbounds float, float* %12, i64 2
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %2, align 8
  %16 = getelementptr inbounds float, float* %15, i64 2
  %17 = load float, float* %16, align 4
  %18 = fmul float %14, %17
  %19 = fadd float %11, %18
  %20 = call float @sqrtf(float %19) #2
  store float %20, float* %3, align 4
  %21 = load float*, float** %2, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %2, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = fmul float %23, %26
  %28 = load float*, float** %2, align 8
  %29 = getelementptr inbounds float, float* %28, i64 3
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %2, align 8
  %32 = getelementptr inbounds float, float* %31, i64 3
  %33 = load float, float* %32, align 4
  %34 = fmul float %30, %33
  %35 = fadd float %27, %34
  %36 = call float @sqrtf(float %35) #2
  store float %36, float* %4, align 4
  %37 = load float, float* %3, align 4
  %38 = load float, float* %4, align 4
  %39 = fadd float %37, %38
  %40 = fmul float %39, 5.000000e-01
  ret float %40
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
