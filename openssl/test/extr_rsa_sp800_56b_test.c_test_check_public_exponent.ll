; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_public_exponent.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_public_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_check_public_exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_check_public_exponent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  %3 = call i32* (...) @BN_new()
  store i32* %3, i32** %2, align 8
  %4 = call i64 @TEST_ptr(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %59

6:                                                ; preds = %0
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @BN_set_word(i32* %7, i32 65535)
  %9 = call i64 @TEST_true(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %6
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @rsa_check_public_exponent(i32* %12)
  %14 = call i64 @TEST_false(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @BN_set_word(i32* %17, i32 65536)
  %19 = call i64 @TEST_true(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @rsa_check_public_exponent(i32* %22)
  %24 = call i64 @TEST_false(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @BN_set_word(i32* %27, i32 65537)
  %29 = call i64 @TEST_true(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @rsa_check_public_exponent(i32* %32)
  %34 = call i64 @TEST_true(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 (...) @BN_value_one()
  %39 = call i32 @BN_lshift(i32* %37, i32 %38, i32 256)
  %40 = call i64 @TEST_true(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @rsa_check_public_exponent(i32* %43)
  %45 = call i64 @TEST_false(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32*, i32** %2, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 (...) @BN_value_one()
  %51 = call i32 @BN_sub(i32* %48, i32* %49, i32 %50)
  %52 = call i64 @TEST_true(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @rsa_check_public_exponent(i32* %55)
  %57 = call i64 @TEST_true(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %47, %42, %36, %31, %26, %21, %16, %11, %6, %0
  %60 = phi i1 [ false, %47 ], [ false, %42 ], [ false, %36 ], [ false, %31 ], [ false, %26 ], [ false, %21 ], [ false, %16 ], [ false, %11 ], [ false, %6 ], [ false, %0 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %1, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @BN_free(i32* %62)
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @rsa_check_public_exponent(i32*) #1

declare dso_local i32 @BN_lshift(i32*, i32, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
