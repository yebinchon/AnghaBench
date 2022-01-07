; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_set-2038.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_set-2038.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@YEAR_1901 = common dso_local global i64 0, align 8
@YEAR_MAX = common dso_local global i64 0, align 8
@YEAR_2262 = common dso_local global i64 0, align 8
@YEAR_1970 = common dso_local global i64 0, align 8
@YEAR_2038 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %18 [
    i32 100, label %17
  ]

17:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %15
  br label %10

19:                                               ; preds = %10
  %20 = call i64 @time(i32 0)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* @YEAR_1901, align 8
  %22 = call i32 @settime(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %73

25:                                               ; preds = %19
  %26 = load i64, i64* @YEAR_MAX, align 8
  %27 = call i32 @settime(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %73

30:                                               ; preds = %25
  %31 = call i64 (...) @is32bits()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @YEAR_2262, align 8
  %35 = call i32 @settime(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %73

38:                                               ; preds = %33, %30
  %39 = load i64, i64* @YEAR_1970, align 8
  %40 = call i32 @settime(i64 %39)
  %41 = call i32 (...) @do_tests()
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %73

45:                                               ; preds = %38
  %46 = load i64, i64* @YEAR_2038, align 8
  %47 = sub nsw i64 %46, 600
  %48 = call i32 @settime(i64 %47)
  %49 = call i32 (...) @do_tests()
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %73

53:                                               ; preds = %45
  %54 = call i64 (...) @is32bits()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %73

60:                                               ; preds = %56, %53
  %61 = load i64, i64* @YEAR_2038, align 8
  %62 = sub nsw i64 %61, 10
  %63 = call i32 @settime(i64 %62)
  %64 = call i32 (...) @do_tests()
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %73

68:                                               ; preds = %60
  %69 = load i64, i64* @YEAR_2262, align 8
  %70 = sub nsw i64 %69, 600
  %71 = call i32 @settime(i64 %70)
  %72 = call i32 (...) @do_tests()
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %67, %59, %52, %44, %37, %29, %24
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @settime(i64 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (...) @ksft_exit_fail()
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %73
  %81 = call i32 (...) @ksft_exit_pass()
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @settime(i64) #1

declare dso_local i64 @is32bits(...) #1

declare dso_local i32 @do_tests(...) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
