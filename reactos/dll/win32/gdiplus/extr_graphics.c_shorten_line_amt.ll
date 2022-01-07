; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_shorten_line_amt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_shorten_line_amt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double*, double*, double)* @shorten_line_amt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shorten_line_amt(double %0, double %1, double* %2, double* %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double %4, double* %10, align 8
  %14 = load double*, double** %8, align 8
  %15 = load double, double* %14, align 8
  %16 = load double, double* %6, align 8
  %17 = fsub double %15, %16
  store double %17, double* %11, align 8
  %18 = load double*, double** %9, align 8
  %19 = load double, double* %18, align 8
  %20 = load double, double* %7, align 8
  %21 = fsub double %19, %20
  store double %21, double* %12, align 8
  %22 = load double, double* %11, align 8
  %23 = fcmp oeq double %22, 0.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load double, double* %12, align 8
  %26 = fcmp oeq double %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %53

28:                                               ; preds = %24, %5
  %29 = load double, double* %10, align 8
  %30 = load double, double* %11, align 8
  %31 = load double, double* %11, align 8
  %32 = fmul double %30, %31
  %33 = load double, double* %12, align 8
  %34 = load double, double* %12, align 8
  %35 = fmul double %33, %34
  %36 = fadd double %32, %35
  %37 = call double @sqrt(double %36) #3
  %38 = fdiv double %29, %37
  store double %38, double* %13, align 8
  %39 = load double, double* %13, align 8
  %40 = fcmp oge double %39, 1.000000e+00
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load double, double* %6, align 8
  %43 = load double*, double** %8, align 8
  store double %42, double* %43, align 8
  %44 = load double, double* %7, align 8
  %45 = load double*, double** %9, align 8
  store double %44, double* %45, align 8
  br label %53

46:                                               ; preds = %28
  %47 = load double, double* %6, align 8
  %48 = load double, double* %7, align 8
  %49 = load double*, double** %8, align 8
  %50 = load double*, double** %9, align 8
  %51 = load double, double* %13, align 8
  %52 = call i32 @shorten_line_percent(double %47, double %48, double* %49, double* %50, double %51)
  br label %53

53:                                               ; preds = %46, %41, %27
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local i32 @shorten_line_percent(double, double, double*, double*, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
