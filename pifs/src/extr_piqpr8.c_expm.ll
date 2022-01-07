; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_piqpr8.c_expm.c'
source_filename = "/home/carl/AnghaBench/pifs/src/extr_piqpr8.c_expm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expm.tp = internal global [25 x double] zeroinitializer, align 16
@expm.tp1 = internal global i32 0, align 4
@ntp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @expm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @expm(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %11 = load i32, i32* @expm.tp1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  store i32 1, i32* @expm.tp1, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([25 x double], [25 x double]* @expm.tp, i64 0, i64 0), align 16
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 25
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [25 x double], [25 x double]* @expm.tp, i64 0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fmul double 2.000000e+00, %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [25 x double], [25 x double]* @expm.tp, i64 0, i64 %25
  store double %23, double* %26, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %14

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %2
  %32 = load double, double* %5, align 8
  %33 = fcmp oeq double %32, 1.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store double 0.000000e+00, double* %3, align 8
  br label %105

35:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 25
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [25 x double], [25 x double]* @expm.tp, i64 0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load double, double* %4, align 8
  %45 = fcmp ogt double %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %51

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %36

51:                                               ; preds = %46, %36
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [25 x double], [25 x double]* @expm.tp, i64 0, i64 %54
  %56 = load double, double* %55, align 8
  store double %56, double* %9, align 8
  %57 = load double, double* %4, align 8
  store double %57, double* %8, align 8
  store double 1.000000e+00, double* %10, align 8
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %100, %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %58
  %63 = load double, double* %8, align 8
  %64 = load double, double* %9, align 8
  %65 = fcmp oge double %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load double, double* %10, align 8
  %68 = fmul double 1.600000e+01, %67
  store double %68, double* %10, align 8
  %69 = load double, double* %10, align 8
  %70 = load double, double* %10, align 8
  %71 = load double, double* %5, align 8
  %72 = fdiv double %70, %71
  %73 = fptosi double %72 to i32
  %74 = sitofp i32 %73 to double
  %75 = load double, double* %5, align 8
  %76 = fmul double %74, %75
  %77 = fsub double %69, %76
  store double %77, double* %10, align 8
  %78 = load double, double* %8, align 8
  %79 = load double, double* %9, align 8
  %80 = fsub double %78, %79
  store double %80, double* %8, align 8
  br label %81

81:                                               ; preds = %66, %62
  %82 = load double, double* %9, align 8
  %83 = fmul double 5.000000e-01, %82
  store double %83, double* %9, align 8
  %84 = load double, double* %9, align 8
  %85 = fcmp oge double %84, 1.000000e+00
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load double, double* %10, align 8
  %88 = load double, double* %10, align 8
  %89 = fmul double %87, %88
  store double %89, double* %10, align 8
  %90 = load double, double* %10, align 8
  %91 = load double, double* %10, align 8
  %92 = load double, double* %5, align 8
  %93 = fdiv double %91, %92
  %94 = fptosi double %93 to i32
  %95 = sitofp i32 %94 to double
  %96 = load double, double* %5, align 8
  %97 = fmul double %95, %96
  %98 = fsub double %90, %97
  store double %98, double* %10, align 8
  br label %99

99:                                               ; preds = %86, %81
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %58

103:                                              ; preds = %58
  %104 = load double, double* %10, align 8
  store double %104, double* %3, align 8
  br label %105

105:                                              ; preds = %103, %34
  %106 = load double, double* %3, align 8
  ret double %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
