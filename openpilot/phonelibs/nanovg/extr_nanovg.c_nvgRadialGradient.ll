; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRadialGradient.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRadialGradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float*, float*, float, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgRadialGradient(%struct.TYPE_4__* noalias sret %0, i32* %1, float %2, float %3, float %4, float %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32* %1, i32** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i8* %6, i8** %14, align 8
  store i8* %7, i8** %15, align 8
  %18 = load float, float* %12, align 4
  %19 = load float, float* %13, align 4
  %20 = fadd float %18, %19
  %21 = fmul float %20, 5.000000e-01
  store float %21, float* %16, align 4
  %22 = load float, float* %13, align 4
  %23 = load float, float* %12, align 4
  %24 = fsub float %22, %23
  store float %24, float* %17, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @NVG_NOTUSED(i32* %25)
  %27 = call i32 @memset(%struct.TYPE_4__* %0, i32 0, i32 48)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %29 = load float*, float** %28, align 8
  %30 = call i32 @nvgTransformIdentity(float* %29)
  %31 = load float, float* %10, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 4
  store float %31, float* %34, align 4
  %35 = load float, float* %11, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 5
  store float %35, float* %38, align 4
  %39 = load float, float* %16, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  store float %39, float* %42, align 4
  %43 = load float, float* %16, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  store float %43, float* %46, align 4
  %47 = load float, float* %16, align 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store float %47, float* %48, align 8
  %49 = load float, float* %17, align 4
  %50 = call i32 @nvg__maxf(float 1.000000e+00, float %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  store i32 %50, i32* %51, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  ret void
}

declare dso_local i32 @NVG_NOTUSED(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @nvgTransformIdentity(float*) #1

declare dso_local i32 @nvg__maxf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
