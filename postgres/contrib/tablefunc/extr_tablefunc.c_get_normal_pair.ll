; ModuleID = '/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_get_normal_pair.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_get_normal_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RANDOM_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*)* @get_normal_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_normal_pair(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  br label %10

10:                                               ; preds = %34, %2
  %11 = call i64 (...) @random()
  %12 = sitofp i64 %11 to double
  %13 = load i64, i64* @MAX_RANDOM_VALUE, align 8
  %14 = sitofp i64 %13 to double
  %15 = fdiv double %12, %14
  store double %15, double* %5, align 8
  %16 = call i64 (...) @random()
  %17 = sitofp i64 %16 to double
  %18 = load i64, i64* @MAX_RANDOM_VALUE, align 8
  %19 = sitofp i64 %18 to double
  %20 = fdiv double %17, %19
  store double %20, double* %6, align 8
  %21 = load double, double* %5, align 8
  %22 = fmul double 2.000000e+00, %21
  %23 = fsub double %22, 1.000000e+00
  store double %23, double* %7, align 8
  %24 = load double, double* %6, align 8
  %25 = fmul double 2.000000e+00, %24
  %26 = fsub double %25, 1.000000e+00
  store double %26, double* %8, align 8
  %27 = load double, double* %7, align 8
  %28 = load double, double* %7, align 8
  %29 = fmul double %27, %28
  %30 = load double, double* %8, align 8
  %31 = load double, double* %8, align 8
  %32 = fmul double %30, %31
  %33 = fadd double %29, %32
  store double %33, double* %9, align 8
  br label %34

34:                                               ; preds = %10
  %35 = load double, double* %9, align 8
  %36 = fcmp oge double %35, 1.000000e+00
  br i1 %36, label %10, label %37

37:                                               ; preds = %34
  %38 = load double, double* %9, align 8
  %39 = fcmp oeq double %38, 0.000000e+00
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load double*, double** %3, align 8
  store double 0.000000e+00, double* %41, align 8
  %42 = load double*, double** %4, align 8
  store double 0.000000e+00, double* %42, align 8
  br label %58

43:                                               ; preds = %37
  %44 = load double, double* %9, align 8
  %45 = call double @log(double %44) #3
  %46 = fmul double -2.000000e+00, %45
  %47 = load double, double* %9, align 8
  %48 = fdiv double %46, %47
  %49 = call double @sqrt(double %48) #3
  store double %49, double* %9, align 8
  %50 = load double, double* %7, align 8
  %51 = load double, double* %9, align 8
  %52 = fmul double %50, %51
  %53 = load double*, double** %3, align 8
  store double %52, double* %53, align 8
  %54 = load double, double* %8, align 8
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  %57 = load double*, double** %4, align 8
  store double %56, double* %57, align 8
  br label %58

58:                                               ; preds = %43, %40
  ret void
}

declare dso_local i64 @random(...) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
