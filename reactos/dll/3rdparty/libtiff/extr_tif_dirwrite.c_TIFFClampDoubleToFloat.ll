; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFClampDoubleToFloat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFClampDoubleToFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (double)* @TIFFClampDoubleToFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @TIFFClampDoubleToFloat(double %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = load double, double* @FLT_MAX, align 8
  %6 = fcmp ogt double %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load double, double* @FLT_MAX, align 8
  %9 = fptrunc double %8 to float
  store float %9, float* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = load double, double* @FLT_MAX, align 8
  %13 = fneg double %12
  %14 = fcmp olt double %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load double, double* @FLT_MAX, align 8
  %17 = fneg double %16
  %18 = fptrunc double %17 to float
  store float %18, float* %2, align 4
  br label %22

19:                                               ; preds = %10
  %20 = load double, double* %3, align 8
  %21 = fptrunc double %20 to float
  store float %21, float* %2, align 4
  br label %22

22:                                               ; preds = %19, %15, %7
  %23 = load float, float* %2, align 4
  ret float %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
