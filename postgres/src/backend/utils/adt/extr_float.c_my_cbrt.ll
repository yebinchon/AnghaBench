; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_float.c_my_cbrt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_float.c_my_cbrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @cbrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @cbrt(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = fcmp olt double %6, 0.000000e+00
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load double, double* %2, align 8
  %10 = call double @llvm.fabs.f64(double %9)
  store double %10, double* %4, align 8
  %11 = load double, double* %4, align 8
  %12 = call double @pow(double %11, double 0x3FD5555555555555) #3
  store double %12, double* %5, align 8
  %13 = load double, double* %5, align 8
  %14 = fcmp ogt double %13, 0.000000e+00
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load double, double* %5, align 8
  %17 = load double, double* %4, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* %5, align 8
  %20 = fmul double %18, %19
  %21 = fdiv double %17, %20
  %22 = fsub double %16, %21
  %23 = fdiv double %22, 3.000000e+00
  %24 = load double, double* %5, align 8
  %25 = fsub double %24, %23
  store double %25, double* %5, align 8
  br label %26

26:                                               ; preds = %15, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load double, double* %5, align 8
  %31 = fneg double %30
  br label %34

32:                                               ; preds = %26
  %33 = load double, double* %5, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi double [ %31, %29 ], [ %33, %32 ]
  ret double %35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
