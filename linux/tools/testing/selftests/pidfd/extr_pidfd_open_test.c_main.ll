; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_open_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_open_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"%s - succeeded to open pidfd for invalid pid -1\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"do not allow invalid pid test: passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"%s - succeeded to open pidfd with invalid flag value specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"do not allow invalid flag test: passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s - failed to open pidfd\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"open a new pidfd test: passed\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Pid:\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"pidfd %d refers to process with pid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = call i32 @ksft_set_plan(i32 3)
  %10 = call i32 @sys_pidfd_open(i32 -1, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %44

17:                                               ; preds = %2
  %18 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (...) @getpid()
  %20 = call i32 @sys_pidfd_open(i32 %19, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %44

27:                                               ; preds = %17
  %28 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 (...) @getpid()
  %30 = call i32 @sys_pidfd_open(i32 %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %44

37:                                               ; preds = %27
  %38 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @get_pid_from_fdinfo_file(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %41, i32 %42)
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %33, %23, %13
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @close(i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 (...) @ksft_exit_pass()
  br label %57

55:                                               ; preds = %50
  %56 = call i32 (...) @ksft_exit_fail()
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  ret i32 %58
}

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @sys_pidfd_open(i32, i32) #1

declare dso_local i32 @ksft_print_msg(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @get_pid_from_fdinfo_file(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ksft_exit_pass(...) #1

declare dso_local i32 @ksft_exit_fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
