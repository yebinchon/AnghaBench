; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_IsCheckpointOnSchedule.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_IsCheckpointOnSchedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { double, i64 }

@ckpt_active = common dso_local global i32 0, align 4
@CheckPointCompletionTarget = common dso_local global double 0.000000e+00, align 8
@ckpt_cached_elapsed = common dso_local global double 0.000000e+00, align 8
@ckpt_start_recptr = common dso_local global i64 0, align 8
@wal_segment_size = common dso_local global double 0.000000e+00, align 8
@CheckPointSegments = common dso_local global double 0.000000e+00, align 8
@ckpt_start_time = common dso_local global i64 0, align 8
@CheckPointTimeout = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @IsCheckpointOnSchedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsCheckpointOnSchedule(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %3, align 8
  %8 = load i32, i32* @ckpt_active, align 4
  %9 = call i32 @Assert(i32 %8)
  %10 = load double, double* @CheckPointCompletionTarget, align 8
  %11 = load double, double* %3, align 8
  %12 = fmul double %11, %10
  store double %12, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = load double, double* @ckpt_cached_elapsed, align 8
  %15 = fcmp olt double %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = call i64 (...) @RecoveryInProgress()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i64 @GetXLogReplayRecPtr(i32* null)
  store i64 %21, i64* %4, align 8
  br label %24

22:                                               ; preds = %17
  %23 = call i64 (...) @GetInsertRecPtr()
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @ckpt_start_recptr, align 8
  %27 = sub nsw i64 %25, %26
  %28 = sitofp i64 %27 to double
  %29 = load double, double* @wal_segment_size, align 8
  %30 = fdiv double %28, %29
  %31 = load double, double* @CheckPointSegments, align 8
  %32 = fdiv double %30, %31
  store double %32, double* %6, align 8
  %33 = load double, double* %3, align 8
  %34 = load double, double* %6, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load double, double* %6, align 8
  store double %37, double* @ckpt_cached_elapsed, align 8
  store i32 0, i32* %2, align 4
  br label %57

38:                                               ; preds = %24
  %39 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ckpt_start_time, align 8
  %43 = sub nsw i64 %41, %42
  %44 = sitofp i64 %43 to double
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = fdiv double %46, 1.000000e+06
  %48 = fadd double %44, %47
  %49 = load double, double* @CheckPointTimeout, align 8
  %50 = fdiv double %48, %49
  store double %50, double* %7, align 8
  %51 = load double, double* %3, align 8
  %52 = load double, double* %7, align 8
  %53 = fcmp olt double %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load double, double* %7, align 8
  store double %55, double* @ckpt_cached_elapsed, align 8
  store i32 0, i32* %2, align 4
  br label %57

56:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %54, %36, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i64 @GetXLogReplayRecPtr(i32*) #1

declare dso_local i64 @GetInsertRecPtr(...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
