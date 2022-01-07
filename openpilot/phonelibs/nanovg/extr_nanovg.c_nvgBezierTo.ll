; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgBezierTo.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgBezierTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVG_BEZIERTO = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgBezierTo(i32* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [7 x float], align 16
  store i32* %0, i32** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %16 = getelementptr inbounds [7 x float], [7 x float]* %15, i64 0, i64 0
  %17 = load float, float* @NVG_BEZIERTO, align 4
  store float %17, float* %16, align 4
  %18 = getelementptr inbounds float, float* %16, i64 1
  %19 = load float, float* %9, align 4
  store float %19, float* %18, align 4
  %20 = getelementptr inbounds float, float* %18, i64 1
  %21 = load float, float* %10, align 4
  store float %21, float* %20, align 4
  %22 = getelementptr inbounds float, float* %20, i64 1
  %23 = load float, float* %11, align 4
  store float %23, float* %22, align 4
  %24 = getelementptr inbounds float, float* %22, i64 1
  %25 = load float, float* %12, align 4
  store float %25, float* %24, align 4
  %26 = getelementptr inbounds float, float* %24, i64 1
  %27 = load float, float* %13, align 4
  store float %27, float* %26, align 4
  %28 = getelementptr inbounds float, float* %26, i64 1
  %29 = load float, float* %14, align 4
  store float %29, float* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [7 x float], [7 x float]* %15, i64 0, i64 0
  %32 = getelementptr inbounds [7 x float], [7 x float]* %15, i64 0, i64 0
  %33 = call i32 @NVG_COUNTOF(float* %32)
  %34 = call i32 @nvg__appendCommands(i32* %30, float* %31, i32 %33)
  ret void
}

declare dso_local i32 @nvg__appendCommands(i32*, float*, i32) #1

declare dso_local i32 @NVG_COUNTOF(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
