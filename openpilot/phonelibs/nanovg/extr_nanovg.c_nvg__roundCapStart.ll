; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__roundCapStart.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__roundCapStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }

@NVG_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, float, float, float, i32, float)* @nvg__roundCapStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvg__roundCapStart(i32* %0, %struct.TYPE_3__* %1, float %2, float %3, float %4, i32 %5, float %6) #0 {
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
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %84, %7
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = sitofp i32 %39 to float
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %40, %43
  %45 = load i32, i32* @NVG_PI, align 4
  %46 = sitofp i32 %45 to float
  %47 = fmul float %44, %46
  store float %47, float* %20, align 4
  %48 = load float, float* %20, align 4
  %49 = call float @cosf(float %48) #3
  %50 = load float, float* %12, align 4
  %51 = fmul float %49, %50
  store float %51, float* %21, align 4
  %52 = load float, float* %20, align 4
  %53 = call float @sinf(float %52) #3
  %54 = load float, float* %12, align 4
  %55 = fmul float %53, %54
  store float %55, float* %22, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load float, float* %16, align 4
  %58 = load float, float* %18, align 4
  %59 = load float, float* %21, align 4
  %60 = fmul float %58, %59
  %61 = fsub float %57, %60
  %62 = load float, float* %10, align 4
  %63 = load float, float* %22, align 4
  %64 = fmul float %62, %63
  %65 = fsub float %61, %64
  %66 = load float, float* %17, align 4
  %67 = load float, float* %19, align 4
  %68 = load float, float* %21, align 4
  %69 = fmul float %67, %68
  %70 = fsub float %66, %69
  %71 = load float, float* %11, align 4
  %72 = load float, float* %22, align 4
  %73 = fmul float %71, %72
  %74 = fsub float %70, %73
  %75 = call i32 @nvg__vset(i32* %56, float %65, float %74, i32 0, i32 1)
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load float, float* %16, align 4
  %80 = load float, float* %17, align 4
  %81 = call i32 @nvg__vset(i32* %78, float %79, float %80, i32 0, i32 1)
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %8, align 8
  br label %84

84:                                               ; preds = %38
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %34

87:                                               ; preds = %34
  %88 = load i32*, i32** %8, align 8
  %89 = load float, float* %16, align 4
  %90 = load float, float* %18, align 4
  %91 = load float, float* %12, align 4
  %92 = fmul float %90, %91
  %93 = fadd float %89, %92
  %94 = load float, float* %17, align 4
  %95 = load float, float* %19, align 4
  %96 = load float, float* %12, align 4
  %97 = fmul float %95, %96
  %98 = fadd float %94, %97
  %99 = call i32 @nvg__vset(i32* %88, float %93, float %98, i32 0, i32 1)
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load float, float* %16, align 4
  %104 = load float, float* %18, align 4
  %105 = load float, float* %12, align 4
  %106 = fmul float %104, %105
  %107 = fsub float %103, %106
  %108 = load float, float* %17, align 4
  %109 = load float, float* %19, align 4
  %110 = load float, float* %12, align 4
  %111 = fmul float %109, %110
  %112 = fsub float %108, %111
  %113 = call i32 @nvg__vset(i32* %102, float %107, float %112, i32 1, i32 1)
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %8, align 8
  %116 = load i32*, i32** %8, align 8
  ret i32* %116
}

declare dso_local i32 @NVG_NOTUSED(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

declare dso_local i32 @nvg__vset(i32*, float, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
