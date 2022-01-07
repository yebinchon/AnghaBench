; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c__arange_safe_ceil_to_intp.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c__arange_safe_ceil_to_intp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"arange: cannot compute length\00", align 1
@NPY_MIN_INTP = common dso_local global double 0.000000e+00, align 8
@NPY_MAX_INTP = common dso_local global double 0.000000e+00, align 8
@PyExc_OverflowError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"arange: overflow while computing length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @_arange_safe_ceil_to_intp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_arange_safe_ceil_to_intp(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = call double @npy_ceil(double %5)
  store double %6, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = call i64 @npy_isnan(double %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @PyExc_ValueError, align 4
  %12 = call i32 @PyErr_SetString(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load double, double* @NPY_MIN_INTP, align 8
  %15 = load double, double* %4, align 8
  %16 = fcmp ole double %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load double, double* %4, align 8
  %19 = load double, double* @NPY_MAX_INTP, align 8
  %20 = fcmp ole double %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @PyExc_OverflowError, align 4
  %23 = call i32 @PyErr_SetString(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load double, double* %4, align 8
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %21, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local double @npy_ceil(double) #1

declare dso_local i64 @npy_isnan(double) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
