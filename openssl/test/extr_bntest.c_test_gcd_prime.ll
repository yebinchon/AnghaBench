; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gcd_prime.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gcd_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gcd_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gcd_prime() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32* (...) @BN_new()
  store i32* %6, i32** %1, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %2, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32* (...) @BN_new()
  store i32* %14, i32** %3, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9, %0
  br label %53

18:                                               ; preds = %13
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @BN_generate_prime_ex(i32* %19, i32 1024, i32 0, i32* null, i32* null, i32* null)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %53

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NUM0, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @BN_generate_prime_ex(i32* %30, i32 1024, i32 0, i32* null, i32* null, i32* null)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @ctx, align 4
  %39 = call i32 @BN_gcd(i32* %35, i32* %36, i32* %37, i32 %38)
  %40 = call i32 @TEST_true(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @BN_is_one(i32* %43)
  %45 = call i32 @TEST_true(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %34, %29
  br label %53

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %25

52:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %47, %23, %17
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @BN_free(i32* %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @BN_free(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @BN_free(i32* %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BN_gcd(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
