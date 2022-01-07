; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_multiply_int64.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_multiply_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MIN = common dso_local global double 0.000000e+00, align 8
@INT64_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, double)* @multiply_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiply_int64(i32* %0, i8* %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store double %2, double* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to double*
  %11 = load double, double* %10, align 8
  %12 = load double, double* %6, align 8
  %13 = fmul double %11, %12
  store double %13, double* %7, align 8
  %14 = load double, double* %7, align 8
  store double %14, double* %8, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* @INT64_MIN, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load double, double* @INT64_MIN, align 8
  store double %19, double* %8, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = load double, double* %7, align 8
  %22 = load double, double* @INT64_MAX, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load double, double* @INT64_MAX, align 8
  store double %25, double* %8, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load double, double* %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to double*
  store double %27, double* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @clamp_int64(i32* %30, i8* %31)
  ret void
}

declare dso_local i32 @clamp_int64(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
