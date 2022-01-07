; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_poll_leader_exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_poll_leader_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [74 x i8] c"pidfd_poll check for premature notification on non-emptygroup leader exit\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@child_exit_secs = common dso_local global i32* null, align 8
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s test: mmap failed (errno %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Parent: pid: %d\0A\00", align 1
@CLONE_PIDFD = common dso_local global i32 0, align 4
@child_poll_leader_exit_test = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"%s test: pidfd_clone failed (ret %d, errno %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Parent: Waiting for Child (%d) to complete.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Parent: error\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Parent: Child process waited for.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Time since child exit: %lu\0A\00", align 1
@CHILD_THREAD_MIN_WAIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"%s test: Failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s test: Passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_pidfd_poll_leader_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pidfd_poll_leader_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %10 = call i32 @time(i32* null)
  store i32 %10, i32* %7, align 4
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %11 = load i32, i32* @PROT_READ, align 4
  %12 = load i32, i32* @PROT_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MAP_SHARED, align 4
  %15 = load i32, i32* @MAP_ANONYMOUS, align 4
  %16 = or i32 %14, %15
  %17 = call i32* @mmap(i32* null, i32 4, i32 %13, i32 %16, i32 -1, i32 0)
  store i32* %17, i32** @child_exit_secs, align 8
  %18 = load i32*, i32** @child_exit_secs, align 8
  %19 = load i32*, i32** @MAP_FAILED, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = call i32 (...) @getpid()
  %27 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @CLONE_PIDFD, align 4
  %29 = load i32, i32* @child_poll_leader_exit_test, align 4
  %30 = call i32 @pidfd_clone(i32 %28, i32* %4, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @waitpid(i32 %44, i32* %5, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  br label %56

51:                                               ; preds = %38
  %52 = call i32 @sleep(i32 1)
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @poll_pidfd(i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = call i32 @time(i32* null)
  %64 = load i32*, i32** @child_exit_secs, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @CHILD_THREAD_MIN_WAIT, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CHILD_THREAD_MIN_WAIT, align 4
  %77 = add nsw i32 %76, 2
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %62
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %80)
  br label %85

82:                                               ; preds = %74
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, ...) #1

declare dso_local i32 @ksft_print_msg(i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @pidfd_clone(i32, i32*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @poll_pidfd(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
