; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_check_timer_create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_check_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.itimerspec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Check timer_create() \00", align 1
@CLOCK_THREAD_CPUTIME_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"per thread... \00", align 1
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"per process... \00", align 1
@stdout = common dso_local global i32 0, align 4
@done = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Can't create timer\0A\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't call gettimeofday()\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Can't set timer\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_timer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_timer_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.itimerspec, align 4
  store i32 %0, i32* %3, align 4
  %9 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @DELAY, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CLOCK_THREAD_CPUTIME_ID, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @fflush(i32 %26)
  store i64 0, i64* @done, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @timer_create(i32 %28, i32* null, i32* %5)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %69

34:                                               ; preds = %25
  %35 = load i32, i32* @SIGALRM, align 4
  %36 = load i32, i32* @sig_handler, align 4
  %37 = call i32 @signal(i32 %35, i32 %36)
  %38 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %69

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @timer_settime(i32 %44, i32 0, %struct.itimerspec* %8, i32* null)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %69

50:                                               ; preds = %43
  %51 = call i32 (...) @user_loop()
  %52 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %69

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @check_diff(i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %68

66:                                               ; preds = %57
  %67 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %64
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %55, %48, %41, %32
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @timer_create(i32, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

declare dso_local i32 @user_loop(...) #1

declare dso_local i32 @check_diff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
