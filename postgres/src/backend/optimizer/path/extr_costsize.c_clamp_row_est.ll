; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_clamp_row_est.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_clamp_row_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @clamp_row_est(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fcmp ole double %3, 1.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store double 1.000000e+00, double* %2, align 8
  br label %9

6:                                                ; preds = %1
  %7 = load double, double* %2, align 8
  %8 = call double @llvm.rint.f64(double %7)
  store double %8, double* %2, align 8
  br label %9

9:                                                ; preds = %6, %5
  %10 = load double, double* %2, align 8
  ret double %10
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
