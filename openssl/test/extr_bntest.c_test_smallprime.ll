; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_smallprime.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_smallprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_smallprime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_smallprime(i32 %0) #0 {
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
  br label %35

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @BN_generate_prime_ex(i32* %13, i32 %14, i32 0, i32* null, i32* null, i32* null)
  %16 = call i32 @TEST_false(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %35

19:                                               ; preds = %12
  br label %34

20:                                               ; preds = %9
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @BN_generate_prime_ex(i32* %21, i32 %22, i32 0, i32* null, i32* null, i32* null)
  %24 = call i32 @TEST_true(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @BN_num_bits(i32* %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @TEST_int_eq(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %20
  br label %35

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %19
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %32, %18, %8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @BN_free(i32* %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
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
