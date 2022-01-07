; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_harness.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_harness.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@timeout = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown error from waitpid\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"!! force killing %s\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"!! killing %s\0A\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@KILL_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"!! child died by signal %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"!! child died by unknown cause\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_test(i32 ()* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 ()*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 ()* %0, i32 ()** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = call i32 (...) @fork()
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 @setpgid(i32 0, i32 0)
  %17 = load i32 ()*, i32 ()** %4, align 8
  %18 = call i32 %17()
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @setpgid(i32 %27, i32 %28)
  %30 = load i32, i32* @timeout, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @timeout, align 4
  %34 = call i32 @alarm(i32 %33)
  br label %35

35:                                               ; preds = %32, %26
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @waitpid(i32 %37, i32* %8, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EINTR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32, i32* @SIGKILL, align 4
  %56 = call i32 @kill(i32 %54, i32 %55)
  store i32 1, i32* %3, align 4
  br label %90

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 0, %60
  %62 = load i32, i32* @SIGTERM, align 4
  %63 = call i32 @kill(i32 %61, i32 %62)
  store i32 1, i32* %6, align 4
  %64 = load i32, i32* @KILL_TIMEOUT, align 4
  %65 = call i32 @alarm(i32 %64)
  br label %36

66:                                               ; preds = %36
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 0, %67
  %69 = load i32, i32* @SIGTERM, align 4
  %70 = call i32 @kill(i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @WIFEXITED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @WEXITSTATUS(i32 %75)
  store i32 %76, i32* %8, align 4
  br label %88

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @WIFSIGNALED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @WTERMSIG(i32 %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %87

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %50, %45, %23
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @setpgid(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
