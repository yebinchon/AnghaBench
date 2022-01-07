; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slassq_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slassq_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slassq_.ix = internal global i32 0, align 4
@slassq_.absxi = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slassq_(i32* %0, float* %1, i32* %2, float* %3, float* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store float* %1, float** %7, align 8
  store i32* %2, i32** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %14 = load float*, float** %7, align 8
  %15 = getelementptr inbounds float, float* %14, i32 -1
  store float* %15, float** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %22, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 1, i32* @slassq_.ix, align 4
  br label %29

29:                                               ; preds = %93, %19
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @slassq_.ix, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @slassq_.ix, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sle i32 %38, %39
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i32 [ %36, %32 ], [ %41, %37 ]
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load float*, float** %7, align 8
  %47 = load i32, i32* @slassq_.ix, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fcmp une float %50, 0.000000e+00
  br i1 %51, label %52, label %92

52:                                               ; preds = %45
  %53 = load float*, float** %7, align 8
  %54 = load i32, i32* @slassq_.ix, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  store float %57, float* %13, align 4
  %58 = load float, float* %13, align 4
  %59 = call i32 @dabs(float %58)
  %60 = sitofp i32 %59 to float
  store float %60, float* @slassq_.absxi, align 4
  %61 = load float*, float** %9, align 8
  %62 = load float, float* %61, align 4
  %63 = load float, float* @slassq_.absxi, align 4
  %64 = fcmp olt float %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %52
  %66 = load float*, float** %9, align 8
  %67 = load float, float* %66, align 4
  %68 = load float, float* @slassq_.absxi, align 4
  %69 = fdiv float %67, %68
  store float %69, float* %13, align 4
  %70 = load float*, float** %10, align 8
  %71 = load float, float* %70, align 4
  %72 = load float, float* %13, align 4
  %73 = load float, float* %13, align 4
  %74 = fmul float %72, %73
  %75 = fmul float %71, %74
  %76 = fadd float %75, 1.000000e+00
  %77 = load float*, float** %10, align 8
  store float %76, float* %77, align 4
  %78 = load float, float* @slassq_.absxi, align 4
  %79 = load float*, float** %9, align 8
  store float %78, float* %79, align 4
  br label %91

80:                                               ; preds = %52
  %81 = load float, float* @slassq_.absxi, align 4
  %82 = load float*, float** %9, align 8
  %83 = load float, float* %82, align 4
  %84 = fdiv float %81, %83
  store float %84, float* %13, align 4
  %85 = load float, float* %13, align 4
  %86 = load float, float* %13, align 4
  %87 = fmul float %85, %86
  %88 = load float*, float** %10, align 8
  %89 = load float, float* %88, align 4
  %90 = fadd float %89, %87
  store float %90, float* %88, align 4
  br label %91

91:                                               ; preds = %80, %65
  br label %92

92:                                               ; preds = %91, %45
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @slassq_.ix, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* @slassq_.ix, align 4
  br label %29

97:                                               ; preds = %42
  br label %98

98:                                               ; preds = %97, %5
  ret i32 0
}

declare dso_local i32 @dabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
