; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-001-lookup.c_test_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-001-lookup.c_test_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%u\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"/proc/self/fd/%c%u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"/proc/self/fd/%u%c\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%d\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %7, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %11 = call i32 @test_lookup_pass(i8* %10)
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ule i32 %13, 255
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %20, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %25 = call i32 @test_lookup_fail(i8* %24)
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %12

29:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp ule i32 %31, 255
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %38, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %43 = call i32 @test_lookup_fail(i8* %42)
  br label %44

44:                                               ; preds = %37, %36
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load i32, i32* @INT_MIN, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %60, %47
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @INT_MIN, align 4
  %52 = add nsw i32 %51, 1024
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %55, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %59 = call i32 @test_lookup_fail(i8* %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %49

63:                                               ; preds = %49
  store i32 -1024, i32* %6, align 4
  br label %64

64:                                               ; preds = %73, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %68, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %72 = call i32 @test_lookup_fail(i8* %71)
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %64

76:                                               ; preds = %64
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = sub nsw i32 %77, 1024
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %90, %76
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @INT_MAX, align 4
  %82 = add i32 %81, 1024
  %83 = icmp ule i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %85, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %89 = call i32 @test_lookup_fail(i8* %88)
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %79

93:                                               ; preds = %79
  %94 = load i32, i32* @UINT_MAX, align 4
  %95 = sub nsw i32 %94, 1024
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %105, %93
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %100, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %104 = call i32 @test_lookup_fail(i8* %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %96

108:                                              ; preds = %96
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @test_lookup_pass(i8*) #1

declare dso_local i32 @test_lookup_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
