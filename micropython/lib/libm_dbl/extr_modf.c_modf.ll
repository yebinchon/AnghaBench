; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_modf.c_modf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_modf.c_modf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @modf(double %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  %9 = bitcast %union.anon* %6 to double*
  %10 = load double, double* %4, align 8
  store double %10, double* %9, align 8
  %11 = bitcast %union.anon* %6 to i32*
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 52
  %14 = and i32 %13, 2047
  %15 = sub nsw i32 %14, 1023
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 52
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load double, double* %4, align 8
  %20 = load double*, double** %5, align 8
  store double %19, double* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = bitcast %union.anon* %6 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 12
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load double, double* %4, align 8
  store double %29, double* %3, align 8
  br label %84

30:                                               ; preds = %23, %18
  %31 = bitcast %union.anon* %6 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, -9223372036854775808
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = bitcast %union.anon* %6 to double*
  %37 = load double, double* %36, align 8
  store double %37, double* %3, align 8
  br label %84

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = bitcast %union.anon* %6 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, -9223372036854775808
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = bitcast %union.anon* %6 to double*
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %5, align 8
  store double %48, double* %49, align 8
  %50 = load double, double* %4, align 8
  store double %50, double* %3, align 8
  br label %84

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = lshr i64 4503599627370495, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = bitcast %union.anon* %6 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load double, double* %4, align 8
  %63 = load double*, double** %5, align 8
  store double %62, double* %63, align 8
  %64 = bitcast %union.anon* %6 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = and i64 %66, -9223372036854775808
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = bitcast %union.anon* %6 to double*
  %70 = load double, double* %69, align 8
  store double %70, double* %3, align 8
  br label %84

71:                                               ; preds = %51
  %72 = load i32, i32* %7, align 4
  %73 = xor i32 %72, -1
  %74 = bitcast %union.anon* %6 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %73
  store i32 %76, i32* %74, align 8
  %77 = bitcast %union.anon* %6 to double*
  %78 = load double, double* %77, align 8
  %79 = load double*, double** %5, align 8
  store double %78, double* %79, align 8
  %80 = load double, double* %4, align 8
  %81 = bitcast %union.anon* %6 to double*
  %82 = load double, double* %81, align 8
  %83 = fsub double %80, %82
  store double %83, double* %3, align 8
  br label %84

84:                                               ; preds = %71, %61, %41, %30, %28
  %85 = load double, double* %3, align 8
  ret double %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
