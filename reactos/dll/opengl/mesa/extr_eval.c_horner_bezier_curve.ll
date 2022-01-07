; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_horner_bezier_curve.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_eval.c_horner_bezier_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double, i32, i32)* @horner_bezier_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @horner_bezier_curve(double* %0, double* %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store double* %0, double** %6, align 8
  store double* %1, double** %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %119

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = load double, double* %8, align 8
  %22 = fsub double 1.000000e+00, %21
  store double %22, double* %11, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %52, %18
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load double, double* %11, align 8
  %29 = load double*, double** %6, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = fmul double %28, %33
  %35 = load i32, i32* %15, align 4
  %36 = sitofp i32 %35 to double
  %37 = load double, double* %8, align 8
  %38 = fmul double %36, %37
  %39 = load double*, double** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %39, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fmul double %38, %45
  %47 = fadd double %34, %46
  %48 = load double*, double** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %47, double* %51, align 8
  br label %52

52:                                               ; preds = %27
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %23

55:                                               ; preds = %23
  store i32 2, i32* %13, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 2, %56
  %58 = load double*, double** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds double, double* %58, i64 %59
  store double* %60, double** %6, align 8
  %61 = load double, double* %8, align 8
  %62 = load double, double* %8, align 8
  %63 = fmul double %61, %62
  store double %63, double* %12, align 8
  br label %64

64:                                               ; preds = %108, %55
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %118

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = mul nsw i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sdiv i32 %75, %74
  store i32 %76, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %104, %68
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %77
  %82 = load double, double* %11, align 8
  %83 = load double*, double** %7, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fmul double %82, %87
  %89 = load i32, i32* %15, align 4
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %12, align 8
  %92 = fmul double %90, %91
  %93 = load double*, double** %6, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fmul double %92, %97
  %99 = fadd double %88, %98
  %100 = load double*, double** %7, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %100, i64 %102
  store double %99, double* %103, align 8
  br label %104

104:                                              ; preds = %81
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %77

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = load double, double* %8, align 8
  %112 = load double, double* %12, align 8
  %113 = fmul double %112, %111
  store double %113, double* %12, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load double*, double** %6, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds double, double* %115, i64 %116
  store double* %117, double** %6, align 8
  br label %64

118:                                              ; preds = %64
  br label %138

119:                                              ; preds = %5
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %134, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load double*, double** %6, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %125, i64 %127
  %129 = load double, double* %128, align 8
  %130 = load double*, double** %7, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %130, i64 %132
  store double %129, double* %133, align 8
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %120

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %137, %118
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
