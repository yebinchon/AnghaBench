; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_scasum_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_scasum_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float }

@scasum_.i__ = internal global i32 0, align 4
@scasum_.nincx = internal global i32 0, align 4
@scasum_.stemp = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @scasum_(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 -1
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %6, align 8
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* @scasum_.stemp, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %3
  %24 = load float, float* %11, align 4
  store float %24, float* %4, align 4
  br label %119

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %84

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %32, %34
  store i32 %35, i32* @scasum_.nincx, align 4
  %36 = load i32, i32* @scasum_.nincx, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  store i32 1, i32* @scasum_.i__, align 4
  br label %39

39:                                               ; preds = %77, %30
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @scasum_.i__, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %43, %44
  %46 = zext i1 %45 to i32
  br label %52

47:                                               ; preds = %39
  %48 = load i32, i32* @scasum_.i__, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %48, %49
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i32 [ %46, %42 ], [ %51, %47 ]
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load i32, i32* @scasum_.i__, align 4
  store i32 %56, i32* %10, align 4
  %57 = load float, float* @scasum_.stemp, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load float, float* %62, align 4
  store float %63, float* %12, align 4
  %64 = load float, float* %12, align 4
  %65 = call i32 @dabs(float %64)
  %66 = sitofp i32 %65 to float
  %67 = fadd float %57, %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = load i32, i32* @scasum_.i__, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = call float @r_imag(%struct.TYPE_4__* %71)
  store float %72, float* %13, align 4
  %73 = load float, float* %13, align 4
  %74 = call i32 @dabs(float %73)
  %75 = sitofp i32 %74 to float
  %76 = fadd float %67, %75
  store float %76, float* @scasum_.stemp, align 4
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @scasum_.i__, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* @scasum_.i__, align 4
  br label %39

81:                                               ; preds = %52
  %82 = load float, float* @scasum_.stemp, align 4
  store float %82, float* %11, align 4
  %83 = load float, float* %11, align 4
  store float %83, float* %4, align 4
  br label %119

84:                                               ; preds = %29
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  store i32 1, i32* @scasum_.i__, align 4
  br label %87

87:                                               ; preds = %113, %84
  %88 = load i32, i32* @scasum_.i__, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = load i32, i32* @scasum_.i__, align 4
  store i32 %92, i32* %8, align 4
  %93 = load float, float* @scasum_.stemp, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load float, float* %98, align 4
  store float %99, float* %12, align 4
  %100 = load float, float* %12, align 4
  %101 = call i32 @dabs(float %100)
  %102 = sitofp i32 %101 to float
  %103 = fadd float %93, %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = load i32, i32* @scasum_.i__, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = call float @r_imag(%struct.TYPE_4__* %107)
  store float %108, float* %13, align 4
  %109 = load float, float* %13, align 4
  %110 = call i32 @dabs(float %109)
  %111 = sitofp i32 %110 to float
  %112 = fadd float %103, %111
  store float %112, float* @scasum_.stemp, align 4
  br label %113

113:                                              ; preds = %91
  %114 = load i32, i32* @scasum_.i__, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @scasum_.i__, align 4
  br label %87

116:                                              ; preds = %87
  %117 = load float, float* @scasum_.stemp, align 4
  store float %117, float* %11, align 4
  %118 = load float, float* %11, align 4
  store float %118, float* %4, align 4
  br label %119

119:                                              ; preds = %116, %81, %23
  %120 = load float, float* %4, align 4
  ret float %120
}

declare dso_local i32 @dabs(float) #1

declare dso_local float @r_imag(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
