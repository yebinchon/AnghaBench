; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_sp800_56b_check_public.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_sp800_56b_check_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@RSA_F_RSA_SP800_56B_CHECK_PUBLIC = common dso_local global i32 0, align 4
@RSA_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@RSA_R_INVALID_MODULUS = common dso_local global i32 0, align 4
@RSA_R_PUB_EXPONENT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_sp800_56b_check_public(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %100

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @BN_num_bits(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @rsa_sp800_56b_validate_strength(i32 %24, i32 -1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_PUBLIC, align 4
  %29 = load i32, i32* @RSA_R_INVALID_KEY_LENGTH, align 4
  %30 = call i32 @RSAerr(i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %100

31:                                               ; preds = %19
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @BN_is_odd(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_PUBLIC, align 4
  %39 = load i32, i32* @RSA_R_INVALID_MODULUS, align 4
  %40 = call i32 @RSAerr(i32 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %100

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @rsa_check_public_exponent(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_PUBLIC, align 4
  %49 = load i32, i32* @RSA_R_PUB_EXPONENT_OUT_OF_RANGE, align 4
  %50 = call i32 @RSAerr(i32 %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %100

51:                                               ; preds = %41
  %52 = call i32* (...) @BN_CTX_new()
  store i32* %52, i32** %7, align 8
  %53 = call i32* (...) @BN_new()
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** %8, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %51
  br label %94

60:                                               ; preds = %56
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 (...) @bn_get0_small_factors()
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @BN_gcd(i32* %61, i32* %64, i32 %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @BN_is_one(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %60
  %74 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_PUBLIC, align 4
  %75 = load i32, i32* @RSA_R_INVALID_MODULUS, align 4
  %76 = call i32 @RSAerr(i32 %74, i32 %75)
  br label %94

77:                                               ; preds = %69
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @bn_miller_rabin_is_prime(i32* %80, i32 0, i32* %81, i32* null, i32 1, i32* %6)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %77
  %90 = load i32, i32* @RSA_F_RSA_SP800_56B_CHECK_PUBLIC, align 4
  %91 = load i32, i32* @RSA_R_INVALID_MODULUS, align 4
  %92 = call i32 @RSAerr(i32 %90, i32 %91)
  store i32 0, i32* %4, align 4
  br label %94

93:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %89, %73, %59
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @BN_free(i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @BN_CTX_free(i32* %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %47, %37, %27, %18
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @rsa_sp800_56b_validate_strength(i32, i32) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @rsa_check_public_exponent(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_gcd(i32*, i32*, i32, i32*) #1

declare dso_local i32 @bn_get0_small_factors(...) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @bn_miller_rabin_is_prime(i32*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
