; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgQuadTo.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgQuadTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@NVG_BEZIERTO = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgQuadTo(%struct.TYPE_4__* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [7 x float], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  store float %16, float* %11, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  store float %19, float* %12, align 4
  %20 = getelementptr inbounds [7 x float], [7 x float]* %13, i64 0, i64 0
  %21 = load float, float* @NVG_BEZIERTO, align 4
  store float %21, float* %20, align 4
  %22 = getelementptr inbounds float, float* %20, i64 1
  %23 = load float, float* %11, align 4
  %24 = load float, float* %7, align 4
  %25 = load float, float* %11, align 4
  %26 = fsub float %24, %25
  %27 = fmul float 0x3FE5555560000000, %26
  %28 = fadd float %23, %27
  store float %28, float* %22, align 4
  %29 = getelementptr inbounds float, float* %22, i64 1
  %30 = load float, float* %12, align 4
  %31 = load float, float* %8, align 4
  %32 = load float, float* %12, align 4
  %33 = fsub float %31, %32
  %34 = fmul float 0x3FE5555560000000, %33
  %35 = fadd float %30, %34
  store float %35, float* %29, align 4
  %36 = getelementptr inbounds float, float* %29, i64 1
  %37 = load float, float* %9, align 4
  %38 = load float, float* %7, align 4
  %39 = load float, float* %9, align 4
  %40 = fsub float %38, %39
  %41 = fmul float 0x3FE5555560000000, %40
  %42 = fadd float %37, %41
  store float %42, float* %36, align 4
  %43 = getelementptr inbounds float, float* %36, i64 1
  %44 = load float, float* %10, align 4
  %45 = load float, float* %8, align 4
  %46 = load float, float* %10, align 4
  %47 = fsub float %45, %46
  %48 = fmul float 0x3FE5555560000000, %47
  %49 = fadd float %44, %48
  store float %49, float* %43, align 4
  %50 = getelementptr inbounds float, float* %43, i64 1
  %51 = load float, float* %9, align 4
  store float %51, float* %50, align 4
  %52 = getelementptr inbounds float, float* %50, i64 1
  %53 = load float, float* %10, align 4
  store float %53, float* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds [7 x float], [7 x float]* %13, i64 0, i64 0
  %56 = getelementptr inbounds [7 x float], [7 x float]* %13, i64 0, i64 0
  %57 = call i32 @NVG_COUNTOF(float* %56)
  %58 = call i32 @nvg__appendCommands(%struct.TYPE_4__* %54, float* %55, i32 %57)
  ret void
}

declare dso_local i32 @nvg__appendCommands(%struct.TYPE_4__*, float*, i32) #1

declare dso_local i32 @NVG_COUNTOF(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
