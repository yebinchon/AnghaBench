; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_prime_factor_range.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_prime_factor_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_check_prime_factor_range.p1 = internal constant [5 x i8] c"\0BPO3?", align 1
@test_check_prime_factor_range.p2 = internal constant [5 x i8] c"\10\00\00\00\00", align 1
@test_check_prime_factor_range.p3 = internal constant [5 x i8] c"\0BPO3@", align 1
@test_check_prime_factor_range.p4 = internal constant [5 x i8] c"\0F\FF\FF\FF\FF", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_check_prime_factor_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_check_prime_factor_range() #0 {
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
  br i1 %10, label %11, label %110

11:                                               ; preds = %0
  %12 = call i32* @bn_load_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p1, i64 0, i64 0), i32 5)
  store i32* %12, i32** %4, align 8
  %13 = call i64 @TEST_ptr(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %110

15:                                               ; preds = %11
  %16 = call i32* @bn_load_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p2, i64 0, i64 0), i32 5)
  store i32* %16, i32** %5, align 8
  %17 = call i64 @TEST_ptr(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %110

19:                                               ; preds = %15
  %20 = call i32* @bn_load_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p3, i64 0, i64 0), i32 5)
  store i32* %20, i32** %6, align 8
  %21 = call i64 @TEST_ptr(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %110

23:                                               ; preds = %19
  %24 = call i32* @bn_load_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p4, i64 0, i64 0), i32 5)
  store i32* %24, i32** %7, align 8
  %25 = call i64 @TEST_ptr(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %110

27:                                               ; preds = %23
  %28 = call i32* (...) @BN_CTX_new()
  store i32* %28, i32** %2, align 8
  %29 = call i64 @TEST_ptr(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @BN_set_word(i32* %32, i32 10)
  %34 = call i64 @TEST_true(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %110

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @rsa_check_prime_factor_range(i32* %37, i32 8, i32* %38)
  %40 = call i64 @TEST_false(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %110

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @BN_set_word(i32* %43, i32 16)
  %45 = call i64 @TEST_true(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %110

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @rsa_check_prime_factor_range(i32* %48, i32 8, i32* %49)
  %51 = call i64 @TEST_false(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %110

53:                                               ; preds = %47
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @BN_set_word(i32* %54, i32 11)
  %56 = call i64 @TEST_true(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %110

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @rsa_check_prime_factor_range(i32* %59, i32 8, i32* %60)
  %62 = call i64 @TEST_false(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %110

64:                                               ; preds = %58
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @BN_set_word(i32* %65, i32 12)
  %67 = call i64 @TEST_true(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @rsa_check_prime_factor_range(i32* %70, i32 8, i32* %71)
  %73 = call i64 @TEST_true(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @BN_set_word(i32* %76, i32 15)
  %78 = call i64 @TEST_true(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = load i32*, i32** %3, align 8
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @rsa_check_prime_factor_range(i32* %81, i32 8, i32* %82)
  %84 = call i64 @TEST_true(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load i32*, i32** %4, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @rsa_check_prime_factor_range(i32* %87, i32 72, i32* %88)
  %90 = call i64 @TEST_false(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @rsa_check_prime_factor_range(i32* %93, i32 72, i32* %94)
  %96 = call i64 @TEST_false(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @rsa_check_prime_factor_range(i32* %99, i32 72, i32* %100)
  %102 = call i64 @TEST_true(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %2, align 8
  %107 = call i32 @rsa_check_prime_factor_range(i32* %105, i32 72, i32* %106)
  %108 = call i64 @TEST_true(i32 %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %104, %98, %92, %86, %80, %75, %69, %64, %58, %53, %47, %42, %36, %31, %27, %23, %19, %15, %11, %0
  %111 = phi i1 [ false, %98 ], [ false, %92 ], [ false, %86 ], [ false, %80 ], [ false, %75 ], [ false, %69 ], [ false, %64 ], [ false, %58 ], [ false, %53 ], [ false, %47 ], [ false, %42 ], [ false, %36 ], [ false, %31 ], [ false, %27 ], [ false, %23 ], [ false, %19 ], [ false, %15 ], [ false, %11 ], [ false, %0 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %1, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @BN_free(i32* %113)
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @BN_free(i32* %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @BN_free(i32* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @BN_free(i32* %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @BN_free(i32* %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @BN_CTX_free(i32* %123)
  %125 = load i32, i32* %1, align 4
  ret i32 %125
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @bn_load_new(i8*, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @rsa_check_prime_factor_range(i32*, i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
