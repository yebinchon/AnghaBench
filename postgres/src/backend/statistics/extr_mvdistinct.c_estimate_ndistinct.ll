; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mvdistinct.c_estimate_ndistinct.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mvdistinct.c_estimate_ndistinct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, i32, i32, i32)* @estimate_ndistinct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @estimate_ndistinct(double %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sitofp i32 %12 to double
  %14 = load i32, i32* %7, align 4
  %15 = sitofp i32 %14 to double
  %16 = fmul double %13, %15
  store double %16, double* %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sitofp i32 %19 to double
  %21 = load i32, i32* %8, align 4
  %22 = sitofp i32 %21 to double
  %23 = load i32, i32* %6, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double %22, %24
  %26 = load double, double* %5, align 8
  %27 = fdiv double %25, %26
  %28 = fadd double %20, %27
  store double %28, double* %10, align 8
  %29 = load double, double* %9, align 8
  %30 = load double, double* %10, align 8
  %31 = fdiv double %29, %30
  store double %31, double* %11, align 8
  %32 = load double, double* %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sitofp i32 %33 to double
  %35 = fcmp olt double %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = sitofp i32 %37 to double
  store double %38, double* %11, align 8
  br label %39

39:                                               ; preds = %36, %4
  %40 = load double, double* %11, align 8
  %41 = load double, double* %5, align 8
  %42 = fcmp ogt double %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load double, double* %5, align 8
  store double %44, double* %11, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load double, double* %11, align 8
  %47 = fadd double %46, 5.000000e-01
  %48 = call double @llvm.floor.f64(double %47)
  ret double %48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
