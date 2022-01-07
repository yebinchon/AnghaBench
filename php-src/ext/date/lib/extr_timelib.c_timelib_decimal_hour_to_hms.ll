; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_timelib.c_timelib_decimal_hour_to_hms.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_timelib.c_timelib_decimal_hour_to_hms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timelib_decimal_hour_to_hms(double %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store double %0, double* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load double, double* %5, align 8
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = load double, double* %5, align 8
  %13 = call i32 @floor(double %12)
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load double, double* %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = fsub double %15, %18
  %20 = fmul double %19, 6.000000e+01
  %21 = call i32 @floor(double %20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load double, double* %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = fsub double %23, %26
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, 6.000000e+01
  %32 = fpext float %31 to double
  %33 = fsub double %27, %32
  %34 = fmul double %33, 3.600000e+03
  %35 = fptosi double %34 to i32
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %65

37:                                               ; preds = %4
  %38 = load double, double* %5, align 8
  %39 = call i32 @ceil(double %38)
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load double, double* %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sitofp i32 %43 to double
  %45 = fsub double %41, %44
  %46 = fmul double %45, 6.000000e+01
  %47 = call i32 @ceil(double %46)
  %48 = sub nsw i32 0, %47
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load double, double* %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to double
  %54 = fsub double %50, %53
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sitofp i32 %56 to float
  %58 = fdiv float %57, -6.000000e+01
  %59 = fpext float %58 to double
  %60 = fsub double %54, %59
  %61 = fmul double %60, 3.600000e+03
  %62 = fsub double 0.000000e+00, %61
  %63 = fptosi double %62 to i32
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %37, %11
  ret void
}

declare dso_local i32 @floor(double) #1

declare dso_local i32 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
