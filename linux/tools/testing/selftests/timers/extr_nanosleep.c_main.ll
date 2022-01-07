; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nanosleep.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nanosleep.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@NR_CLOCKIDS = common dso_local global i32 0, align 4
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i32 0, align 4
@CLOCK_THREAD_CPUTIME_ID = common dso_local global i32 0, align 4
@CLOCK_HWSPECIFIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Nanosleep %-31s \00", align 1
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

10:                                               ; preds = %60, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NR_CLOCKIDS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %63

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
  br label %60

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @clockstring(i32 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fflush(i32 %31)
  store i64 10, i64* %6, align 8
  br label %33

33:                                               ; preds = %54, %27
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @NSEC_PER_SEC, align 4
  %36 = mul nsw i32 %35, 10
  %37 = sext i32 %36 to i64
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @nanosleep_test(i32 %40, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @UNSUPPORTED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %59

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 (...) @ksft_exit_fail()
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  %56 = mul nsw i64 %55, 100
  store i64 %56, i64* %6, align 8
  br label %33

57:                                               ; preds = %33
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %10

63:                                               ; preds = %10
  %64 = call i32 (...) @ksft_exit_pass()
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @clockstring(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @nanosleep_test(i32, i64) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
