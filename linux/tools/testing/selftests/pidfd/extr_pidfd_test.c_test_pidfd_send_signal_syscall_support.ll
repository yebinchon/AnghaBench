; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_syscall_support.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_syscall_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"pidfd_send_signal check for support\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/proc/self\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s test: Failed to open process file descriptor\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"%s test: pidfd_send_signal() syscall not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s test: Failed to send signal\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"%s test: pidfd_send_signal() syscall is supported. Tests can be executed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pidfd_send_signal_syscall_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pidfd_send_signal_syscall_support() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
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
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @sys_pidfd_send_signal(i32 %14, i32 0, i32* null, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOSYS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*) #1

declare dso_local i32 @sys_pidfd_send_signal(i32, i32, i32*, i32) #1

declare dso_local i32 @ksft_exit_skip(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
