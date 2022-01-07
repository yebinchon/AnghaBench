; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_pg_hypot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_pg_hypot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @pg_hypot(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %9 = load double, double* %4, align 8
  %10 = call i64 @isinf(double %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load double, double* %5, align 8
  %14 = call i64 @isinf(double %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = call double (...) @get_float8_infinity()
  store double %17, double* %3, align 8
  br label %59

18:                                               ; preds = %12
  %19 = load double, double* %4, align 8
  %20 = call i64 @isnan(double %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load double, double* %5, align 8
  %24 = call i64 @isnan(double %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = call double (...) @get_float8_nan()
  store double %27, double* %3, align 8
  br label %59

28:                                               ; preds = %22
  %29 = load double, double* %4, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  store double %30, double* %4, align 8
  %31 = load double, double* %5, align 8
  %32 = call double @llvm.fabs.f64(double %31)
  store double %32, double* %5, align 8
  %33 = load double, double* %4, align 8
  %34 = load double, double* %5, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load double, double* %4, align 8
  store double %37, double* %8, align 8
  %38 = load double, double* %5, align 8
  store double %38, double* %4, align 8
  %39 = load double, double* %8, align 8
  store double %39, double* %5, align 8
  br label %40

40:                                               ; preds = %36, %28
  %41 = load double, double* %5, align 8
  %42 = fcmp oeq double %41, 0.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load double, double* %4, align 8
  store double %44, double* %3, align 8
  br label %59

45:                                               ; preds = %40
  %46 = load double, double* %5, align 8
  %47 = load double, double* %4, align 8
  %48 = fdiv double %46, %47
  store double %48, double* %6, align 8
  %49 = load double, double* %4, align 8
  %50 = load double, double* %6, align 8
  %51 = load double, double* %6, align 8
  %52 = fmul double %50, %51
  %53 = fadd double 1.000000e+00, %52
  %54 = call double @sqrt(double %53) #4
  %55 = fmul double %49, %54
  store double %55, double* %7, align 8
  %56 = load double, double* %7, align 8
  %57 = call i32 @check_float8_val(double %56, i32 0, i32 0)
  %58 = load double, double* %7, align 8
  store double %58, double* %3, align 8
  br label %59

59:                                               ; preds = %45, %43, %26, %16
  %60 = load double, double* %3, align 8
  ret double %60
}

declare dso_local i64 @isinf(double) #1

declare dso_local double @get_float8_infinity(...) #1

declare dso_local i64 @isnan(double) #1

declare dso_local double @get_float8_nan(...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local i32 @check_float8_val(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
