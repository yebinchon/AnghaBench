; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_strtof.c_strtof.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_strtof.c_strtof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @strtof(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* @errno, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* @errno, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = call double @strtod(i8* %9, i8** %10)
  store double %11, double* %6, align 8
  %12 = load double, double* %6, align 8
  %13 = fptrunc double %12 to float
  store float %13, float* %7, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load double, double* %6, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load float, float* %7, align 4
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ERANGE, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %19, %16
  %25 = load double, double* %6, align 8
  %26 = fptrunc double %25 to float
  %27 = call i64 @isinf(float %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load float, float* %7, align 4
  %31 = call i64 @isinf(float %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ERANGE, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %29, %24
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* @errno, align 4
  %40 = load float, float* %7, align 4
  ret float %40
}

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @isinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
