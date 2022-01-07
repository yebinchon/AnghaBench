; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgIntersectScissor.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgIntersectScissor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgIntersectScissor(i32* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca [6 x float], align 16
  %13 = alloca [6 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.TYPE_5__* @nvg__getState(i32* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %11, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  %26 = load float, float* %25, align 4
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32*, i32** %6, align 8
  %30 = load float, float* %7, align 4
  %31 = load float, float* %8, align 4
  %32 = load float, float* %9, align 4
  %33 = load float, float* %10, align 4
  %34 = call i32 @nvgScissor(i32* %29, float %30, float %31, float %32, float %33)
  br label %112

35:                                               ; preds = %5
  %36 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(float* %36, i32 %40, i32 24)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  %47 = load float, float* %46, align 4
  store float %47, float* %15, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  store float %53, float* %16, align 4
  %54 = getelementptr inbounds [6 x float], [6 x float]* %13, i64 0, i64 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @nvgTransformInverse(float* %54, i32 %57)
  %59 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 0
  %60 = getelementptr inbounds [6 x float], [6 x float]* %13, i64 0, i64 0
  %61 = call i32 @nvgTransformMultiply(float* %59, float* %60)
  %62 = load float, float* %15, align 4
  %63 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 0
  %64 = load float, float* %63, align 16
  %65 = call float @nvg__absf(float %64)
  %66 = fmul float %62, %65
  %67 = load float, float* %16, align 4
  %68 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 2
  %69 = load float, float* %68, align 8
  %70 = call float @nvg__absf(float %69)
  %71 = fmul float %67, %70
  %72 = fadd float %66, %71
  store float %72, float* %17, align 4
  %73 = load float, float* %15, align 4
  %74 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 1
  %75 = load float, float* %74, align 4
  %76 = call float @nvg__absf(float %75)
  %77 = fmul float %73, %76
  %78 = load float, float* %16, align 4
  %79 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 3
  %80 = load float, float* %79, align 4
  %81 = call float @nvg__absf(float %80)
  %82 = fmul float %78, %81
  %83 = fadd float %77, %82
  store float %83, float* %18, align 4
  %84 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %85 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 4
  %86 = load float, float* %85, align 16
  %87 = load float, float* %17, align 4
  %88 = fsub float %86, %87
  %89 = getelementptr inbounds [6 x float], [6 x float]* %12, i64 0, i64 5
  %90 = load float, float* %89, align 4
  %91 = load float, float* %18, align 4
  %92 = fsub float %90, %91
  %93 = load float, float* %17, align 4
  %94 = fmul float %93, 2.000000e+00
  %95 = load float, float* %18, align 4
  %96 = fmul float %95, 2.000000e+00
  %97 = load float, float* %7, align 4
  %98 = load float, float* %8, align 4
  %99 = load float, float* %9, align 4
  %100 = load float, float* %10, align 4
  %101 = call i32 @nvg__isectRects(float* %84, float %88, float %92, float %94, float %96, float %97, float %98, float %99, float %100)
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %104 = load float, float* %103, align 16
  %105 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 1
  %106 = load float, float* %105, align 4
  %107 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  %108 = load float, float* %107, align 8
  %109 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %110 = load float, float* %109, align 4
  %111 = call i32 @nvgScissor(i32* %102, float %104, float %106, float %108, float %110)
  br label %112

112:                                              ; preds = %35, %28
  ret void
}

declare dso_local %struct.TYPE_5__* @nvg__getState(i32*) #1

declare dso_local i32 @nvgScissor(i32*, float, float, float, float) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

declare dso_local i32 @nvgTransformInverse(float*, i32) #1

declare dso_local i32 @nvgTransformMultiply(float*, float*) #1

declare dso_local float @nvg__absf(float) #1

declare dso_local i32 @nvg__isectRects(float*, float, float, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
