; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLOGfileslop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLOGfileslop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wal_segment_size = common dso_local global double 0.000000e+00, align 8
@min_wal_size_mb = common dso_local global i32 0, align 4
@max_wal_size_mb = common dso_local global i32 0, align 4
@CheckPointCompletionTarget = common dso_local global double 0.000000e+00, align 8
@CheckPointDistanceEstimate = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (double)* @XLOGfileslop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XLOGfileslop(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store double %0, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = load double, double* @wal_segment_size, align 8
  %9 = fdiv double %7, %8
  %10 = load i32, i32* @min_wal_size_mb, align 4
  %11 = load double, double* @wal_segment_size, align 8
  %12 = call i64 @ConvertToXSegs(i32 %10, double %11)
  %13 = sitofp i64 %12 to double
  %14 = fadd double %9, %13
  %15 = fsub double %14, 1.000000e+00
  %16 = fptosi double %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load double, double* %2, align 8
  %18 = load double, double* @wal_segment_size, align 8
  %19 = fdiv double %17, %18
  %20 = load i32, i32* @max_wal_size_mb, align 4
  %21 = load double, double* @wal_segment_size, align 8
  %22 = call i64 @ConvertToXSegs(i32 %20, double %21)
  %23 = sitofp i64 %22 to double
  %24 = fadd double %19, %23
  %25 = fsub double %24, 1.000000e+00
  %26 = fptosi double %25 to i64
  store i64 %26, i64* %4, align 8
  %27 = load double, double* @CheckPointCompletionTarget, align 8
  %28 = fadd double 1.000000e+00, %27
  %29 = load double, double* @CheckPointDistanceEstimate, align 8
  %30 = fmul double %28, %29
  store double %30, double* %5, align 8
  %31 = load double, double* %5, align 8
  %32 = fmul double %31, 1.100000e+00
  store double %32, double* %5, align 8
  %33 = load double, double* %2, align 8
  %34 = load double, double* %5, align 8
  %35 = fadd double %33, %34
  %36 = load double, double* @wal_segment_size, align 8
  %37 = fdiv double %35, %36
  %38 = call i64 @ceil(double %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i64, i64* %3, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %42, %1
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i64 @ConvertToXSegs(i32, double) #1

declare dso_local i64 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
