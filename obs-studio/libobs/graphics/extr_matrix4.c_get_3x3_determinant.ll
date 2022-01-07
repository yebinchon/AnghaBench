; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_get_3x3_determinant.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_get_3x3_determinant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*)* @get_3x3_determinant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_3x3_determinant(float* %0) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = getelementptr inbounds float, float* %3, i64 0
  %5 = load float, float* %4, align 4
  %6 = load float*, float** %2, align 8
  %7 = getelementptr inbounds float, float* %6, i64 4
  %8 = load float, float* %7, align 4
  %9 = load float*, float** %2, align 8
  %10 = getelementptr inbounds float, float* %9, i64 8
  %11 = load float, float* %10, align 4
  %12 = fmul float %8, %11
  %13 = load float*, float** %2, align 8
  %14 = getelementptr inbounds float, float* %13, i64 7
  %15 = load float, float* %14, align 4
  %16 = load float*, float** %2, align 8
  %17 = getelementptr inbounds float, float* %16, i64 5
  %18 = load float, float* %17, align 4
  %19 = fmul float %15, %18
  %20 = fsub float %12, %19
  %21 = fmul float %5, %20
  %22 = load float*, float** %2, align 8
  %23 = getelementptr inbounds float, float* %22, i64 1
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %2, align 8
  %26 = getelementptr inbounds float, float* %25, i64 3
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %2, align 8
  %29 = getelementptr inbounds float, float* %28, i64 8
  %30 = load float, float* %29, align 4
  %31 = fmul float %27, %30
  %32 = load float*, float** %2, align 8
  %33 = getelementptr inbounds float, float* %32, i64 6
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %2, align 8
  %36 = getelementptr inbounds float, float* %35, i64 5
  %37 = load float, float* %36, align 4
  %38 = fmul float %34, %37
  %39 = fsub float %31, %38
  %40 = fmul float %24, %39
  %41 = fsub float %21, %40
  %42 = load float*, float** %2, align 8
  %43 = getelementptr inbounds float, float* %42, i64 2
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %2, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %2, align 8
  %49 = getelementptr inbounds float, float* %48, i64 7
  %50 = load float, float* %49, align 4
  %51 = fmul float %47, %50
  %52 = load float*, float** %2, align 8
  %53 = getelementptr inbounds float, float* %52, i64 6
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %2, align 8
  %56 = getelementptr inbounds float, float* %55, i64 4
  %57 = load float, float* %56, align 4
  %58 = fmul float %54, %57
  %59 = fsub float %51, %58
  %60 = fmul float %44, %59
  %61 = fadd float %41, %60
  ret float %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
