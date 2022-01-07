; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_64values.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_64values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_values_64 = common dso_local global i64* null, align 8
@constant_time_lt_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"constant_time_lt_64\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"test_64values failed i=%d j=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_64values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_64values(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i64*, i64** @test_values_64, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  store i32 1, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i64*, i64** @test_values_64, align 8
  %17 = call i64 @OSSL_NELEM(i64* %16)
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = load i64*, i64** @test_values_64, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @test_binary_op_64(i32* @constant_time_lt_64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @test_select_64(i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34, %20
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @TEST_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @OSSL_NELEM(i64*) #1

declare dso_local i32 @test_binary_op_64(i32*, i8*, i64, i64, i32) #1

declare dso_local i32 @test_select_64(i64, i64) #1

declare dso_local i32 @TEST_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
