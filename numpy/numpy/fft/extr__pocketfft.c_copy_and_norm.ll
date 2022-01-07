; ModuleID = '/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_copy_and_norm.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_copy_and_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, i64, double)* @copy_and_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_and_norm(double* %0, double* %1, i64 %2, double %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store i64 %2, i64* %7, align 8
  store double %3, double* %8, align 8
  %11 = load double*, double** %6, align 8
  %12 = load double*, double** %5, align 8
  %13 = icmp ne double* %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  %16 = fcmp une double %15, 1.000000e+00
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load double, double* %8, align 8
  %24 = load double*, double** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds double, double* %24, i64 %25
  %27 = load double, double* %26, align 8
  %28 = fmul double %23, %27
  %29 = load double*, double** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds double, double* %29, i64 %30
  store double %28, double* %31, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %18

35:                                               ; preds = %18
  br label %42

36:                                               ; preds = %14
  %37 = load double*, double** %5, align 8
  %38 = load double*, double** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = mul i64 %39, 8
  %41 = call i32 @memcpy(double* %37, double* %38, i64 %40)
  br label %42

42:                                               ; preds = %36, %35
  br label %63

43:                                               ; preds = %4
  %44 = load double, double* %8, align 8
  %45 = fcmp une double %44, 1.000000e+00
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %58, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load double, double* %8, align 8
  %53 = load double*, double** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds double, double* %53, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fmul double %56, %52
  store double %57, double* %55, align 8
  br label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %47

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %42
  ret void
}

declare dso_local i32 @memcpy(double*, double*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
