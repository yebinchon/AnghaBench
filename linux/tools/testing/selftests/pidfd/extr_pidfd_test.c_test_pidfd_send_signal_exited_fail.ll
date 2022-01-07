; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_exited_fail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_exited_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"pidfd_send_signal signal exited process\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s test: Failed to create new process\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"/proc/%d\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"%s test: Failed to open process file descriptor\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"%s test: Managed to send signal to process even though it should have failed\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"%s test: Expected to receive ESRCH as errno value but received %d instead\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s test: Failed to send signal as expected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pidfd_send_signal_exited_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pidfd_send_signal_exited_fail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = call i64 (...) @fork()
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EXIT_SUCCESS, align 4
  %18 = call i32 @_exit(i32 %17) #3
  unreachable

19:                                               ; preds = %13
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @snprintf(i8* %20, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %24 = load i32, i32* @O_DIRECTORY, align 4
  %25 = load i32, i32* @O_CLOEXEC, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %23, i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @wait_for_pid(i64 %28)
  %30 = load i32, i32* %1, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %19
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @sys_pidfd_send_signal(i32 %36, i32 0, i32* null, i32 0)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ESRCH, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  ret i32 0
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @wait_for_pid(i64) #1

declare dso_local i32 @sys_pidfd_send_signal(i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
