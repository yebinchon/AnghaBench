; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_strlen.c_testcase.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_strlen.c_testcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"memalign\00", align 1
@ITERATIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @testcase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testcase() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = load i64, i64* @SIZE, align 8
  %8 = call i8* @memalign(i32 128, i64 %7)
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %0
  %15 = call i32 @srandom(i32 1)
  %16 = load i8*, i8** %1, align 8
  %17 = load i64, i64* @SIZE, align 8
  %18 = call i32 @memset(i8* %16, i32 0, i64 %17)
  store i64 0, i64* %2, align 8
  br label %19

19:                                               ; preds = %39, %14
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @SIZE, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %28, %23
  %25 = call i32 (...) @random()
  %26 = and i32 %25, 127
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  br label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %3, align 1
  %30 = icmp ne i8 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %24, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %3, align 1
  %34 = load i8*, i8** %1, align 8
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %36, align 1
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @test_one(i8* %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %2, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %2, align 8
  br label %19

42:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %43

43:                                               ; preds = %86, %42
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* @ITERATIONS, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @SIZE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %57, %52
  %54 = call i32 (...) @random()
  %55 = and i32 %54, 127
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %5, align 1
  br label %57

57:                                               ; preds = %53
  %58 = load i8, i8* %5, align 1
  %59 = icmp ne i8 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %53, label %61

61:                                               ; preds = %57
  %62 = load i8, i8* %5, align 1
  %63 = load i8*, i8** %1, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 %62, i8* %65, align 1
  br label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %48

69:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %70

70:                                               ; preds = %82, %69
  %71 = load i64, i64* %4, align 8
  %72 = icmp ult i64 %71, 8
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i8*, i8** %1, align 8
  %75 = load i64, i64* @SIZE, align 8
  %76 = sub i64 %75, 1
  %77 = load i64, i64* %4, align 8
  %78 = sub i64 %76, %77
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %1, align 8
  %81 = call i32 @test_one(i8* %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %4, align 8
  br label %70

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %2, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %2, align 8
  br label %43

89:                                               ; preds = %43
  store i64 0, i64* %2, align 8
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i64, i64* %2, align 8
  %92 = load i64, i64* @SIZE, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %99, %94
  %96 = call i32 (...) @random()
  %97 = and i32 %96, 127
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %6, align 1
  br label %99

99:                                               ; preds = %95
  %100 = load i8, i8* %6, align 1
  %101 = icmp ne i8 %100, 0
  %102 = xor i1 %101, true
  br i1 %102, label %95, label %103

103:                                              ; preds = %99
  %104 = load i8, i8* %6, align 1
  %105 = load i8*, i8** %1, align 8
  %106 = load i64, i64* %2, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 %104, i8* %107, align 1
  br label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %2, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %2, align 8
  br label %90

111:                                              ; preds = %90
  %112 = load i8*, i8** %1, align 8
  %113 = call i32 @bench_test(i8* %112)
  %114 = load i8*, i8** %1, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 16
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %1, align 8
  %117 = call i32 @bench_test(i8* %116)
  %118 = load i8*, i8** %1, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 8
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %1, align 8
  %121 = call i32 @bench_test(i8* %120)
  %122 = load i8*, i8** %1, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %1, align 8
  %125 = call i32 @bench_test(i8* %124)
  %126 = load i8*, i8** %1, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %1, align 8
  %129 = call i32 @bench_test(i8* %128)
  %130 = load i8*, i8** %1, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %1, align 8
  %133 = call i32 @bench_test(i8* %132)
  %134 = load i8*, i8** %1, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 0, i8* %135, align 1
  %136 = load i8*, i8** %1, align 8
  %137 = call i32 @bench_test(i8* %136)
  ret i32 0
}

declare dso_local i8* @memalign(i32, i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @test_one(i8*) #1

declare dso_local i32 @bench_test(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
