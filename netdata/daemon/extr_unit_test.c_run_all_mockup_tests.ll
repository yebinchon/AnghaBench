; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_run_all_mockup_tests.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_run_all_mockup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test1 = common dso_local global i32 0, align 4
@test2 = common dso_local global i32 0, align 4
@test3 = common dso_local global i32 0, align 4
@test4 = common dso_local global i32 0, align 4
@test5 = common dso_local global i32 0, align 4
@test5b = common dso_local global i32 0, align 4
@test6 = common dso_local global i32 0, align 4
@test7 = common dso_local global i32 0, align 4
@test8 = common dso_local global i32 0, align 4
@test9 = common dso_local global i32 0, align 4
@test10 = common dso_local global i32 0, align 4
@test11 = common dso_local global i32 0, align 4
@test12 = common dso_local global i32 0, align 4
@test13 = common dso_local global i32 0, align 4
@test14 = common dso_local global i32 0, align 4
@test14b = common dso_local global i32 0, align 4
@test14c = common dso_local global i32 0, align 4
@test15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_all_mockup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @check_strdupz_path_subpath()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %90

5:                                                ; preds = %0
  %6 = call i64 (...) @check_number_printing()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 1, i32* %1, align 4
  br label %90

9:                                                ; preds = %5
  %10 = call i64 (...) @check_rrdcalc_comparisons()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %90

13:                                               ; preds = %9
  %14 = call i32 (...) @test_variable_renames()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %90

17:                                               ; preds = %13
  %18 = call i64 @run_test(i32* @test1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %90

21:                                               ; preds = %17
  %22 = call i64 @run_test(i32* @test2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %90

25:                                               ; preds = %21
  %26 = call i64 @run_test(i32* @test3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  br label %90

29:                                               ; preds = %25
  %30 = call i64 @run_test(i32* @test4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %90

33:                                               ; preds = %29
  %34 = call i64 @run_test(i32* @test5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %1, align 4
  br label %90

37:                                               ; preds = %33
  %38 = call i64 @run_test(i32* @test5b)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %1, align 4
  br label %90

41:                                               ; preds = %37
  %42 = call i64 @run_test(i32* @test6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %1, align 4
  br label %90

45:                                               ; preds = %41
  %46 = call i64 @run_test(i32* @test7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %1, align 4
  br label %90

49:                                               ; preds = %45
  %50 = call i64 @run_test(i32* @test8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %1, align 4
  br label %90

53:                                               ; preds = %49
  %54 = call i64 @run_test(i32* @test9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %1, align 4
  br label %90

57:                                               ; preds = %53
  %58 = call i64 @run_test(i32* @test10)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %1, align 4
  br label %90

61:                                               ; preds = %57
  %62 = call i64 @run_test(i32* @test11)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* %1, align 4
  br label %90

65:                                               ; preds = %61
  %66 = call i64 @run_test(i32* @test12)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %1, align 4
  br label %90

69:                                               ; preds = %65
  %70 = call i64 @run_test(i32* @test13)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %1, align 4
  br label %90

73:                                               ; preds = %69
  %74 = call i64 @run_test(i32* @test14)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %1, align 4
  br label %90

77:                                               ; preds = %73
  %78 = call i64 @run_test(i32* @test14b)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 1, i32* %1, align 4
  br label %90

81:                                               ; preds = %77
  %82 = call i64 @run_test(i32* @test14c)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 1, i32* %1, align 4
  br label %90

85:                                               ; preds = %81
  %86 = call i64 @run_test(i32* @test15)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* %1, align 4
  br label %90

89:                                               ; preds = %85
  store i32 0, i32* %1, align 4
  br label %90

90:                                               ; preds = %89, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %4
  %91 = load i32, i32* %1, align 4
  ret i32 %91
}

declare dso_local i64 @check_strdupz_path_subpath(...) #1

declare dso_local i64 @check_number_printing(...) #1

declare dso_local i64 @check_rrdcalc_comparisons(...) #1

declare dso_local i32 @test_variable_renames(...) #1

declare dso_local i64 @run_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
