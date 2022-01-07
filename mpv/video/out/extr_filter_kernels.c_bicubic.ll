; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_bicubic.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_bicubic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double)* @bicubic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @bicubic(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = fadd double %5, 2.000000e+00
  %7 = call i32 @POW3(double %6)
  %8 = load double, double* %4, align 8
  %9 = fadd double %8, 1.000000e+00
  %10 = call i32 @POW3(double %9)
  %11 = mul nsw i32 4, %10
  %12 = sub nsw i32 %7, %11
  %13 = load double, double* %4, align 8
  %14 = call i32 @POW3(double %13)
  %15 = mul nsw i32 6, %14
  %16 = add nsw i32 %12, %15
  %17 = load double, double* %4, align 8
  %18 = fsub double %17, 1.000000e+00
  %19 = call i32 @POW3(double %18)
  %20 = mul nsw i32 4, %19
  %21 = sub nsw i32 %16, %20
  %22 = sitofp i32 %21 to double
  %23 = fmul double 0x3FC5555555555555, %22
  ret double %23
}

declare dso_local i32 @POW3(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
