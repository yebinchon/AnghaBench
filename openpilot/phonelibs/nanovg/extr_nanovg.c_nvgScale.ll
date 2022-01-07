; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgScale.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgScale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgScale(i32* %0, float %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca [6 x float], align 16
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_3__* @nvg__getState(i32* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = call i32 @nvgTransformScale(float* %11, float %12, float %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %19 = call i32 @nvgTransformPremultiply(i32 %17, float* %18)
  ret void
}

declare dso_local %struct.TYPE_3__* @nvg__getState(i32*) #1

declare dso_local i32 @nvgTransformScale(float*, float, float) #1

declare dso_local i32 @nvgTransformPremultiply(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
