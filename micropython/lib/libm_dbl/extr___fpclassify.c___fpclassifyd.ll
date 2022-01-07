; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___fpclassify.c___fpclassifyd.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___fpclassify.c___fpclassifyd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@FP_SUBNORMAL = common dso_local global i32 0, align 4
@FP_ZERO = common dso_local global i32 0, align 4
@FP_NAN = common dso_local global i32 0, align 4
@FP_INFINITE = common dso_local global i32 0, align 4
@FP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fpclassifyd(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = bitcast %union.anon* %4 to double*
  %7 = load double, double* %3, align 8
  store double %7, double* %6, align 8
  %8 = bitcast %union.anon* %4 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 52
  %11 = and i32 %10, 2047
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = bitcast %union.anon* %4 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @FP_SUBNORMAL, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @FP_ZERO, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 2047
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = bitcast %union.anon* %4 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 12
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @FP_NAN, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @FP_INFINITE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @FP_NORMAL, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
