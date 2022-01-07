; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_bn_is_prime_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_bn_is_prime_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@primes = common dso_local global i32* null, align 8
@BN_PRIMETEST_PROBABLY_PRIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*)* @bn_is_prime_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bn_is_prime_int(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 (...) @BN_value_one()
  %20 = call i64 @BN_cmp(i32* %18, i32 %19)
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %104

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @BN_is_odd(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @BN_is_word(i32* %28, i32 3)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %104

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @BN_is_word(i32* %34, i32 2)
  store i32 %35, i32* %6, align 4
  br label %104

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %36
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @BN_num_bits(i32* %40)
  %42 = call i32 @calc_trial_divisions(i32 %41)
  store i32 %42, i32* %16, align 4
  store i32 1, i32* %12, align 4
  br label %43

43:                                               ; preds = %70, %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** @primes, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @BN_mod_word(i32* %48, i32 %53)
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %104

58:                                               ; preds = %47
  %59 = load i64, i64* %17, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** @primes, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BN_is_word(i32* %62, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %104

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @BN_GENCB_call(i32* %74, i32 1, i32 -1)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i32 -1, i32* %6, align 4
  br label %104

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %36
  %80 = load i32*, i32** %9, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = call i32* (...) @BN_CTX_new()
  store i32* %83, i32** %9, align 8
  store i32* %83, i32** %15, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %100

86:                                               ; preds = %82, %79
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @bn_miller_rabin_is_prime(i32* %87, i32 %88, i32* %89, i32* %90, i32 0, i32* %13)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %100

95:                                               ; preds = %86
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @BN_PRIMETEST_PROBABLY_PRIME, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %95, %94, %85
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @BN_CTX_free(i32* %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %77, %61, %57, %33, %31, %22
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @BN_cmp(i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_is_word(i32*, i32) #1

declare dso_local i32 @calc_trial_divisions(i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i64 @BN_mod_word(i32*, i32) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @bn_miller_rabin_is_prime(i32*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
