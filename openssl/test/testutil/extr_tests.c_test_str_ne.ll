; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_str_ne.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_str_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_str_ne(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = icmp eq i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = xor i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %56

23:                                               ; preds = %6
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i64 @strcmp(i8* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26, %23
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %43

40:                                               ; preds = %31
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @strlen(i8* %41)
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 0, %39 ], [ %42, %40 ]
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @strlen(i8* %50)
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  %54 = call i32 @test_fail_string_message(i32* null, i8* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %44, i8* %45, i32 %53)
  store i32 0, i32* %7, align 4
  br label %56

55:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %52, %22
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @test_fail_string_message(i32*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
