; ModuleID = '/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_get_projection_matrix.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/d3d9/extr_nuklear_d3d9.h_nk_d3d9_get_projection_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float*)* @nk_d3d9_get_projection_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_d3d9_get_projection_matrix(i32 %0, i32 %1, float* %2) #0 {
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
  store float 5.000000e-01, float* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to float
  %14 = fadd float %13, 5.000000e-01
  store float %14, float* %8, align 4
  store float 5.000000e-01, float* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sitofp i32 %15 to float
  %17 = fadd float %16, 5.000000e-01
  store float %17, float* %10, align 4
  %18 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %11, i64 0, i64 0
  %19 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  %20 = load float, float* %8, align 4
  %21 = fsub float %20, 5.000000e-01
  %22 = fdiv float 2.000000e+00, %21
  store float %22, float* %19, align 4
  %23 = getelementptr inbounds float, float* %19, i64 1
  store float 0.000000e+00, float* %23, align 4
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds float, float* %24, i64 1
  store float 0.000000e+00, float* %25, align 4
  %26 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 1
  %27 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 0
  store float 0.000000e+00, float* %27, align 4
  %28 = getelementptr inbounds float, float* %27, i64 1
  %29 = load float, float* %10, align 4
  %30 = fsub float 5.000000e-01, %29
  %31 = fdiv float 2.000000e+00, %30
  store float %31, float* %28, align 4
  %32 = getelementptr inbounds float, float* %28, i64 1
  store float 0.000000e+00, float* %32, align 4
  %33 = getelementptr inbounds float, float* %32, i64 1
  store float 0.000000e+00, float* %33, align 4
  %34 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 1
  %35 = getelementptr inbounds [4 x float], [4 x float]* %34, i64 0, i64 0
  store float 0.000000e+00, float* %35, align 4
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float 0.000000e+00, float* %36, align 4
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float 0.000000e+00, float* %37, align 4
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float 0.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds [4 x float], [4 x float]* %34, i64 1
  %40 = getelementptr inbounds [4 x float], [4 x float]* %39, i64 0, i64 0
  %41 = load float, float* %8, align 4
  %42 = fadd float %41, 5.000000e-01
  %43 = load float, float* %8, align 4
  %44 = fsub float 5.000000e-01, %43
  %45 = fdiv float %42, %44
  store float %45, float* %40, align 4
  %46 = getelementptr inbounds float, float* %40, i64 1
  %47 = load float, float* %10, align 4
  %48 = fadd float 5.000000e-01, %47
  %49 = load float, float* %10, align 4
  %50 = fsub float %49, 5.000000e-01
  %51 = fdiv float %48, %50
  store float %51, float* %46, align 4
  %52 = getelementptr inbounds float, float* %46, i64 1
  store float 0.000000e+00, float* %52, align 4
  %53 = getelementptr inbounds float, float* %52, i64 1
  store float 1.000000e+00, float* %53, align 4
  %54 = load float*, float** %6, align 8
  %55 = getelementptr inbounds [4 x [4 x float]], [4 x [4 x float]]* %11, i64 0, i64 0
  %56 = bitcast [4 x float]* %55 to float**
  %57 = call i32 @memcpy(float* %54, float** %56, i32 64)
  ret void
}

declare dso_local i32 @memcpy(float*, float**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
