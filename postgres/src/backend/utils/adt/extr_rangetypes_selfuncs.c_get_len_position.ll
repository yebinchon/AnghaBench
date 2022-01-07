; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_get_len_position.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_get_len_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double)* @get_len_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_len_position(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %8 = load double, double* %6, align 8
  %9 = call i64 @isinf(double %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = load double, double* %7, align 8
  %13 = call i64 @isinf(double %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = load double, double* %5, align 8
  %17 = call i64 @isinf(double %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store double 5.000000e-01, double* %4, align 8
  br label %48

20:                                               ; preds = %15
  %21 = load double, double* %7, align 8
  %22 = load double, double* %5, align 8
  %23 = fsub double %21, %22
  %24 = load double, double* %7, align 8
  %25 = load double, double* %6, align 8
  %26 = fsub double %24, %25
  %27 = fdiv double %23, %26
  %28 = fsub double 1.000000e+00, %27
  store double %28, double* %4, align 8
  br label %48

29:                                               ; preds = %11, %3
  %30 = load double, double* %6, align 8
  %31 = call i64 @isinf(double %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load double, double* %7, align 8
  %35 = call i64 @isinf(double %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store double 1.000000e+00, double* %4, align 8
  br label %48

38:                                               ; preds = %33, %29
  %39 = load double, double* %6, align 8
  %40 = call i64 @isinf(double %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load double, double* %7, align 8
  %44 = call i64 @isinf(double %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store double 0.000000e+00, double* %4, align 8
  br label %48

47:                                               ; preds = %42, %38
  store double 5.000000e-01, double* %4, align 8
  br label %48

48:                                               ; preds = %47, %46, %37, %20, %19
  %49 = load double, double* %4, align 8
  ret double %49
}

declare dso_local i64 @isinf(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
