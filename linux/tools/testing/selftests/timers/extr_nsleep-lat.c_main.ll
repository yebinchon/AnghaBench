; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nsleep-lat.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nsleep-lat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@NR_CLOCKIDS = common dso_local global i32 0, align 4
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i32 0, align 4
@CLOCK_THREAD_CPUTIME_ID = common dso_local global i32 0, align 4
@CLOCK_HWSPECIFIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nsleep latency %-26s \00", align 1
@stdout = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"[UNSUPPORTED]\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"[FAILED]\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @CLOCK_REALTIME, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %63, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NR_CLOCKIDS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %66

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CLOCK_THREAD_CPUTIME_ID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CLOCK_HWSPECIFIC, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14
  br label %63

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @clockstring(i32 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fflush(i32 %31)
  store i64 10, i64* %6, align 8
  br label %33

33:                                               ; preds = %46, %27
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @NSEC_PER_SEC, align 4
  %36 = mul nsw i32 %35, 10
  %37 = sext i32 %36 to i64
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @nanosleep_lat_test(i32 %40, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %49

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = mul nsw i64 %47, 100
  store i64 %48, i64* %6, align 8
  br label %33

49:                                               ; preds = %45, %33
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @UNSUPPORTED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 (...) @ksft_exit_fail()
  store i32 %60, i32* %3, align 4
  br label %68

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %53, %26
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %10

66:                                               ; preds = %10
  %67 = call i32 (...) @ksft_exit_pass()
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @clockstring(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @nanosleep_lat_test(i32, i64) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
