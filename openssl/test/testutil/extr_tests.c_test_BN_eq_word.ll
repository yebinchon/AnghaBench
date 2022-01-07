; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_BN_eq_word.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_tests.c_test_BN_eq_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"BIGNUM\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"==\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_BN_eq_word(i8* %0, i32 %1, i8* %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %12, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @BN_is_word(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %37

23:                                               ; preds = %17, %6
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @BN_set_word(i32* %25, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @test_fail_bignum_message(i32* null, i8* %28, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32* %33)
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @BN_free(i32* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %23, %22
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i64 @BN_is_word(i32*, i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @test_fail_bignum_message(i32*, i8*, i32, i8*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
