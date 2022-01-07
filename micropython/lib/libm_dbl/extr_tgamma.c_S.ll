; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_tgamma.c_S.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_tgamma.c_S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = common dso_local global i32 0, align 4
@Snum = common dso_local global double* null, align 8
@Sden = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @S(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %6 = load double, double* %2, align 8
  %7 = fcmp olt double %6, 8.000000e+00
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load i32, i32* @N, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %32, %8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load double, double* %3, align 8
  %15 = load double, double* %2, align 8
  %16 = fmul double %14, %15
  %17 = load double*, double** @Snum, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fadd double %16, %21
  store double %22, double* %3, align 8
  %23 = load double, double* %4, align 8
  %24 = load double, double* %2, align 8
  %25 = fmul double %23, %24
  %26 = load double*, double** @Sden, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fadd double %25, %30
  store double %31, double* %4, align 8
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %10

35:                                               ; preds = %10
  br label %64

36:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @N, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load double, double* %3, align 8
  %43 = load double, double* %2, align 8
  %44 = fdiv double %42, %43
  %45 = load double*, double** @Snum, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fadd double %44, %49
  store double %50, double* %3, align 8
  %51 = load double, double* %4, align 8
  %52 = load double, double* %2, align 8
  %53 = fdiv double %51, %52
  %54 = load double*, double** @Sden, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  %58 = load double, double* %57, align 8
  %59 = fadd double %53, %58
  store double %59, double* %4, align 8
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %37

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %35
  %65 = load double, double* %3, align 8
  %66 = load double, double* %4, align 8
  %67 = fdiv double %65, %66
  ret double %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
