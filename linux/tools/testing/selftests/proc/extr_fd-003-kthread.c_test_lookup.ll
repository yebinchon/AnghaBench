; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-003-kthread.c_test_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-003-kthread.c_test_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @INT_MIN, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @INT_MIN, align 4
  %10 = add nsw i32 %9, 1024
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @snprintf(i8* %13, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %18 = call i32 @test_lookup_fail(i32 %16, i8* %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

22:                                               ; preds = %7
  store i32 -1024, i32* %5, align 4
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 1024
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @snprintf(i8* %27, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %32 = call i32 @test_lookup_fail(i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = sub nsw i32 %37, 1024
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %51, %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @INT_MAX, align 4
  %42 = add i32 %41, 1024
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @snprintf(i8* %45, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %50 = call i32 @test_lookup_fail(i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* @UINT_MAX, align 4
  %56 = sub nsw i32 %55, 1024
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %67, %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @snprintf(i8* %61, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %66 = call i32 @test_lookup_fail(i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %57

70:                                               ; preds = %57
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @test_lookup_fail(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
