; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_check_prime_factor.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_check_prime_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_check_prime_factor(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @BN_check_prime(i32* %13, i32* %14, i32* null)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @rsa_check_prime_factor_range(i32* %18, i32 %19, i32* %20)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %61

24:                                               ; preds = %17
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @BN_CTX_start(i32* %25)
  %27 = load i32*, i32** %9, align 8
  %28 = call i32* @BN_CTX_get(i32* %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @BN_CTX_get(i32* %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %24
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @BN_copy(i32* %34, i32* %35)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @BN_sub_word(i32* %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @BN_gcd(i32* %43, i32* %44, i32* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @BN_is_one(i32* %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %49, %42, %38, %33, %24
  %54 = phi i1 [ false, %42 ], [ false, %38 ], [ false, %33 ], [ false, %24 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @BN_clear(i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @BN_CTX_end(i32* %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local i32 @rsa_check_prime_factor_range(i32*, i32, i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i64 @BN_sub_word(i32*, i32) #1

declare dso_local i64 @BN_gcd(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
