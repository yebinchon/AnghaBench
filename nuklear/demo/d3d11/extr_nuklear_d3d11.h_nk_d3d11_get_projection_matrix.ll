; ModuleID = '/home/carl/AnghaBench/nuklear/demo/d3d11/extr_nuklear_d3d11.h_nk_d3d11_get_projection_matrix.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/d3d11/extr_nuklear_d3d11.h_nk_d3d11_get_projection_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float*)* @nk_d3d11_get_projection_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_d3d11_get_projection_matrix(i32 %0, i32 %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [4 x [4 x float]], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store float 0.000000e+00, float* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to float
  store float %13, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sitofp i32 %14 to float
  store float %15, float* %10, align 4
  %16 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %11, i64 0, i64 0
  %17 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %18 = load float, float* %8, align 4
  %19 = fsub float %18, 0.000000e+00
  %20 = fdiv float 2.000000e+00, %19
  store float %20, float* %17, align 4
  %21 = getelementptr inbounds float, float* %17, i64 1
  store float 0.000000e+00, float* %21, align 4
  %22 = getelementptr inbounds float, float* %21, i64 1
  store float 0.000000e+00, float* %22, align 4
  %23 = getelementptr inbounds float, float* %22, i64 1
  store float 0.000000e+00, float* %23, align 4
  %24 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 1
  %25 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 0
  store float 0.000000e+00, float* %25, align 4
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %10, align 4
  %28 = fsub float 0.000000e+00, %27
  %29 = fdiv float 2.000000e+00, %28
  store float %29, float* %26, align 4
  %30 = getelementptr inbounds float, float* %26, i64 1
  store float 0.000000e+00, float* %30, align 4
  %31 = getelementptr inbounds float, float* %30, i64 1
  store float 0.000000e+00, float* %31, align 4
  %32 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 1
  %33 = getelementptr inbounds [4 x float], [4 x float]* %32, i64 0, i64 0
  store float 0.000000e+00, float* %33, align 4
  %34 = getelementptr inbounds float, float* %33, i64 1
  store float 0.000000e+00, float* %34, align 4
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 5.000000e-01, float* %35, align 4
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float 0.000000e+00, float* %36, align 4
  %37 = getelementptr inbounds [4 x float], [4 x float]* %32, i64 1
  %38 = getelementptr inbounds [4 x float], [4 x float]* %37, i64 0, i64 0
  %39 = load float, float* %8, align 4
  %40 = fadd float %39, 0.000000e+00
  %41 = load float, float* %8, align 4
  %42 = fsub float 0.000000e+00, %41
  %43 = fdiv float %40, %42
  store float %43, float* %38, align 4
  %44 = getelementptr inbounds float, float* %38, i64 1
  %45 = load float, float* %10, align 4
  %46 = fadd float 0.000000e+00, %45
  %47 = load float, float* %10, align 4
  %48 = fsub float %47, 0.000000e+00
  %49 = fdiv float %46, %48
  store float %49, float* %44, align 4
  %50 = getelementptr inbounds float, float* %44, i64 1
  store float 5.000000e-01, float* %50, align 4
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float 1.000000e+00, float* %51, align 4
  %52 = load float*, float** %6, align 8
  %53 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %11, i64 0, i64 0
  %54 = bitcast [4 x float]* %53 to float**
  %55 = call i32 @memcpy(float* %52, float** %54, i32 64)
  ret void
}

declare dso_local i32 @memcpy(float*, float**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
