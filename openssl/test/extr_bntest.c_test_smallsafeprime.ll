; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_smallsafeprime.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_smallsafeprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_smallsafeprime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_smallsafeprime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32* (...) @BN_new()
  store i32* %5, i32** %3, align 8
  %6 = call i32 @TEST_ptr(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 5
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @BN_generate_prime_ex(i32* %16, i32 %17, i32 1, i32* null, i32* null, i32* null)
  %19 = call i32 @TEST_false(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %38

22:                                               ; preds = %15
  br label %37

23:                                               ; preds = %12, %9
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @BN_generate_prime_ex(i32* %24, i32 %25, i32 1, i32* null, i32* null, i32* null)
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @BN_num_bits(i32* %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @TEST_int_eq(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %23
  br label %38

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %22
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35, %21, %8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @BN_free(i32* %39)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
