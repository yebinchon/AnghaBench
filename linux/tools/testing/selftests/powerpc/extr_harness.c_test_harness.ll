; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_harness.c_test_harness.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_harness.c_test_harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_VERSION = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sig_action = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sigaction (sigint)\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"sigaction (sigalrm)\00", align 1
@MAGIC_SKIP_RETURN_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_harness(i32 ()* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 ()*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 ()* %0, i32 ()** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @test_start(i8* %7)
  %9 = load i32, i32* @GIT_VERSION, align 4
  %10 = call i32 @test_set_git_version(i32 %9)
  %11 = load i32, i32* @SIGINT, align 4
  %12 = call i64 @sigaction(i32 %11, i32* @sig_action, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @test_error(i8* %16)
  store i32 1, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load i32, i32* @SIGALRM, align 4
  %20 = call i64 @sigaction(i32 %19, i32* @sig_action, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @test_error(i8* %24)
  store i32 1, i32* %3, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load i32 ()*, i32 ()** %4, align 8
  %28 = bitcast i32 ()* %27 to i32 (...)*
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @run_test(i32 (...)* %28, i8* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAGIC_SKIP_RETURN_VALUE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @test_skip(i8* %35)
  store i32 0, i32* %6, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @test_finish(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %22, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @test_start(i8*) #1

declare dso_local i32 @test_set_git_version(i32) #1

declare dso_local i64 @sigaction(i32, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @test_error(i8*) #1

declare dso_local i32 @run_test(i32 (...)*, i8*) #1

declare dso_local i32 @test_skip(i8*) #1

declare dso_local i32 @test_finish(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
