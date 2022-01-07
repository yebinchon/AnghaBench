; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leapcrash.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leapcrash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32 }
%struct.timeval = type { i32, i64 }

@stdout = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"This runs for a few minutes. Press ctrl-c to stop\0A\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Error: You're likely not running with proper (ie: root) permissions\0A\00", align 1
@ADJ_STATUS = common dso_local global i64 0, align 8
@STA_INS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timex, align 8
  %3 = alloca %struct.timespec, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @setbuf(i32 %7, i32* null)
  %9 = load i32, i32* @SIGINT, align 4
  %10 = load i32, i32* @handler, align 4
  %11 = call i32 @signal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGKILL, align 4
  %13 = load i32, i32* @handler, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @clear_time_state()
  %17 = load i32, i32* @CLOCK_REALTIME, align 4
  %18 = call i32 @clock_gettime(i32 %17, %struct.timespec* %3)
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %21, 86400
  %23 = sub nsw i32 86400, %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %60, %0
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 20
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 2
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = call i64 @settimeofday(%struct.timeval* %6, i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (...) @ksft_exit_fail()
  store i32 %38, i32* %1, align 4
  br label %66

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.timex, %struct.timex* %2, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = call i32 @adjtimex(%struct.timex* %2)
  br label %42

42:                                               ; preds = %49, %39
  %43 = getelementptr inbounds %struct.timex, %struct.timex* %2, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i64, i64* @ADJ_STATUS, align 8
  %51 = getelementptr inbounds %struct.timex, %struct.timex* %2, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* @STA_INS, align 4
  %53 = getelementptr inbounds %struct.timex, %struct.timex* %2, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = call i32 @adjtimex(%struct.timex* %2)
  br label %42

55:                                               ; preds = %42
  %56 = call i32 (...) @clear_time_state()
  %57 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @fflush(i32 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %26

63:                                               ; preds = %26
  %64 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 (...) @ksft_exit_pass()
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %63, %36
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @clear_time_state(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @settimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
