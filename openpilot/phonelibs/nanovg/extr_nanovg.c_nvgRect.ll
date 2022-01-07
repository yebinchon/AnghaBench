; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRect.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVG_MOVETO = common dso_local global float 0.000000e+00, align 4
@NVG_LINETO = common dso_local global float 0.000000e+00, align 4
@NVG_CLOSE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgRect(i32* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [13 x float], align 16
  store i32* %0, i32** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = getelementptr inbounds [13 x float], [13 x float]* %11, i64 0, i64 0
  %13 = load float, float* @NVG_MOVETO, align 4
  store float %13, float* %12, align 4
  %14 = getelementptr inbounds float, float* %12, i64 1
  %15 = load float, float* %7, align 4
  store float %15, float* %14, align 4
  %16 = getelementptr inbounds float, float* %14, i64 1
  %17 = load float, float* %8, align 4
  store float %17, float* %16, align 4
  %18 = getelementptr inbounds float, float* %16, i64 1
  %19 = load float, float* @NVG_LINETO, align 4
  store float %19, float* %18, align 4
  %20 = getelementptr inbounds float, float* %18, i64 1
  %21 = load float, float* %7, align 4
  store float %21, float* %20, align 4
  %22 = getelementptr inbounds float, float* %20, i64 1
  %23 = load float, float* %8, align 4
  %24 = load float, float* %10, align 4
  %25 = fadd float %23, %24
  store float %25, float* %22, align 4
  %26 = getelementptr inbounds float, float* %22, i64 1
  %27 = load float, float* @NVG_LINETO, align 4
  store float %27, float* %26, align 4
  %28 = getelementptr inbounds float, float* %26, i64 1
  %29 = load float, float* %7, align 4
  %30 = load float, float* %9, align 4
  %31 = fadd float %29, %30
  store float %31, float* %28, align 4
  %32 = getelementptr inbounds float, float* %28, i64 1
  %33 = load float, float* %8, align 4
  %34 = load float, float* %10, align 4
  %35 = fadd float %33, %34
  store float %35, float* %32, align 4
  %36 = getelementptr inbounds float, float* %32, i64 1
  %37 = load float, float* @NVG_LINETO, align 4
  store float %37, float* %36, align 4
  %38 = getelementptr inbounds float, float* %36, i64 1
  %39 = load float, float* %7, align 4
  %40 = load float, float* %9, align 4
  %41 = fadd float %39, %40
  store float %41, float* %38, align 4
  %42 = getelementptr inbounds float, float* %38, i64 1
  %43 = load float, float* %8, align 4
  store float %43, float* %42, align 4
  %44 = getelementptr inbounds float, float* %42, i64 1
  %45 = load float, float* @NVG_CLOSE, align 4
  store float %45, float* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds [13 x float], [13 x float]* %11, i64 0, i64 0
  %48 = getelementptr inbounds [13 x float], [13 x float]* %11, i64 0, i64 0
  %49 = call i32 @NVG_COUNTOF(float* %48)
  %50 = call i32 @nvg__appendCommands(i32* %46, float* %47, i32 %49)
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
