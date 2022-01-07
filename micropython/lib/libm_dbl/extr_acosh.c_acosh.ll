; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_acosh.c_acosh.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_acosh.c_acosh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @acosh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = bitcast %union.anon* %4 to double*
  %7 = load double, double* %3, align 8
  store double %7, double* %6, align 8
  %8 = bitcast %union.anon* %4 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 52
  %11 = and i32 %10, 2047
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 1024
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load double, double* %3, align 8
  %16 = fsub double %15, 1.000000e+00
  %17 = load double, double* %3, align 8
  %18 = fsub double %17, 1.000000e+00
  %19 = load double, double* %3, align 8
  %20 = fsub double %19, 1.000000e+00
  %21 = fmul double %18, %20
  %22 = load double, double* %3, align 8
  %23 = fsub double %22, 1.000000e+00
  %24 = fmul double 2.000000e+00, %23
  %25 = fadd double %21, %24
  %26 = call double @sqrt(double %25) #2
  %27 = fadd double %16, %26
  %28 = call double @log1p(double %27) #2
  store double %28, double* %2, align 8
  br label %49

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %30, 1049
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load double, double* %3, align 8
  %34 = fmul double 2.000000e+00, %33
  %35 = load double, double* %3, align 8
  %36 = load double, double* %3, align 8
  %37 = load double, double* %3, align 8
  %38 = fmul double %36, %37
  %39 = fsub double %38, 1.000000e+00
  %40 = call double @sqrt(double %39) #2
  %41 = fadd double %35, %40
  %42 = fdiv double 1.000000e+00, %41
  %43 = fsub double %34, %42
  %44 = call double @log(double %43) #2
  store double %44, double* %2, align 8
  br label %49

45:                                               ; preds = %29
  %46 = load double, double* %3, align 8
  %47 = call double @log(double %46) #2
  %48 = fadd double %47, 0x3FE62E42FEFA39EF
  store double %48, double* %2, align 8
  br label %49

49:                                               ; preds = %45, %32, %14
  %50 = load double, double* %2, align 8
  ret double %50
}

; Function Attrs: nounwind
declare dso_local double @log1p(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
