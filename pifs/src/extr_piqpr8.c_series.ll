; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_piqpr8.c_series.c'
source_filename = "/home/carl/AnghaBench/pifs/src/extr_piqpr8.c_series.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eps = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32)* @series to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @series(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 8, %15
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %16, %17
  %19 = sitofp i32 %18 to double
  store double %19, double* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sitofp i32 %22 to double
  store double %23, double* %7, align 8
  %24 = load double, double* %7, align 8
  %25 = load double, double* %6, align 8
  %26 = call double @expm(double %24, double %25)
  store double %26, double* %9, align 8
  %27 = load double, double* %8, align 8
  %28 = load double, double* %9, align 8
  %29 = load double, double* %6, align 8
  %30 = fdiv double %28, %29
  %31 = fadd double %27, %30
  store double %31, double* %8, align 8
  %32 = load double, double* %8, align 8
  %33 = load double, double* %8, align 8
  %34 = fptosi double %33 to i32
  %35 = sitofp i32 %34 to double
  %36 = fsub double %32, %35
  store double %36, double* %8, align 8
  br label %37

37:                                               ; preds = %14
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %72, %40
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 100
  %46 = icmp sle i32 %43, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 8, %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %49, %50
  %52 = sitofp i32 %51 to double
  store double %52, double* %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sitofp i32 %55 to double
  %57 = call double @pow(i32 16, double %56)
  %58 = load double, double* %6, align 8
  %59 = fdiv double %57, %58
  store double %59, double* %9, align 8
  %60 = load double, double* %9, align 8
  %61 = fcmp olt double %60, 1.000000e-17
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %75

63:                                               ; preds = %47
  %64 = load double, double* %8, align 8
  %65 = load double, double* %9, align 8
  %66 = fadd double %64, %65
  store double %66, double* %8, align 8
  %67 = load double, double* %8, align 8
  %68 = load double, double* %8, align 8
  %69 = fptosi double %68 to i32
  %70 = sitofp i32 %69 to double
  %71 = fsub double %67, %70
  store double %71, double* %8, align 8
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %42

75:                                               ; preds = %62, %42
  %76 = load double, double* %8, align 8
  ret double %76
}

declare dso_local double @expm(double, double) #1

declare dso_local double @pow(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
