; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__isectRects.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__isectRects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float, float, float, float, float, float, float, float)* @nvg__isectRects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvg__isectRects(float* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca float*, align 8
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
  store float* %0, float** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %23 = load float, float* %11, align 4
  %24 = load float, float* %15, align 4
  %25 = call float @nvg__maxf(float %23, float %24)
  store float %25, float* %19, align 4
  %26 = load float, float* %12, align 4
  %27 = load float, float* %16, align 4
  %28 = call float @nvg__maxf(float %26, float %27)
  store float %28, float* %20, align 4
  %29 = load float, float* %11, align 4
  %30 = load float, float* %13, align 4
  %31 = fadd float %29, %30
  %32 = load float, float* %15, align 4
  %33 = load float, float* %17, align 4
  %34 = fadd float %32, %33
  %35 = call float @nvg__minf(float %31, float %34)
  store float %35, float* %21, align 4
  %36 = load float, float* %12, align 4
  %37 = load float, float* %14, align 4
  %38 = fadd float %36, %37
  %39 = load float, float* %16, align 4
  %40 = load float, float* %18, align 4
  %41 = fadd float %39, %40
  %42 = call float @nvg__minf(float %38, float %41)
  store float %42, float* %22, align 4
  %43 = load float, float* %19, align 4
  %44 = load float*, float** %10, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  store float %43, float* %45, align 4
  %46 = load float, float* %20, align 4
  %47 = load float*, float** %10, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  store float %46, float* %48, align 4
  %49 = load float, float* %21, align 4
  %50 = load float, float* %19, align 4
  %51 = fsub float %49, %50
  %52 = call float @nvg__maxf(float 0.000000e+00, float %51)
  %53 = load float*, float** %10, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  store float %52, float* %54, align 4
  %55 = load float, float* %22, align 4
  %56 = load float, float* %20, align 4
  %57 = fsub float %55, %56
  %58 = call float @nvg__maxf(float 0.000000e+00, float %57)
  %59 = load float*, float** %10, align 8
  %60 = getelementptr inbounds float, float* %59, i64 3
  store float %58, float* %60, align 4
  ret void
}

declare dso_local float @nvg__maxf(float, float) #1

declare dso_local float @nvg__minf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
