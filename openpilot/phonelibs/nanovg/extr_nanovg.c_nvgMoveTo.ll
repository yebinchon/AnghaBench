; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgMoveTo.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgMoveTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVG_MOVETO = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgMoveTo(i32* %0, float %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %9 = load float, float* @NVG_MOVETO, align 4
  store float %9, float* %8, align 4
  %10 = getelementptr inbounds float, float* %8, i64 1
  %11 = load float, float* %5, align 4
  store float %11, float* %10, align 4
  %12 = getelementptr inbounds float, float* %10, i64 1
  %13 = load float, float* %6, align 4
  store float %13, float* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %17 = call i32 @NVG_COUNTOF(float* %16)
  %18 = call i32 @nvg__appendCommands(i32* %14, float* %15, i32 %17)
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
