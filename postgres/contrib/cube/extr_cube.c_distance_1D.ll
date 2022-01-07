; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_distance_1D.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_distance_1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double)* @distance_1D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @distance_1D(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %10 = load double, double* %6, align 8
  %11 = load double, double* %8, align 8
  %12 = fcmp ole double %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %4
  %14 = load double, double* %7, align 8
  %15 = load double, double* %8, align 8
  %16 = fcmp ole double %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load double, double* %6, align 8
  %19 = load double, double* %9, align 8
  %20 = fcmp ole double %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load double, double* %7, align 8
  %23 = load double, double* %9, align 8
  %24 = fcmp ole double %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load double, double* %8, align 8
  %27 = load double, double* %9, align 8
  %28 = call double @Min(double %26, double %27)
  %29 = load double, double* %6, align 8
  %30 = load double, double* %7, align 8
  %31 = call double @Max(double %29, double %30)
  %32 = fsub double %28, %31
  store double %32, double* %5, align 8
  br label %58

33:                                               ; preds = %21, %17, %13, %4
  %34 = load double, double* %6, align 8
  %35 = load double, double* %8, align 8
  %36 = fcmp ogt double %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load double, double* %7, align 8
  %39 = load double, double* %8, align 8
  %40 = fcmp ogt double %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load double, double* %6, align 8
  %43 = load double, double* %9, align 8
  %44 = fcmp ogt double %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load double, double* %7, align 8
  %47 = load double, double* %9, align 8
  %48 = fcmp ogt double %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load double, double* %6, align 8
  %51 = load double, double* %7, align 8
  %52 = call double @Min(double %50, double %51)
  %53 = load double, double* %8, align 8
  %54 = load double, double* %9, align 8
  %55 = call double @Max(double %53, double %54)
  %56 = fsub double %52, %55
  store double %56, double* %5, align 8
  br label %58

57:                                               ; preds = %45, %41, %37, %33
  store double 0.000000e+00, double* %5, align 8
  br label %58

58:                                               ; preds = %57, %49, %25
  %59 = load double, double* %5, align 8
  ret double %59
}

declare dso_local double @Min(double, double) #1

declare dso_local double @Max(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
