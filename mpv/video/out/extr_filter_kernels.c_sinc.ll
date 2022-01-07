; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_sinc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_sinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double)* @sinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sinc(i32* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  %6 = load double, double* %5, align 8
  %7 = call i32 @fabs(double %6)
  %8 = sitofp i32 %7 to double
  %9 = fcmp olt double %8, 1.000000e-08
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store double 1.000000e+00, double* %3, align 8
  br label %19

11:                                               ; preds = %2
  %12 = load double, double* @M_PI, align 8
  %13 = load double, double* %5, align 8
  %14 = fmul double %13, %12
  store double %14, double* %5, align 8
  %15 = load double, double* %5, align 8
  %16 = call double @sin(double %15) #3
  %17 = load double, double* %5, align 8
  %18 = fdiv double %16, %17
  store double %18, double* %3, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load double, double* %3, align 8
  ret double %20
}

declare dso_local i32 @fabs(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
