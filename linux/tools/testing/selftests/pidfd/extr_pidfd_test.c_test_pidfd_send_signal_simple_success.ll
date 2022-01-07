; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_simple_success.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_simple_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"pidfd_send_signal send SIGUSR1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/proc/self\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s test: Failed to open process file descriptor\0A\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@set_signal_received_on_sigusr1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s test: Failed to send signal\0A\00", align 1
@signal_received = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%s test: Failed to receive signal\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s test: Sent signal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pidfd_send_signal_simple_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pidfd_send_signal_simple_success() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @O_DIRECTORY, align 4
  %5 = load i32, i32* @O_CLOEXEC, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* @SIGUSR1, align 4
  %15 = load i32, i32* @set_signal_received_on_sigusr1, align 4
  %16 = call i32 @signal(i32 %14, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @SIGUSR1, align 4
  %19 = call i32 @sys_pidfd_send_signal(i32 %17, i32 %18, i32* null, i32 0)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* @signal_received, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %27
  store i32 0, i32* @signal_received, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %34)
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sys_pidfd_send_signal(i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
