; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_cubic_bc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_cubic_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, double)* @cubic_bc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @cubic_bc(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double %1, double* %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  store double %19, double* %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load double*, double** %21, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  %24 = load double, double* %23, align 8
  store double %24, double* %7, align 8
  %25 = load double, double* %6, align 8
  %26 = fmul double 2.000000e+00, %25
  %27 = fsub double 6.000000e+00, %26
  %28 = fdiv double %27, 6.000000e+00
  store double %28, double* %8, align 8
  %29 = load double, double* %6, align 8
  %30 = fmul double 1.200000e+01, %29
  %31 = fadd double -1.800000e+01, %30
  %32 = load double, double* %7, align 8
  %33 = fmul double 6.000000e+00, %32
  %34 = fadd double %31, %33
  %35 = fdiv double %34, 6.000000e+00
  store double %35, double* %9, align 8
  %36 = load double, double* %6, align 8
  %37 = fmul double 9.000000e+00, %36
  %38 = fsub double 1.200000e+01, %37
  %39 = load double, double* %7, align 8
  %40 = fmul double 6.000000e+00, %39
  %41 = fsub double %38, %40
  %42 = fdiv double %41, 6.000000e+00
  store double %42, double* %10, align 8
  %43 = load double, double* %6, align 8
  %44 = fmul double 8.000000e+00, %43
  %45 = load double, double* %7, align 8
  %46 = fmul double 2.400000e+01, %45
  %47 = fadd double %44, %46
  %48 = fdiv double %47, 6.000000e+00
  store double %48, double* %11, align 8
  %49 = load double, double* %6, align 8
  %50 = fmul double -1.200000e+01, %49
  %51 = load double, double* %7, align 8
  %52 = fmul double 4.800000e+01, %51
  %53 = fsub double %50, %52
  %54 = fdiv double %53, 6.000000e+00
  store double %54, double* %12, align 8
  %55 = load double, double* %6, align 8
  %56 = fmul double 6.000000e+00, %55
  %57 = load double, double* %7, align 8
  %58 = fmul double 3.000000e+01, %57
  %59 = fadd double %56, %58
  %60 = fdiv double %59, 6.000000e+00
  store double %60, double* %13, align 8
  %61 = load double, double* %6, align 8
  %62 = fneg double %61
  %63 = load double, double* %7, align 8
  %64 = fmul double 6.000000e+00, %63
  %65 = fsub double %62, %64
  %66 = fdiv double %65, 6.000000e+00
  store double %66, double* %14, align 8
  %67 = load double, double* %5, align 8
  %68 = fcmp olt double %67, 1.000000e+00
  br i1 %68, label %69, label %81

69:                                               ; preds = %2
  %70 = load double, double* %8, align 8
  %71 = load double, double* %5, align 8
  %72 = load double, double* %5, align 8
  %73 = fmul double %71, %72
  %74 = load double, double* %9, align 8
  %75 = load double, double* %5, align 8
  %76 = load double, double* %10, align 8
  %77 = fmul double %75, %76
  %78 = fadd double %74, %77
  %79 = fmul double %73, %78
  %80 = fadd double %70, %79
  store double %80, double* %3, align 8
  br label %100

81:                                               ; preds = %2
  %82 = load double, double* %5, align 8
  %83 = fcmp olt double %82, 2.000000e+00
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load double, double* %11, align 8
  %86 = load double, double* %5, align 8
  %87 = load double, double* %12, align 8
  %88 = load double, double* %5, align 8
  %89 = load double, double* %13, align 8
  %90 = load double, double* %5, align 8
  %91 = load double, double* %14, align 8
  %92 = fmul double %90, %91
  %93 = fadd double %89, %92
  %94 = fmul double %88, %93
  %95 = fadd double %87, %94
  %96 = fmul double %86, %95
  %97 = fadd double %85, %96
  store double %97, double* %3, align 8
  br label %100

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98
  store double 0.000000e+00, double* %3, align 8
  br label %100

100:                                              ; preds = %99, %84, %69
  %101 = load double, double* %3, align 8
  ret double %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
