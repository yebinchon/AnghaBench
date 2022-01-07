; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_rint.c_rint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_rint.c_rint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @rint(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = call i64 @isnan(double %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  store double %10, double* %2, align 8
  br label %73

11:                                               ; preds = %1
  %12 = load double, double* %3, align 8
  %13 = fcmp ole double %12, 0.000000e+00
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load double, double* %3, align 8
  %16 = fcmp oeq double %15, 0.000000e+00
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load double, double* %3, align 8
  store double %18, double* %2, align 8
  br label %73

19:                                               ; preds = %14
  %20 = load double, double* %3, align 8
  store double %20, double* %4, align 8
  %21 = load double, double* %3, align 8
  %22 = fadd double %21, 5.000000e-01
  store double %22, double* %3, align 8
  %23 = load double, double* %3, align 8
  %24 = fcmp oge double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store double -0.000000e+00, double* %2, align 8
  br label %73

26:                                               ; preds = %19
  %27 = load double, double* %3, align 8
  %28 = load double, double* %4, align 8
  %29 = fadd double %28, 1.000000e+00
  %30 = fcmp oeq double %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load double, double* %4, align 8
  store double %32, double* %2, align 8
  br label %73

33:                                               ; preds = %26
  %34 = load double, double* %3, align 8
  %35 = call double @llvm.floor.f64(double %34)
  store double %35, double* %5, align 8
  %36 = load double, double* %5, align 8
  %37 = load double, double* %3, align 8
  %38 = fcmp une double %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load double, double* %5, align 8
  store double %40, double* %2, align 8
  br label %73

41:                                               ; preds = %33
  %42 = load double, double* %3, align 8
  %43 = fmul double %42, 5.000000e-01
  %44 = call double @llvm.floor.f64(double %43)
  %45 = fmul double %44, 2.000000e+00
  store double %45, double* %2, align 8
  br label %73

46:                                               ; preds = %11
  %47 = load double, double* %3, align 8
  store double %47, double* %4, align 8
  %48 = load double, double* %3, align 8
  %49 = fsub double %48, 5.000000e-01
  store double %49, double* %3, align 8
  %50 = load double, double* %3, align 8
  %51 = fcmp ole double %50, 0.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store double 0.000000e+00, double* %2, align 8
  br label %73

53:                                               ; preds = %46
  %54 = load double, double* %3, align 8
  %55 = load double, double* %4, align 8
  %56 = fsub double %55, 1.000000e+00
  %57 = fcmp oeq double %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load double, double* %4, align 8
  store double %59, double* %2, align 8
  br label %73

60:                                               ; preds = %53
  %61 = load double, double* %3, align 8
  %62 = call double @llvm.ceil.f64(double %61)
  store double %62, double* %5, align 8
  %63 = load double, double* %5, align 8
  %64 = load double, double* %3, align 8
  %65 = fcmp une double %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load double, double* %5, align 8
  store double %67, double* %2, align 8
  br label %73

68:                                               ; preds = %60
  %69 = load double, double* %3, align 8
  %70 = fmul double %69, 5.000000e-01
  %71 = call double @llvm.ceil.f64(double %70)
  %72 = fmul double %71, 2.000000e+00
  store double %72, double* %2, align 8
  br label %73

73:                                               ; preds = %68, %66, %58, %52, %41, %39, %31, %25, %17, %9
  %74 = load double, double* %2, align 8
  ret double %74
}

declare dso_local i64 @isnan(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
