; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_init_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_init_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.sample = type { i32 }

@CLOCK_MONOTONIC_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[FAIL] clock_gettime(CLOCK_MONOTONIC_RAW)\00", align 1
@mono_raw_base = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"[FAIL] clock_gettime(CLOCK_MONOTONIC)\00", align 1
@mono_base = common dso_local global i32 0, align 4
@_SC_CLK_TCK = common dso_local global i32 0, align 4
@user_hz = common dso_local global i32 0, align 4
@precision = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"CLOCK_MONOTONIC_RAW+CLOCK_MONOTONIC precision: %.0f ns\09\09\00", align 1
@MAX_PRECISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"precision: %.0f ns > MAX_PRECISION: %.0f ns\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_test() #0 {
  %1 = alloca %struct.timespec, align 4
  %2 = alloca %struct.sample, align 4
  %3 = load i32, i32* @CLOCK_MONOTONIC_RAW, align 4
  %4 = call i64 @clock_gettime(i32 %3, %struct.timespec* %1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @ksft_exit_fail()
  br label %9

9:                                                ; preds = %6, %0
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @mono_raw_base, align 4
  %12 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %13 = call i64 @clock_gettime(i32 %12, %struct.timespec* %1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (...) @ksft_exit_fail()
  br label %18

18:                                               ; preds = %15, %9
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @mono_base, align 4
  %21 = load i32, i32* @_SC_CLK_TCK, align 4
  %22 = call i32 @sysconf(i32 %21)
  store i32 %22, i32* @user_hz, align 4
  %23 = call double @get_sample(%struct.sample* %2)
  %24 = fdiv double %23, 2.000000e+00
  %25 = fptosi double %24 to i32
  store i32 %25, i32* @precision, align 4
  %26 = load i32, i32* @precision, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double 1.000000e+09, %27
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), double %28)
  %30 = load i32, i32* @precision, align 4
  %31 = load i32, i32* @MAX_PRECISION, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %18
  %34 = load i32, i32* @precision, align 4
  %35 = sitofp i32 %34 to double
  %36 = fmul double 1.000000e+09, %35
  %37 = fptosi double %36 to i32
  %38 = load i32, i32* @MAX_PRECISION, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double 1.000000e+09, %39
  %41 = fptosi double %40 to i32
  %42 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %33, %18
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %46, %48
  %50 = call i32 @srand(i32 %49)
  %51 = call i32 @run_test(i32 1, double 0.000000e+00, double 0.000000e+00)
  ret void
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local double @get_sample(%struct.sample*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ksft_exit_skip(i8*, i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @run_test(i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
