; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_determinant.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_determinant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @matrix4_determinant(%struct.matrix4* %0) #0 {
  %2 = alloca %struct.matrix4*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [9 x float], align 16
  %8 = alloca i32, align 4
  store %struct.matrix4* %0, %struct.matrix4** %2, align 8
  %9 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %10 = bitcast %struct.matrix4* %9 to float*
  store float* %10, float** %3, align 8
  store float 0.000000e+00, float* %5, align 4
  store float 1.000000e+00, float* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = getelementptr inbounds [9 x float], [9 x float]* %7, i64 0, i64 0
  %16 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @get_3x3_submatrix(float* %15, %struct.matrix4* %16, i32 0, i32 %17)
  %19 = getelementptr inbounds [9 x float], [9 x float]* %7, i64 0, i64 0
  %20 = call float @get_3x3_determinant(float* %19)
  store float %20, float* %4, align 4
  %21 = load float*, float** %3, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = load float, float* %24, align 4
  %26 = load float, float* %4, align 4
  %27 = fmul float %25, %26
  %28 = load float, float* %6, align 4
  %29 = fmul float %27, %28
  %30 = load float, float* %5, align 4
  %31 = fadd float %30, %29
  store float %31, float* %5, align 4
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load float, float* %6, align 4
  %36 = fneg float %35
  store float %36, float* %6, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load float, float* %5, align 4
  ret float %38
}

declare dso_local i32 @get_3x3_submatrix(float*, %struct.matrix4*, i32, i32) #1

declare dso_local float @get_3x3_determinant(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
