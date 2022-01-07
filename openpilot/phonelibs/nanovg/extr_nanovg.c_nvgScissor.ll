; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgScissor.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgScissor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgScissor(i32* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_5__* @nvg__getState(i32* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %11, align 8
  %14 = load float, float* %9, align 4
  %15 = call float @nvg__maxf(float 0.000000e+00, float %14)
  store float %15, float* %9, align 4
  %16 = load float, float* %10, align 4
  %17 = call float @nvg__maxf(float 0.000000e+00, float %16)
  store float %17, float* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load float*, float** %20, align 8
  %22 = call i32 @nvgTransformIdentity(float* %21)
  %23 = load float, float* %7, align 4
  %24 = load float, float* %9, align 4
  %25 = fmul float %24, 5.000000e-01
  %26 = fadd float %23, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 4
  store float %26, float* %31, align 4
  %32 = load float, float* %8, align 4
  %33 = load float, float* %10, align 4
  %34 = fmul float %33, 5.000000e-01
  %35 = fadd float %32, %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 5
  store float %35, float* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load float*, float** %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @nvgTransformMultiply(float* %44, i32 %47)
  %49 = load float, float* %9, align 4
  %50 = fmul float %49, 5.000000e-01
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  store float %50, float* %55, align 4
  %56 = load float, float* %10, align 4
  %57 = fmul float %56, 5.000000e-01
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load float*, float** %60, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  store float %57, float* %62, align 4
  ret void
}

declare dso_local %struct.TYPE_5__* @nvg__getState(i32*) #1

declare dso_local float @nvg__maxf(float, float) #1

declare dso_local i32 @nvgTransformIdentity(float*) #1

declare dso_local i32 @nvgTransformMultiply(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
