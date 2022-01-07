; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformMultiply.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformMultiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgTransformMultiply(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %3, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  %13 = load float, float* %12, align 4
  %14 = fmul float %10, %13
  %15 = load float*, float** %3, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  %20 = load float, float* %19, align 4
  %21 = fmul float %17, %20
  %22 = fadd float %14, %21
  store float %22, float* %5, align 4
  %23 = load float*, float** %3, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = fmul float %25, %28
  %30 = load float*, float** %3, align 8
  %31 = getelementptr inbounds float, float* %30, i64 3
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %4, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = load float, float* %34, align 4
  %36 = fmul float %32, %35
  %37 = fadd float %29, %36
  store float %37, float* %6, align 4
  %38 = load float*, float** %3, align 8
  %39 = getelementptr inbounds float, float* %38, i64 4
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %4, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float, float* %42, align 4
  %44 = fmul float %40, %43
  %45 = load float*, float** %3, align 8
  %46 = getelementptr inbounds float, float* %45, i64 5
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %4, align 8
  %49 = getelementptr inbounds float, float* %48, i64 2
  %50 = load float, float* %49, align 4
  %51 = fmul float %47, %50
  %52 = fadd float %44, %51
  %53 = load float*, float** %4, align 8
  %54 = getelementptr inbounds float, float* %53, i64 4
  %55 = load float, float* %54, align 4
  %56 = fadd float %52, %55
  store float %56, float* %7, align 4
  %57 = load float*, float** %3, align 8
  %58 = getelementptr inbounds float, float* %57, i64 0
  %59 = load float, float* %58, align 4
  %60 = load float*, float** %4, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fmul float %59, %62
  %64 = load float*, float** %3, align 8
  %65 = getelementptr inbounds float, float* %64, i64 1
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %4, align 8
  %68 = getelementptr inbounds float, float* %67, i64 3
  %69 = load float, float* %68, align 4
  %70 = fmul float %66, %69
  %71 = fadd float %63, %70
  %72 = load float*, float** %3, align 8
  %73 = getelementptr inbounds float, float* %72, i64 1
  store float %71, float* %73, align 4
  %74 = load float*, float** %3, align 8
  %75 = getelementptr inbounds float, float* %74, i64 2
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %4, align 8
  %78 = getelementptr inbounds float, float* %77, i64 1
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  %81 = load float*, float** %3, align 8
  %82 = getelementptr inbounds float, float* %81, i64 3
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %4, align 8
  %85 = getelementptr inbounds float, float* %84, i64 3
  %86 = load float, float* %85, align 4
  %87 = fmul float %83, %86
  %88 = fadd float %80, %87
  %89 = load float*, float** %3, align 8
  %90 = getelementptr inbounds float, float* %89, i64 3
  store float %88, float* %90, align 4
  %91 = load float*, float** %3, align 8
  %92 = getelementptr inbounds float, float* %91, i64 4
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %4, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  %96 = load float, float* %95, align 4
  %97 = fmul float %93, %96
  %98 = load float*, float** %3, align 8
  %99 = getelementptr inbounds float, float* %98, i64 5
  %100 = load float, float* %99, align 4
  %101 = load float*, float** %4, align 8
  %102 = getelementptr inbounds float, float* %101, i64 3
  %103 = load float, float* %102, align 4
  %104 = fmul float %100, %103
  %105 = fadd float %97, %104
  %106 = load float*, float** %4, align 8
  %107 = getelementptr inbounds float, float* %106, i64 5
  %108 = load float, float* %107, align 4
  %109 = fadd float %105, %108
  %110 = load float*, float** %3, align 8
  %111 = getelementptr inbounds float, float* %110, i64 5
  store float %109, float* %111, align 4
  %112 = load float, float* %5, align 4
  %113 = load float*, float** %3, align 8
  %114 = getelementptr inbounds float, float* %113, i64 0
  store float %112, float* %114, align 4
  %115 = load float, float* %6, align 4
  %116 = load float*, float** %3, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  store float %115, float* %117, align 4
  %118 = load float, float* %7, align 4
  %119 = load float*, float** %3, align 8
  %120 = getelementptr inbounds float, float* %119, i64 4
  store float %118, float* %120, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
