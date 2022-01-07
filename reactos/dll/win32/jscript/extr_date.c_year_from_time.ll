; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_year_from_time.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_year_from_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@MS_PER_DAY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @year_from_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @year_from_time(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = call i64 @isnan(double %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load double, double* @NAN, align 8
  store double %9, double* %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = fdiv double %11, 3.652500e+02
  %13 = load double, double* @MS_PER_DAY, align 8
  %14 = fdiv double %12, %13
  %15 = fadd double 1.970000e+03, %14
  %16 = fptosi double %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call double @time_from_year(i32 %17)
  %19 = load double, double* %3, align 8
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i32, i32* %4, align 4
  %24 = call double @time_from_year(i32 %23)
  %25 = load double, double* %3, align 8
  %26 = fcmp ogt double %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  br label %22

30:                                               ; preds = %22
  br label %42

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = call double @time_from_year(i32 %34)
  %36 = load double, double* %3, align 8
  %37 = fcmp ole double %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %32

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32, i32* %4, align 4
  %44 = sitofp i32 %43 to double
  store double %44, double* %2, align 8
  br label %45

45:                                               ; preds = %42, %8
  %46 = load double, double* %2, align 8
  ret double %46
}

declare dso_local i64 @isnan(double) #1

declare dso_local double @time_from_year(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
