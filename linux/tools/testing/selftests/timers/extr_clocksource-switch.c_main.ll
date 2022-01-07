; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_clocksource-switch.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_clocksource-switch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clocksource_list = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error: You probably need to run this as root\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Validating clocksource %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Running Asynchronous Switching Tests...\0A\00", align 1
@WNOHANG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %12 = call i32 @get_cur_clocksource(i8* %11, i32 512)
  %13 = load i8**, i8*** @clocksource_list, align 8
  %14 = call i32 @get_clocksources(i8** %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8**, i8*** @clocksource_list, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @change_clocksource(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %93

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load i8**, i8*** @clocksource_list, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i8**, i8*** @clocksource_list, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @change_clocksource(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 -1, i32* %9, align 4
  br label %84

42:                                               ; preds = %27
  %43 = call i32 @run_tests(i32 5)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %9, align 4
  br label %84

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %23

50:                                               ; preds = %23
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i64 (...) @fork()
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = call i32 @run_tests(i32 60)
  store i32 %56, i32* %3, align 4
  br label %93

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %82, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @WNOHANG, align 4
  %62 = call i64 @waitpid(i64 %60, i32* %9, i32 %61)
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i8**, i8*** @clocksource_list, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @change_clocksource(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 -1, i32* %9, align 4
  br label %84

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %65

82:                                               ; preds = %65
  br label %58

83:                                               ; preds = %58
  br label %84

84:                                               ; preds = %83, %77, %45, %41
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %86 = call i64 @change_clocksource(i8* %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (...) @ksft_exit_fail()
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %84
  %92 = call i32 (...) @ksft_exit_pass()
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %89, %55, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @get_cur_clocksource(i8*, i32) #1

declare dso_local i32 @get_clocksources(i8**) #1

declare dso_local i64 @change_clocksource(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @run_tests(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
