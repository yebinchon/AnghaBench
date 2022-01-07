; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__buttCapStart.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__buttCapStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, float, float, float, float, float)* @nvg__buttCapStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvg__buttCapStart(i32* %0, %struct.TYPE_3__* %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load float, float* %10, align 4
  %23 = load float, float* %13, align 4
  %24 = fmul float %22, %23
  %25 = fsub float %21, %24
  store float %25, float* %15, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = load float, float* %11, align 4
  %30 = load float, float* %13, align 4
  %31 = fmul float %29, %30
  %32 = fsub float %28, %31
  store float %32, float* %16, align 4
  %33 = load float, float* %11, align 4
  store float %33, float* %17, align 4
  %34 = load float, float* %10, align 4
  %35 = fneg float %34
  store float %35, float* %18, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load float, float* %15, align 4
  %38 = load float, float* %17, align 4
  %39 = load float, float* %12, align 4
  %40 = fmul float %38, %39
  %41 = fadd float %37, %40
  %42 = load float, float* %10, align 4
  %43 = load float, float* %14, align 4
  %44 = fmul float %42, %43
  %45 = fsub float %41, %44
  %46 = load float, float* %16, align 4
  %47 = load float, float* %18, align 4
  %48 = load float, float* %12, align 4
  %49 = fmul float %47, %48
  %50 = fadd float %46, %49
  %51 = load float, float* %11, align 4
  %52 = load float, float* %14, align 4
  %53 = fmul float %51, %52
  %54 = fsub float %50, %53
  %55 = call i32 @nvg__vset(i32* %36, float %45, float %54, i32 0, i32 0)
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load float, float* %15, align 4
  %60 = load float, float* %17, align 4
  %61 = load float, float* %12, align 4
  %62 = fmul float %60, %61
  %63 = fsub float %59, %62
  %64 = load float, float* %10, align 4
  %65 = load float, float* %14, align 4
  %66 = fmul float %64, %65
  %67 = fsub float %63, %66
  %68 = load float, float* %16, align 4
  %69 = load float, float* %18, align 4
  %70 = load float, float* %12, align 4
  %71 = fmul float %69, %70
  %72 = fsub float %68, %71
  %73 = load float, float* %11, align 4
  %74 = load float, float* %14, align 4
  %75 = fmul float %73, %74
  %76 = fsub float %72, %75
  %77 = call i32 @nvg__vset(i32* %58, float %67, float %76, i32 1, i32 0)
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load float, float* %15, align 4
  %82 = load float, float* %17, align 4
  %83 = load float, float* %12, align 4
  %84 = fmul float %82, %83
  %85 = fadd float %81, %84
  %86 = load float, float* %16, align 4
  %87 = load float, float* %18, align 4
  %88 = load float, float* %12, align 4
  %89 = fmul float %87, %88
  %90 = fadd float %86, %89
  %91 = call i32 @nvg__vset(i32* %80, float %85, float %90, i32 0, i32 1)
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load float, float* %15, align 4
  %96 = load float, float* %17, align 4
  %97 = load float, float* %12, align 4
  %98 = fmul float %96, %97
  %99 = fsub float %95, %98
  %100 = load float, float* %16, align 4
  %101 = load float, float* %18, align 4
  %102 = load float, float* %12, align 4
  %103 = fmul float %101, %102
  %104 = fsub float %100, %103
  %105 = call i32 @nvg__vset(i32* %94, float %99, float %104, i32 1, i32 1)
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %8, align 8
  %108 = load i32*, i32** %8, align 8
  ret i32* %108
}

declare dso_local i32 @nvg__vset(i32*, float, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
