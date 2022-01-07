; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_set-timer-lat.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_set-timer-lat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@SIGRTMAX = common dso_local global i32 0, align 4
@sigalarm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting timers for every %i seconds\0A\00", align 1
@TIMER_SECS = common dso_local global i32 0, align 4
@clock_id = common dso_local global i64 0, align 8
@NR_CLOCKIDS = common dso_local global i64 0, align 8
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i64 0, align 8
@CLOCK_THREAD_CPUTIME_ID = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC_RAW = common dso_local global i64 0, align 8
@CLOCK_REALTIME_COARSE = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC_COARSE = common dso_local global i64 0, align 8
@CLOCK_HWSPECIFIC = common dso_local global i64 0, align 8
@TIMER_ABSTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @SIGRTMAX, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  %7 = call i32 @sigfillset(i32* %6)
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @sigalarm, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @sigaction(i32 %11, %struct.sigaction* %2, i32* null)
  %13 = load i32, i32* @TIMER_SECS, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i64 0, i64* @clock_id, align 8
  br label %15

15:                                               ; preds = %63, %0
  %16 = load i64, i64* @clock_id, align 8
  %17 = load i64, i64* @NR_CLOCKIDS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load i64, i64* @clock_id, align 8
  %21 = load i64, i64* @CLOCK_PROCESS_CPUTIME_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @clock_id, align 8
  %25 = load i64, i64* @CLOCK_THREAD_CPUTIME_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @clock_id, align 8
  %29 = load i64, i64* @CLOCK_MONOTONIC_RAW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @clock_id, align 8
  %33 = load i64, i64* @CLOCK_REALTIME_COARSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @clock_id, align 8
  %37 = load i64, i64* @CLOCK_MONOTONIC_COARSE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @clock_id, align 8
  %41 = load i64, i64* @CLOCK_HWSPECIFIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35, %31, %27, %23, %19
  br label %63

44:                                               ; preds = %39
  %45 = load i64, i64* @clock_id, align 8
  %46 = load i32, i32* @TIMER_ABSTIME, align 4
  %47 = call i32 @do_timer(i64 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @clock_id, align 8
  %51 = call i32 @do_timer(i64 %50, i32 0)
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @clock_id, align 8
  %55 = load i32, i32* @TIMER_ABSTIME, align 4
  %56 = call i32 @do_timer_oneshot(i64 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i64, i64* @clock_id, align 8
  %60 = call i32 @do_timer_oneshot(i64 %59, i32 0)
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %44, %43
  %64 = load i64, i64* @clock_id, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* @clock_id, align 8
  br label %15

66:                                               ; preds = %15
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (...) @ksft_exit_fail()
  store i32 %70, i32* %1, align 4
  br label %73

71:                                               ; preds = %66
  %72 = call i32 (...) @ksft_exit_pass()
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @do_timer(i64, i32) #1

declare dso_local i32 @do_timer_oneshot(i64, i32) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
