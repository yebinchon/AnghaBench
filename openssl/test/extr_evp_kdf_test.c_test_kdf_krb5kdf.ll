; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_krb5kdf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_krb5kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_kdf_krb5kdf.key = internal global [16 x i8] c"B&<n\89\F4\FC(\B8\DFh\EE\09y\9F\15", align 16
@test_kdf_krb5kdf.constant = internal global [5 x i8] c"\00\00\00\02\99", align 1
@test_kdf_krb5kdf.expected = internal constant [16 x i8] c"4(\0A8+\C9'i\B2\DA/\9E\F0f\85K", align 16
@OSSL_KDF_PARAM_CIPHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_CONSTANT = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_KRB5KDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_krb5kdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_krb5kdf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* @OSSL_KDF_PARAM_CIPHER, align 4
  %8 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 12)
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %12 = call i8* @OSSL_PARAM_construct_octet_string(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_krb5kdf.key, i64 0, i64 0), i32 16)
  %13 = ptrtoint i8* %12 to i32
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  %16 = load i32, i32* @OSSL_KDF_PARAM_CONSTANT, align 4
  %17 = call i8* @OSSL_PARAM_construct_octet_string(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_kdf_krb5kdf.constant, i64 0, i64 0), i32 5)
  %18 = ptrtoint i8* %17 to i32
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  %21 = call i32 (...) @OSSL_PARAM_construct_end()
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @OSSL_KDF_NAME_KRB5KDF, align 4
  %24 = call i32* @get_kdfbyname(i32 %23)
  store i32* %24, i32** %2, align 8
  %25 = call i64 @TEST_ptr(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %0
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %30 = call i32 @EVP_KDF_CTX_set_params(i32* %28, i32* %29)
  %31 = call i64 @TEST_true(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %36 = call i32 @EVP_KDF_derive(i32* %34, i8* %35, i32 16)
  %37 = call i64 @TEST_int_gt(i32 %36, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %41 = call i64 @TEST_mem_eq(i8* %40, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_krb5kdf.expected, i64 0, i64 0), i32 16)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %33, %27, %0
  %44 = phi i1 [ false, %33 ], [ false, %27 ], [ false, %0 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %1, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @EVP_KDF_CTX_free(i32* %46)
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i32) #1

declare dso_local i8* @OSSL_PARAM_construct_octet_string(i32, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @get_kdfbyname(i32) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i64 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @EVP_KDF_derive(i32*, i8*, i32) #1

declare dso_local i64 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @EVP_KDF_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
