; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_get_sync_adjusted_pts_diff.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_get_sync_adjusted_pts_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_clock = type { i32 }

@AV_SYNC_THRESHOLD = common dso_local global double 0.000000e+00, align 8
@AV_NOSYNC_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ff_clock*, double, double)* @get_sync_adjusted_pts_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_sync_adjusted_pts_diff(%struct.ff_clock* %0, double %1, double %2) #0 {
  %4 = alloca %struct.ff_clock*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.ff_clock* %0, %struct.ff_clock** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %11 = load double, double* %6, align 8
  store double %11, double* %7, align 8
  %12 = load %struct.ff_clock*, %struct.ff_clock** %4, align 8
  %13 = call double @ff_get_sync_clock(%struct.ff_clock* %12)
  store double %13, double* %8, align 8
  %14 = load double, double* %5, align 8
  %15 = load double, double* %8, align 8
  %16 = fsub double %14, %15
  store double %16, double* %9, align 8
  %17 = load double, double* %6, align 8
  %18 = load double, double* @AV_SYNC_THRESHOLD, align 8
  %19 = fcmp ogt double %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load double, double* %6, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load double, double* @AV_SYNC_THRESHOLD, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi double [ %21, %20 ], [ %23, %22 ]
  store double %25, double* %10, align 8
  %26 = load double, double* %9, align 8
  %27 = call i64 @fabs(double %26)
  %28 = load i64, i64* @AV_NOSYNC_THRESHOLD, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load double, double* %9, align 8
  %32 = load double, double* %10, align 8
  %33 = fneg double %32
  %34 = fcmp ole double %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store double 0.000000e+00, double* %7, align 8
  br label %44

36:                                               ; preds = %30
  %37 = load double, double* %9, align 8
  %38 = load double, double* %10, align 8
  %39 = fcmp oge double %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load double, double* %6, align 8
  %42 = fmul double 2.000000e+00, %41
  store double %42, double* %7, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %24
  %46 = load double, double* %7, align 8
  ret double %46
}

declare dso_local double @ff_get_sync_clock(%struct.ff_clock*) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
