; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__roundCapEnd.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__roundCapEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }

@NVG_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, float, float, float, i32, float)* @nvg__roundCapEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvg__roundCapEnd(i32* %0, %struct.TYPE_3__* %1, float %2, float %3, float %4, i32 %5, float %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store i32 %5, i32* %13, align 4
  store float %6, float* %14, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  store float %25, float* %16, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  store float %28, float* %17, align 4
  %29 = load float, float* %11, align 4
  store float %29, float* %18, align 4
  %30 = load float, float* %10, align 4
  %31 = fneg float %30
  store float %31, float* %19, align 4
  %32 = load float, float* %14, align 4
  %33 = call i32 @NVG_NOTUSED(float %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load float, float* %16, align 4
  %36 = load float, float* %18, align 4
  %37 = load float, float* %12, align 4
  %38 = fmul float %36, %37
  %39 = fadd float %35, %38
  %40 = load float, float* %17, align 4
  %41 = load float, float* %19, align 4
  %42 = load float, float* %12, align 4
  %43 = fmul float %41, %42
  %44 = fadd float %40, %43
  %45 = call i32 @nvg__vset(i32* %34, float %39, float %44, float 0.000000e+00, i32 1)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load float, float* %16, align 4
  %50 = load float, float* %18, align 4
  %51 = load float, float* %12, align 4
  %52 = fmul float %50, %51
  %53 = fsub float %49, %52
  %54 = load float, float* %17, align 4
  %55 = load float, float* %19, align 4
  %56 = load float, float* %12, align 4
  %57 = fmul float %55, %56
  %58 = fsub float %54, %57
  %59 = call i32 @nvg__vset(i32* %48, float %53, float %58, float 1.000000e+00, i32 1)
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %112, %7
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = sitofp i32 %67 to float
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %68, %71
  %73 = load i32, i32* @NVG_PI, align 4
  %74 = sitofp i32 %73 to float
  %75 = fmul float %72, %74
  store float %75, float* %20, align 4
  %76 = load float, float* %20, align 4
  %77 = call float @cosf(float %76) #3
  %78 = load float, float* %12, align 4
  %79 = fmul float %77, %78
  store float %79, float* %21, align 4
  %80 = load float, float* %20, align 4
  %81 = call float @sinf(float %80) #3
  %82 = load float, float* %12, align 4
  %83 = fmul float %81, %82
  store float %83, float* %22, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load float, float* %16, align 4
  %86 = load float, float* %17, align 4
  %87 = call i32 @nvg__vset(i32* %84, float %85, float %86, float 5.000000e-01, i32 1)
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %8, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load float, float* %16, align 4
  %92 = load float, float* %18, align 4
  %93 = load float, float* %21, align 4
  %94 = fmul float %92, %93
  %95 = fsub float %91, %94
  %96 = load float, float* %10, align 4
  %97 = load float, float* %22, align 4
  %98 = fmul float %96, %97
  %99 = fadd float %95, %98
  %100 = load float, float* %17, align 4
  %101 = load float, float* %19, align 4
  %102 = load float, float* %21, align 4
  %103 = fmul float %101, %102
  %104 = fsub float %100, %103
  %105 = load float, float* %11, align 4
  %106 = load float, float* %22, align 4
  %107 = fmul float %105, %106
  %108 = fadd float %104, %107
  %109 = call i32 @nvg__vset(i32* %90, float %99, float %108, float 0.000000e+00, i32 1)
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %8, align 8
  br label %112

112:                                              ; preds = %66
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %62

115:                                              ; preds = %62
  %116 = load i32*, i32** %8, align 8
  ret i32* %116
}

declare dso_local i32 @NVG_NOTUSED(float) #1

declare dso_local i32 @nvg__vset(i32*, float, float, float, i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
