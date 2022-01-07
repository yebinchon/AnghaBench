; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__buttCapEnd.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__buttCapEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, float, float, float, float, float)* @nvg__buttCapEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvg__buttCapEnd(i32* %0, %struct.TYPE_3__* %1, float %2, float %3, float %4, float %5, float %6) #0 {
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
  %25 = fadd float %21, %24
  store float %25, float* %15, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = load float, float* %11, align 4
  %30 = load float, float* %13, align 4
  %31 = fmul float %29, %30
  %32 = fadd float %28, %31
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
  %42 = load float, float* %16, align 4
  %43 = load float, float* %18, align 4
  %44 = load float, float* %12, align 4
  %45 = fmul float %43, %44
  %46 = fadd float %42, %45
  %47 = call i32 @nvg__vset(i32* %36, float %41, float %46, i32 0, i32 1)
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load float, float* %15, align 4
  %52 = load float, float* %17, align 4
  %53 = load float, float* %12, align 4
  %54 = fmul float %52, %53
  %55 = fsub float %51, %54
  %56 = load float, float* %16, align 4
  %57 = load float, float* %18, align 4
  %58 = load float, float* %12, align 4
  %59 = fmul float %57, %58
  %60 = fsub float %56, %59
  %61 = call i32 @nvg__vset(i32* %50, float %55, float %60, i32 1, i32 1)
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load float, float* %15, align 4
  %66 = load float, float* %17, align 4
  %67 = load float, float* %12, align 4
  %68 = fmul float %66, %67
  %69 = fadd float %65, %68
  %70 = load float, float* %10, align 4
  %71 = load float, float* %14, align 4
  %72 = fmul float %70, %71
  %73 = fadd float %69, %72
  %74 = load float, float* %16, align 4
  %75 = load float, float* %18, align 4
  %76 = load float, float* %12, align 4
  %77 = fmul float %75, %76
  %78 = fadd float %74, %77
  %79 = load float, float* %11, align 4
  %80 = load float, float* %14, align 4
  %81 = fmul float %79, %80
  %82 = fadd float %78, %81
  %83 = call i32 @nvg__vset(i32* %64, float %73, float %82, i32 0, i32 0)
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load float, float* %15, align 4
  %88 = load float, float* %17, align 4
  %89 = load float, float* %12, align 4
  %90 = fmul float %88, %89
  %91 = fsub float %87, %90
  %92 = load float, float* %10, align 4
  %93 = load float, float* %14, align 4
  %94 = fmul float %92, %93
  %95 = fadd float %91, %94
  %96 = load float, float* %16, align 4
  %97 = load float, float* %18, align 4
  %98 = load float, float* %12, align 4
  %99 = fmul float %97, %98
  %100 = fsub float %96, %99
  %101 = load float, float* %11, align 4
  %102 = load float, float* %14, align 4
  %103 = fmul float %101, %102
  %104 = fadd float %100, %103
  %105 = call i32 @nvg__vset(i32* %86, float %95, float %104, i32 1, i32 0)
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
