; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_rint.c_rint.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_rint.c_rint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@toint = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @rint(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store double %0, double* %3, align 8
  %8 = bitcast %union.anon* %4 to double*
  %9 = load double, double* %3, align 8
  store double %9, double* %8, align 8
  %10 = bitcast %union.anon* %4 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 52
  %13 = and i32 %12, 2047
  store i32 %13, i32* %5, align 4
  %14 = bitcast %union.anon* %4 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 63
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 1075
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load double, double* %3, align 8
  store double %20, double* %2, align 8
  br label %46

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load double, double* %3, align 8
  %26 = load double, double* @toint, align 8
  %27 = fsub double %25, %26
  %28 = load double, double* @toint, align 8
  %29 = fadd double %27, %28
  store double %29, double* %7, align 8
  br label %36

30:                                               ; preds = %21
  %31 = load double, double* %3, align 8
  %32 = load double, double* @toint, align 8
  %33 = fadd double %31, %32
  %34 = load double, double* @toint, align 8
  %35 = fsub double %33, %34
  store double %35, double* %7, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load double, double* %7, align 8
  %38 = fcmp oeq double %37, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, double -0.000000e+00, double 0.000000e+00
  store double %43, double* %2, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load double, double* %7, align 8
  store double %45, double* %2, align 8
  br label %46

46:                                               ; preds = %44, %39, %19
  %47 = load double, double* %2, align 8
  ret double %47
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
