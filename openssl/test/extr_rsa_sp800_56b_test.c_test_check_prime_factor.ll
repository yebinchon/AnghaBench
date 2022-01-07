; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_prime_factor.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_prime_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_check_prime_factor.p1 = internal constant [5 x i8] c"\0BPO3s", align 1
@test_check_prime_factor.p2 = internal constant [5 x i8] c"\0BPO3u", align 1
@test_check_prime_factor.p3 = internal constant [5 x i8] c"\0FP\00\03u", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_check_prime_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_check_prime_factor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = call i32* (...) @BN_new()
  store i32* %8, i32** %3, align 8
  %9 = call i64 @TEST_ptr(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %0
  %12 = call i32* @bn_load_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor.p1, i64 0, i64 0), i32 5)
  store i32* %12, i32** %5, align 8
  %13 = call i64 @TEST_ptr(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %11
  %16 = call i32* @bn_load_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor.p2, i64 0, i64 0), i32 5)
  store i32* %16, i32** %6, align 8
  %17 = call i64 @TEST_ptr(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = call i32* @bn_load_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor.p3, i64 0, i64 0), i32 5)
  store i32* %20, i32** %7, align 8
  %21 = call i64 @TEST_ptr(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %4, align 8
  %25 = call i64 @TEST_ptr(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %23
  %28 = call i32* (...) @BN_CTX_new()
  store i32* %28, i32** %2, align 8
  %29 = call i64 @TEST_ptr(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @BN_set_word(i32* %32, i32 1)
  %34 = call i64 @TEST_true(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @rsa_check_prime_factor(i32* %37, i32* %38, i32 72, i32* %39)
  %41 = call i64 @TEST_false(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @rsa_check_prime_factor(i32* %44, i32* %45, i32 72, i32* %46)
  %48 = call i64 @TEST_true(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @BN_set_word(i32* %51, i32 2)
  %53 = call i64 @TEST_true(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @rsa_check_prime_factor(i32* %56, i32* %57, i32 72, i32* %58)
  %60 = call i64 @TEST_false(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @BN_set_word(i32* %63, i32 1)
  %65 = call i64 @TEST_true(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @rsa_check_prime_factor(i32* %68, i32* %69, i32 72, i32* %70)
  %72 = call i64 @TEST_false(i32 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %67, %62, %55, %50, %43, %36, %31, %27, %23, %19, %15, %11, %0
  %75 = phi i1 [ false, %62 ], [ false, %55 ], [ false, %50 ], [ false, %43 ], [ false, %36 ], [ false, %31 ], [ false, %27 ], [ false, %23 ], [ false, %19 ], [ false, %15 ], [ false, %11 ], [ false, %0 ], [ %73, %67 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %1, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @BN_free(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @BN_free(i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @BN_free(i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @BN_free(i32* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @BN_free(i32* %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @BN_CTX_free(i32* %87)
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @bn_load_new(i8*, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @rsa_check_prime_factor(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
