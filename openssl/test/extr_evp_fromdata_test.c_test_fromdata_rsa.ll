; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_fromdata_test.c_test_fromdata_rsa.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_fromdata_test.c_test_fromdata_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_fromdata_rsa.key_numbers = internal global [8 x i64] [i64 3161751493, i64 65537, i64 2064855961, i64 59747, i64 52919, i64 34201, i64 48519, i64 52283], align 16
@OSSL_PKEY_PARAM_RSA_N = common dso_local global i32 0, align 4
@N = common dso_local global i64 0, align 8
@OSSL_PKEY_PARAM_RSA_E = common dso_local global i32 0, align 4
@E = common dso_local global i64 0, align 8
@OSSL_PKEY_PARAM_RSA_D = common dso_local global i32 0, align 4
@D = common dso_local global i64 0, align 8
@OSSL_PKEY_PARAM_RSA_FACTOR = common dso_local global i32 0, align 4
@P = common dso_local global i64 0, align 8
@Q = common dso_local global i64 0, align 8
@OSSL_PKEY_PARAM_RSA_EXPONENT = common dso_local global i32 0, align 4
@DP = common dso_local global i64 0, align 8
@DQ = common dso_local global i64 0, align 8
@OSSL_PKEY_PARAM_RSA_COEFFICIENT = common dso_local global i32 0, align 4
@QINV = common dso_local global i64 0, align 8
@OSSL_PARAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_fromdata_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_fromdata_rsa() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [9 x i32], align 16
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %6 = load i32, i32* @OSSL_PKEY_PARAM_RSA_N, align 4
  %7 = load i64, i64* @N, align 8
  %8 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %7
  %9 = call i32 @OSSL_PARAM_ulong(i32 %6, i64* %8)
  store i32 %9, i32* %5, align 4
  %10 = getelementptr inbounds i32, i32* %5, i64 1
  %11 = load i32, i32* @OSSL_PKEY_PARAM_RSA_E, align 4
  %12 = load i64, i64* @E, align 8
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %12
  %14 = call i32 @OSSL_PARAM_ulong(i32 %11, i64* %13)
  store i32 %14, i32* %10, align 4
  %15 = getelementptr inbounds i32, i32* %10, i64 1
  %16 = load i32, i32* @OSSL_PKEY_PARAM_RSA_D, align 4
  %17 = load i64, i64* @D, align 8
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %17
  %19 = call i32 @OSSL_PARAM_ulong(i32 %16, i64* %18)
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds i32, i32* %15, i64 1
  %21 = load i32, i32* @OSSL_PKEY_PARAM_RSA_FACTOR, align 4
  %22 = load i64, i64* @P, align 8
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %22
  %24 = call i32 @OSSL_PARAM_ulong(i32 %21, i64* %23)
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds i32, i32* %20, i64 1
  %26 = load i32, i32* @OSSL_PKEY_PARAM_RSA_FACTOR, align 4
  %27 = load i64, i64* @Q, align 8
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %27
  %29 = call i32 @OSSL_PARAM_ulong(i32 %26, i64* %28)
  store i32 %29, i32* %25, align 4
  %30 = getelementptr inbounds i32, i32* %25, i64 1
  %31 = load i32, i32* @OSSL_PKEY_PARAM_RSA_EXPONENT, align 4
  %32 = load i64, i64* @DP, align 8
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %32
  %34 = call i32 @OSSL_PARAM_ulong(i32 %31, i64* %33)
  store i32 %34, i32* %30, align 4
  %35 = getelementptr inbounds i32, i32* %30, i64 1
  %36 = load i32, i32* @OSSL_PKEY_PARAM_RSA_EXPONENT, align 4
  %37 = load i64, i64* @DQ, align 8
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %37
  %39 = call i32 @OSSL_PARAM_ulong(i32 %36, i64* %38)
  store i32 %39, i32* %35, align 4
  %40 = getelementptr inbounds i32, i32* %35, i64 1
  %41 = load i32, i32* @OSSL_PKEY_PARAM_RSA_COEFFICIENT, align 4
  %42 = load i64, i64* @QINV, align 8
  %43 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %42
  %44 = call i32 @OSSL_PARAM_ulong(i32 %41, i64* %43)
  store i32 %44, i32* %40, align 4
  %45 = getelementptr inbounds i32, i32* %40, i64 1
  %46 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %46, i32* %45, align 4
  %47 = call i32* @EVP_PKEY_CTX_new_provided(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %47, i32** %2, align 8
  %48 = call i32 @TEST_ptr(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %0
  br label %64

51:                                               ; preds = %0
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @EVP_PKEY_key_fromdata_init(i32* %52)
  %54 = call i32 @TEST_true(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %59 = call i32 @EVP_PKEY_fromdata(i32* %57, i32** %3, i32* %58)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %51
  br label %64

63:                                               ; preds = %56
  store i32 1, i32* %1, align 4
  br label %64

64:                                               ; preds = %63, %62, %50
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @EVP_PKEY_free(i32* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @EVP_PKEY_CTX_free(i32* %67)
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @OSSL_PARAM_ulong(i32, i64*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_provided(i32*, i8*, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EVP_PKEY_key_fromdata_init(i32*) #1

declare dso_local i32 @EVP_PKEY_fromdata(i32*, i32**, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
