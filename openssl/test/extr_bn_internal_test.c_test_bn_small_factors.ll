; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bn_internal_test.c_test_bn_small_factors.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bn_internal_test.c_test_bn_small_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMPRIMES = common dso_local global i32 0, align 4
@primes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bn_small_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bn_small_factors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* null, i32** %3, align 8
  %5 = call i32* (...) @BN_new()
  store i32* %5, i32** %3, align 8
  %6 = call i64 @TEST_ptr(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @BN_set_word(i32* %9, i32 3)
  %11 = call i64 @TEST_true(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %0
  br label %48

14:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @NUMPRIMES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32*, i32** @primes, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 751
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @BN_mul_word(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %48

36:                                               ; preds = %30, %27, %19
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 751
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %44

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %15

44:                                               ; preds = %39, %15
  %45 = call i32 (...) @bn_get0_small_factors()
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @TEST_BN_eq(i32 %45, i32* %46)
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %44, %35, %13
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @BN_free(i32* %49)
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_mul_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_eq(i32, i32*) #1

declare dso_local i32 @bn_get0_small_factors(...) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
