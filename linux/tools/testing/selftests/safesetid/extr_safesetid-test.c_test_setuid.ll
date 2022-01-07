; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/safesetid/extr_safesetid-test.c_test_setuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/safesetid/extr_safesetid-test.c_test_setuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"fork\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i64 0, align 8
@WUNTRACED = common dso_local global i32 0, align 4
@WCONTINUED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"waitpid\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unexpected success\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unexpected failure\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"killed unexpectedly\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unexpected signal: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"unexpected status: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"should not reach here\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @test_setuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setuid(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @fork()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @setuid(i64 %17)
  %19 = call i64 (...) @getuid()
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* @EXIT_SUCCESS, align 8
  %24 = call i32 @exit(i64 %23) #3
  unreachable

25:                                               ; preds = %16
  %26 = load i64, i64* @EXIT_FAILURE, align 8
  %27 = call i32 @exit(i64 %26) #3
  unreachable

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %96, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @WUNTRACED, align 4
  %32 = load i32, i32* @WCONTINUED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @waitpid(i32 %30, i32* %7, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @WIFEXITED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @WEXITSTATUS(i32 %44)
  %46 = load i64, i64* @EXIT_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %101

52:                                               ; preds = %48
  %53 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52
  br label %62

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %61

60:                                               ; preds = %55
  br label %101

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %54
  br label %86

63:                                               ; preds = %39
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @WIFSIGNALED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @WTERMSIG(i32 %68)
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %77

76:                                               ; preds = %71
  br label %101

77:                                               ; preds = %74
  br label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %77
  br label %85

82:                                               ; preds = %63
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %81
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @WIFEXITED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @WIFSIGNALED(i32 %92)
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i1 [ false, %87 ], [ %95, %91 ]
  br i1 %97, label %29, label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98
  %100 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %76, %60, %51
  ret void
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @setuid(i64) #1

declare dso_local i64 @getuid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i64) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

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
