; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_scnrm2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_scnrm2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float }

@scnrm2_.ix = internal global i32 0, align 4
@scnrm2_.ssq = internal global float 0.000000e+00, align 4
@scnrm2_.temp = internal global float 0.000000e+00, align 4
@scnrm2_.norm = internal global float 0.000000e+00, align 4
@scnrm2_.scale = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @scnrm2_(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 -1
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  store float 0.000000e+00, float* @scnrm2_.norm, align 4
  br label %142

22:                                               ; preds = %17
  store float 0.000000e+00, float* @scnrm2_.scale, align 4
  store float 1.000000e+00, float* @scnrm2_.ssq, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %25, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  store i32 1, i32* @scnrm2_.ix, align 4
  br label %32

32:                                               ; preds = %133, %22
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @scnrm2_.ix, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %36, %37
  %39 = zext i1 %38 to i32
  br label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @scnrm2_.ix, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sle i32 %41, %42
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %39, %35 ], [ %44, %40 ]
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %137

48:                                               ; preds = %45
  %49 = load i32, i32* @scnrm2_.ix, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = fcmp une float %55, 0.000000e+00
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = load i32, i32* @scnrm2_.ix, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  store float %64, float* %11, align 4
  %65 = load float, float* %11, align 4
  %66 = call i32 @dabs(float %65)
  %67 = sitofp i32 %66 to float
  store float %67, float* @scnrm2_.temp, align 4
  %68 = load float, float* @scnrm2_.scale, align 4
  %69 = load float, float* @scnrm2_.temp, align 4
  %70 = fcmp olt float %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %57
  %72 = load float, float* @scnrm2_.scale, align 4
  %73 = load float, float* @scnrm2_.temp, align 4
  %74 = fdiv float %72, %73
  store float %74, float* %11, align 4
  %75 = load float, float* @scnrm2_.ssq, align 4
  %76 = load float, float* %11, align 4
  %77 = load float, float* %11, align 4
  %78 = fmul float %76, %77
  %79 = fmul float %75, %78
  %80 = fadd float %79, 1.000000e+00
  store float %80, float* @scnrm2_.ssq, align 4
  %81 = load float, float* @scnrm2_.temp, align 4
  store float %81, float* @scnrm2_.scale, align 4
  br label %91

82:                                               ; preds = %57
  %83 = load float, float* @scnrm2_.temp, align 4
  %84 = load float, float* @scnrm2_.scale, align 4
  %85 = fdiv float %83, %84
  store float %85, float* %11, align 4
  %86 = load float, float* %11, align 4
  %87 = load float, float* %11, align 4
  %88 = fmul float %86, %87
  %89 = load float, float* @scnrm2_.ssq, align 4
  %90 = fadd float %89, %88
  store float %90, float* @scnrm2_.ssq, align 4
  br label %91

91:                                               ; preds = %82, %71
  br label %92

92:                                               ; preds = %91, %48
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = load i32, i32* @scnrm2_.ix, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = call float @r_imag(%struct.TYPE_4__* %96)
  %98 = fcmp une float %97, 0.000000e+00
  br i1 %98, label %99, label %132

99:                                               ; preds = %92
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = load i32, i32* @scnrm2_.ix, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = call float @r_imag(%struct.TYPE_4__* %103)
  store float %104, float* %11, align 4
  %105 = load float, float* %11, align 4
  %106 = call i32 @dabs(float %105)
  %107 = sitofp i32 %106 to float
  store float %107, float* @scnrm2_.temp, align 4
  %108 = load float, float* @scnrm2_.scale, align 4
  %109 = load float, float* @scnrm2_.temp, align 4
  %110 = fcmp olt float %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %99
  %112 = load float, float* @scnrm2_.scale, align 4
  %113 = load float, float* @scnrm2_.temp, align 4
  %114 = fdiv float %112, %113
  store float %114, float* %11, align 4
  %115 = load float, float* @scnrm2_.ssq, align 4
  %116 = load float, float* %11, align 4
  %117 = load float, float* %11, align 4
  %118 = fmul float %116, %117
  %119 = fmul float %115, %118
  %120 = fadd float %119, 1.000000e+00
  store float %120, float* @scnrm2_.ssq, align 4
  %121 = load float, float* @scnrm2_.temp, align 4
  store float %121, float* @scnrm2_.scale, align 4
  br label %131

122:                                              ; preds = %99
  %123 = load float, float* @scnrm2_.temp, align 4
  %124 = load float, float* @scnrm2_.scale, align 4
  %125 = fdiv float %123, %124
  store float %125, float* %11, align 4
  %126 = load float, float* %11, align 4
  %127 = load float, float* %11, align 4
  %128 = fmul float %126, %127
  %129 = load float, float* @scnrm2_.ssq, align 4
  %130 = fadd float %129, %128
  store float %130, float* @scnrm2_.ssq, align 4
  br label %131

131:                                              ; preds = %122, %111
  br label %132

132:                                              ; preds = %131, %92
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @scnrm2_.ix, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* @scnrm2_.ix, align 4
  br label %32

137:                                              ; preds = %45
  %138 = load float, float* @scnrm2_.scale, align 4
  %139 = load float, float* @scnrm2_.ssq, align 4
  %140 = call float @sqrt(float %139)
  %141 = fmul float %138, %140
  store float %141, float* @scnrm2_.norm, align 4
  br label %142

142:                                              ; preds = %137, %21
  %143 = load float, float* @scnrm2_.norm, align 4
  store float %143, float* %10, align 4
  %144 = load float, float* %10, align 4
  ret float %144
}

declare dso_local i32 @dabs(float) #1

declare dso_local float @r_imag(%struct.TYPE_4__*) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
