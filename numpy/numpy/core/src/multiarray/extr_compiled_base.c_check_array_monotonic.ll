; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_check_array_monotonic.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_check_array_monotonic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, i64)* @check_array_monotonic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_array_monotonic(double* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double* %0, double** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %90

12:                                               ; preds = %2
  %13 = load double*, double** %4, align 8
  %14 = getelementptr inbounds double, double* %13, i64 0
  %15 = load double, double* %14, align 8
  store double %15, double* %8, align 8
  store i64 1, i64* %6, align 8
  br label %16

16:                                               ; preds = %30, %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load double*, double** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds double, double* %21, i64 %22
  %24 = load double, double* %23, align 8
  %25 = load double, double* %8, align 8
  %26 = fcmp oeq double %24, %25
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %16

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %90

38:                                               ; preds = %33
  %39 = load double*, double** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds double, double* %39, i64 %40
  %42 = load double, double* %41, align 8
  store double %42, double* %7, align 8
  %43 = load double, double* %8, align 8
  %44 = load double, double* %7, align 8
  %45 = fcmp olt double %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %64, %46
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load double, double* %7, align 8
  store double %54, double* %8, align 8
  %55 = load double*, double** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds double, double* %55, i64 %56
  %58 = load double, double* %57, align 8
  store double %58, double* %7, align 8
  %59 = load double, double* %8, align 8
  %60 = load double, double* %7, align 8
  %61 = fcmp ogt double %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %90

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %49

67:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %90

68:                                               ; preds = %38
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %86, %68
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load double, double* %7, align 8
  store double %76, double* %8, align 8
  %77 = load double*, double** %4, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds double, double* %77, i64 %78
  %80 = load double, double* %79, align 8
  store double %80, double* %7, align 8
  %81 = load double, double* %8, align 8
  %82 = load double, double* %7, align 8
  %83 = fcmp olt double %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %90

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %71

89:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %84, %67, %62, %37, %11
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
