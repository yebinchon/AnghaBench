; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_poll_exec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_poll_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"pidfd_poll check for premature notification on child thread exec\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Parent: pid: %d\0A\00", align 1
@CLONE_PIDFD = common dso_local global i32 0, align 4
@child_poll_exec_test = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%s test: pidfd_clone failed (ret %d, errno %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Parent: Waiting for Child (%d) to complete.\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Parent: error\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Parent: Child process waited for.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Time waited for child: %lu\0A\00", align 1
@CHILD_THREAD_MIN_WAIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"%s test: Failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"%s test: Passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_pidfd_poll_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pidfd_poll_exec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %11 = call i32 @time(i32* null)
  store i32 %11, i32* %8, align 4
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = call i32 (...) @getpid()
  %13 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @CLONE_PIDFD, align 4
  %15 = load i32, i32* @child_poll_exec_test, align 4
  %16 = call i32 @pidfd_clone(i32 %14, i32* %4, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @waitpid(i32 %30, i32* %5, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  br label %47

43:                                               ; preds = %24
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @poll_pidfd(i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %42
  %48 = call i32 @time(i32* null)
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @CHILD_THREAD_MIN_WAIT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @CHILD_THREAD_MIN_WAIT, align 4
  %61 = add nsw i32 %60, 2
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %47
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  br label %69

66:                                               ; preds = %58
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ksft_print_msg(i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @pidfd_clone(i32, i32*, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, ...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @poll_pidfd(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
