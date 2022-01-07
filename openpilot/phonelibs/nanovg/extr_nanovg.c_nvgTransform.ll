; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransform.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgTransform(i32* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca [6 x float], align 16
  store i32* %0, i32** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.TYPE_3__* @nvg__getState(i32* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %15, align 8
  %19 = getelementptr inbounds [6 x float], [6 x float]* %16, i64 0, i64 0
  %20 = load float, float* %9, align 4
  store float %20, float* %19, align 4
  %21 = getelementptr inbounds float, float* %19, i64 1
  %22 = load float, float* %10, align 4
  store float %22, float* %21, align 4
  %23 = getelementptr inbounds float, float* %21, i64 1
  %24 = load float, float* %11, align 4
  store float %24, float* %23, align 4
  %25 = getelementptr inbounds float, float* %23, i64 1
  %26 = load float, float* %12, align 4
  store float %26, float* %25, align 4
  %27 = getelementptr inbounds float, float* %25, i64 1
  %28 = load float, float* %13, align 4
  store float %28, float* %27, align 4
  %29 = getelementptr inbounds float, float* %27, i64 1
  %30 = load float, float* %14, align 4
  store float %30, float* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [6 x float], [6 x float]* %16, i64 0, i64 0
  %35 = call i32 @nvgTransformPremultiply(i32 %33, float* %34)
  ret void
}

declare dso_local %struct.TYPE_3__* @nvg__getState(i32*) #1

declare dso_local i32 @nvgTransformPremultiply(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
