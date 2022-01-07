; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgEllipse.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgEllipse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVG_MOVETO = common dso_local global float 0.000000e+00, align 4
@NVG_BEZIERTO = common dso_local global float 0.000000e+00, align 4
@NVG_KAPPA90 = common dso_local global float 0.000000e+00, align 4
@NVG_CLOSE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgEllipse(i32* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [32 x float], align 16
  store i32* %0, i32** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 0
  %13 = load float, float* @NVG_MOVETO, align 4
  store float %13, float* %12, align 4
  %14 = getelementptr inbounds float, float* %12, i64 1
  %15 = load float, float* %7, align 4
  %16 = load float, float* %9, align 4
  %17 = fsub float %15, %16
  store float %17, float* %14, align 4
  %18 = getelementptr inbounds float, float* %14, i64 1
  %19 = load float, float* %8, align 4
  store float %19, float* %18, align 4
  %20 = getelementptr inbounds float, float* %18, i64 1
  %21 = load float, float* @NVG_BEZIERTO, align 4
  store float %21, float* %20, align 4
  %22 = getelementptr inbounds float, float* %20, i64 1
  %23 = load float, float* %7, align 4
  %24 = load float, float* %9, align 4
  %25 = fsub float %23, %24
  store float %25, float* %22, align 4
  %26 = getelementptr inbounds float, float* %22, i64 1
  %27 = load float, float* %8, align 4
  %28 = load float, float* %10, align 4
  %29 = load float, float* @NVG_KAPPA90, align 4
  %30 = fmul float %28, %29
  %31 = fadd float %27, %30
  store float %31, float* %26, align 4
  %32 = getelementptr inbounds float, float* %26, i64 1
  %33 = load float, float* %7, align 4
  %34 = load float, float* %9, align 4
  %35 = load float, float* @NVG_KAPPA90, align 4
  %36 = fmul float %34, %35
  %37 = fsub float %33, %36
  store float %37, float* %32, align 4
  %38 = getelementptr inbounds float, float* %32, i64 1
  %39 = load float, float* %8, align 4
  %40 = load float, float* %10, align 4
  %41 = fadd float %39, %40
  store float %41, float* %38, align 4
  %42 = getelementptr inbounds float, float* %38, i64 1
  %43 = load float, float* %7, align 4
  store float %43, float* %42, align 4
  %44 = getelementptr inbounds float, float* %42, i64 1
  %45 = load float, float* %8, align 4
  %46 = load float, float* %10, align 4
  %47 = fadd float %45, %46
  store float %47, float* %44, align 4
  %48 = getelementptr inbounds float, float* %44, i64 1
  %49 = load float, float* @NVG_BEZIERTO, align 4
  store float %49, float* %48, align 4
  %50 = getelementptr inbounds float, float* %48, i64 1
  %51 = load float, float* %7, align 4
  %52 = load float, float* %9, align 4
  %53 = load float, float* @NVG_KAPPA90, align 4
  %54 = fmul float %52, %53
  %55 = fadd float %51, %54
  store float %55, float* %50, align 4
  %56 = getelementptr inbounds float, float* %50, i64 1
  %57 = load float, float* %8, align 4
  %58 = load float, float* %10, align 4
  %59 = fadd float %57, %58
  store float %59, float* %56, align 4
  %60 = getelementptr inbounds float, float* %56, i64 1
  %61 = load float, float* %7, align 4
  %62 = load float, float* %9, align 4
  %63 = fadd float %61, %62
  store float %63, float* %60, align 4
  %64 = getelementptr inbounds float, float* %60, i64 1
  %65 = load float, float* %8, align 4
  %66 = load float, float* %10, align 4
  %67 = load float, float* @NVG_KAPPA90, align 4
  %68 = fmul float %66, %67
  %69 = fadd float %65, %68
  store float %69, float* %64, align 4
  %70 = getelementptr inbounds float, float* %64, i64 1
  %71 = load float, float* %7, align 4
  %72 = load float, float* %9, align 4
  %73 = fadd float %71, %72
  store float %73, float* %70, align 4
  %74 = getelementptr inbounds float, float* %70, i64 1
  %75 = load float, float* %8, align 4
  store float %75, float* %74, align 4
  %76 = getelementptr inbounds float, float* %74, i64 1
  %77 = load float, float* @NVG_BEZIERTO, align 4
  store float %77, float* %76, align 4
  %78 = getelementptr inbounds float, float* %76, i64 1
  %79 = load float, float* %7, align 4
  %80 = load float, float* %9, align 4
  %81 = fadd float %79, %80
  store float %81, float* %78, align 4
  %82 = getelementptr inbounds float, float* %78, i64 1
  %83 = load float, float* %8, align 4
  %84 = load float, float* %10, align 4
  %85 = load float, float* @NVG_KAPPA90, align 4
  %86 = fmul float %84, %85
  %87 = fsub float %83, %86
  store float %87, float* %82, align 4
  %88 = getelementptr inbounds float, float* %82, i64 1
  %89 = load float, float* %7, align 4
  %90 = load float, float* %9, align 4
  %91 = load float, float* @NVG_KAPPA90, align 4
  %92 = fmul float %90, %91
  %93 = fadd float %89, %92
  store float %93, float* %88, align 4
  %94 = getelementptr inbounds float, float* %88, i64 1
  %95 = load float, float* %8, align 4
  %96 = load float, float* %10, align 4
  %97 = fsub float %95, %96
  store float %97, float* %94, align 4
  %98 = getelementptr inbounds float, float* %94, i64 1
  %99 = load float, float* %7, align 4
  store float %99, float* %98, align 4
  %100 = getelementptr inbounds float, float* %98, i64 1
  %101 = load float, float* %8, align 4
  %102 = load float, float* %10, align 4
  %103 = fsub float %101, %102
  store float %103, float* %100, align 4
  %104 = getelementptr inbounds float, float* %100, i64 1
  %105 = load float, float* @NVG_BEZIERTO, align 4
  store float %105, float* %104, align 4
  %106 = getelementptr inbounds float, float* %104, i64 1
  %107 = load float, float* %7, align 4
  %108 = load float, float* %9, align 4
  %109 = load float, float* @NVG_KAPPA90, align 4
  %110 = fmul float %108, %109
  %111 = fsub float %107, %110
  store float %111, float* %106, align 4
  %112 = getelementptr inbounds float, float* %106, i64 1
  %113 = load float, float* %8, align 4
  %114 = load float, float* %10, align 4
  %115 = fsub float %113, %114
  store float %115, float* %112, align 4
  %116 = getelementptr inbounds float, float* %112, i64 1
  %117 = load float, float* %7, align 4
  %118 = load float, float* %9, align 4
  %119 = fsub float %117, %118
  store float %119, float* %116, align 4
  %120 = getelementptr inbounds float, float* %116, i64 1
  %121 = load float, float* %8, align 4
  %122 = load float, float* %10, align 4
  %123 = load float, float* @NVG_KAPPA90, align 4
  %124 = fmul float %122, %123
  %125 = fsub float %121, %124
  store float %125, float* %120, align 4
  %126 = getelementptr inbounds float, float* %120, i64 1
  %127 = load float, float* %7, align 4
  %128 = load float, float* %9, align 4
  %129 = fsub float %127, %128
  store float %129, float* %126, align 4
  %130 = getelementptr inbounds float, float* %126, i64 1
  %131 = load float, float* %8, align 4
  store float %131, float* %130, align 4
  %132 = getelementptr inbounds float, float* %130, i64 1
  %133 = load float, float* @NVG_CLOSE, align 4
  store float %133, float* %132, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 0
  %136 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 0
  %137 = call i32 @NVG_COUNTOF(float* %136)
  %138 = call i32 @nvg__appendCommands(i32* %134, float* %135, i32 %137)
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
