; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_atanh.c_atanh.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_atanh.c_atanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @atanh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, double* %2, align 8
  %7 = bitcast %union.anon* %3 to double*
  %8 = load double, double* %2, align 8
  store double %8, double* %7, align 8
  %9 = bitcast %union.anon* %3 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = ashr i32 %10, 52
  %12 = and i32 %11, 2047
  store i32 %12, i32* %4, align 4
  %13 = bitcast %union.anon* %3 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 63
  store i32 %15, i32* %5, align 4
  %16 = bitcast %union.anon* %3 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 0
  store i32 %18, i32* %16, align 8
  %19 = bitcast %union.anon* %3 to double*
  %20 = load double, double* %19, align 8
  %21 = fptosi double %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %22, 1022
  br i1 %23, label %24, label %50

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp ult i32 %25, 991
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = sitofp i32 %31 to float
  %33 = call i32 @FORCE_EVAL(float %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %49

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 2, %36
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 2, %38
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 1, %42
  %44 = sdiv i32 %41, %43
  %45 = add nsw i32 %37, %44
  %46 = call double @log1p(i32 %45)
  %47 = fmul double 5.000000e-01, %46
  %48 = fptosi double %47 to i32
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %35, %34
  br label %59

50:                                               ; preds = %1
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 1, %52
  %54 = sdiv i32 %51, %53
  %55 = mul nsw i32 2, %54
  %56 = call double @log1p(i32 %55)
  %57 = fmul double 5.000000e-01, %56
  %58 = fptosi double %57 to i32
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %50, %49
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 0, %63
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  %69 = sitofp i32 %68 to double
  ret double %69
}

declare dso_local i32 @FORCE_EVAL(float) #1

declare dso_local double @log1p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
