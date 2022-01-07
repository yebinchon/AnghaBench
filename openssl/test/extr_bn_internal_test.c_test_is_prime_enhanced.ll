; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bn_internal_test.c_test_is_prime_enhanced.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bn_internal_test.c_test_is_prime_enhanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@BN_PRIMETEST_PROBABLY_PRIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_is_prime_enhanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_is_prime_enhanced() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = call i32* (...) @BN_new()
  store i32* %4, i32** %3, align 8
  %5 = call i64 @TEST_ptr(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @BN_set_word(i32* %8, i32 11)
  %10 = call i64 @TEST_true(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @ctx, align 4
  %15 = call i32 @bn_miller_rabin_is_prime(i32* %13, i32 10, i32 %14, i32* null, i32 1, i32* %2)
  %16 = call i64 @TEST_true(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @BN_PRIMETEST_PROBABLY_PRIME, align 4
  %21 = call i64 @TEST_int_eq(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %12, %7, %0
  %24 = phi i1 [ false, %12 ], [ false, %7 ], [ false, %0 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %1, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @BN_free(i32* %26)
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @bn_miller_rabin_is_prime(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
