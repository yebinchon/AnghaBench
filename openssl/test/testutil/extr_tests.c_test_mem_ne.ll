; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_mem_ne.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_mem_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_mem_ne(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = icmp eq i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i8*, i8** %16, align 8
  %22 = icmp eq i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = xor i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %52

27:                                               ; preds = %8
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %17, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %52

32:                                               ; preds = %27
  %33 = load i8*, i8** %14, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i64 @memcmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %32
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i64, i64* %17, align 8
  %50 = call i32 @test_fail_memory_message(i32* null, i8* %42, i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46, i64 %47, i8* %48, i64 %49)
  store i32 0, i32* %9, align 4
  br label %52

51:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %41, %31, %26
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @test_fail_memory_message(i32*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
