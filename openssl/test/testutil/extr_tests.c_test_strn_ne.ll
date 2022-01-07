; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_strn_ne.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_strn_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_strn_ne(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = icmp eq i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i8*, i8** %14, align 8
  %20 = icmp eq i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = xor i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %61

25:                                               ; preds = %7
  %26 = load i8*, i8** %13, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i64 @strncmp(i8* %29, i8* %30, i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %28, %25
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %47

43:                                               ; preds = %34
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @OPENSSL_strnlen(i8* %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i32 [ 0, %42 ], [ %46, %43 ]
  %49 = load i8*, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @OPENSSL_strnlen(i8* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %52
  %58 = phi i32 [ 0, %52 ], [ %56, %53 ]
  %59 = call i32 @test_fail_string_message(i32* null, i8* %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %48, i8* %49, i32 %58)
  store i32 0, i32* %8, align 4
  br label %61

60:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %57, %24
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @test_fail_string_message(i32*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @OPENSSL_strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
