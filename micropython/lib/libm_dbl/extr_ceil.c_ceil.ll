; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_ceil.c_ceil.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_ceil.c_ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@toint = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @ceil(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store double %0, double* %3, align 8
  %7 = bitcast %union.anon* %4 to double*
  %8 = load double, double* %3, align 8
  store double %8, double* %7, align 8
  %9 = bitcast %union.anon* %4 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = ashr i32 %10, 52
  %12 = and i32 %11, 2047
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 1075
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load double, double* %3, align 8
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %1
  %19 = load double, double* %3, align 8
  store double %19, double* %2, align 8
  br label %69

20:                                               ; preds = %15
  %21 = bitcast %union.anon* %4 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 63
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load double, double* %3, align 8
  %27 = load double, double* @toint, align 8
  %28 = fsub double %26, %27
  %29 = load double, double* @toint, align 8
  %30 = fadd double %28, %29
  %31 = load double, double* %3, align 8
  %32 = fsub double %30, %31
  %33 = fptosi double %32 to i64
  store i64 %33, i64* %6, align 8
  br label %43

34:                                               ; preds = %20
  %35 = load double, double* %3, align 8
  %36 = load double, double* @toint, align 8
  %37 = fadd double %35, %36
  %38 = load double, double* @toint, align 8
  %39 = fsub double %37, %38
  %40 = load double, double* %3, align 8
  %41 = fsub double %39, %40
  %42 = fptosi double %41 to i64
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %34, %25
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %44, 1022
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @FORCE_EVAL(i64 %47)
  %49 = bitcast %union.anon* %4 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 63
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, double -0.000000e+00, double 1.000000e+00
  store double %54, double* %2, align 8
  br label %69

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load double, double* %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sitofp i64 %60 to double
  %62 = fadd double %59, %61
  %63 = fadd double %62, 1.000000e+00
  store double %63, double* %2, align 8
  br label %69

64:                                               ; preds = %55
  %65 = load double, double* %3, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sitofp i64 %66 to double
  %68 = fadd double %65, %67
  store double %68, double* %2, align 8
  br label %69

69:                                               ; preds = %64, %58, %46, %18
  %70 = load double, double* %2, align 8
  ret double %70
}

declare dso_local i32 @FORCE_EVAL(i64) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
