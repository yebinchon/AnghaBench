; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgImagePattern.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgImagePattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float*, float*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgImagePattern(%struct.TYPE_4__* noalias sret %0, i32* %1, float %2, float %3, float %4, float %5, float %6, i32 %7, float %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store i32* %1, i32** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  store float %8, float* %17, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @NVG_NOTUSED(i32* %18)
  %20 = call i32 @memset(%struct.TYPE_4__* %0, i32 0, i32 32)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  %23 = load float, float* %15, align 4
  %24 = call i32 @nvgTransformRotate(float* %22, float %23)
  %25 = load float, float* %11, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = getelementptr inbounds float, float* %27, i64 4
  store float %25, float* %28, align 4
  %29 = load float, float* %12, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 5
  store float %29, float* %32, align 4
  %33 = load float, float* %13, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  store float %33, float* %36, align 4
  %37 = load float, float* %14, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  store float %37, float* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load float, float* %17, align 4
  %44 = call i32 @nvgRGBAf(i32 1, i32 1, i32 1, float %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i32 @NVG_NOTUSED(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @nvgTransformRotate(float*, float) #1

declare dso_local i32 @nvgRGBAf(i32, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
