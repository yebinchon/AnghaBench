; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_scrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_scrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_kdf_scrypt.expected = internal constant [64 x i8] c"\FD\BA\BE\1C\9D4r\00xV\E7\19\0D\01\E9\FE|j\D7\CB\C8#x0\E7svcK71b.\AF0\D9.\22\A3\88o\F1\09'\9D\980\DA\C7'\AF\B9J\83\EEm\83`\CB\DF\A2\CC\06@", align 16
@OSSL_KDF_PARAM_PASSWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"password\00", align 1
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"NaCl\00", align 1
@OSSL_KDF_PARAM_SCRYPT_N = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_R = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_P = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_MAXMEM = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_SCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_scrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_scrypt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [7 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  store i32* %10, i32** %4, align 8
  store i32 1024, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 16, i32* %8, align 4
  store i32 16, i32* %9, align 4
  %11 = load i32, i32* @OSSL_KDF_PARAM_PASSWORD, align 4
  %12 = call i8* @OSSL_PARAM_construct_octet_string(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %13 = ptrtoint i8* %12 to i32
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  %16 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %17 = call i8* @OSSL_PARAM_construct_octet_string(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %18 = ptrtoint i8* %17 to i32
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_N, align 4
  %22 = call i8* @OSSL_PARAM_construct_uint(i32 %21, i32* %6)
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %26 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_R, align 4
  %27 = call i8* @OSSL_PARAM_construct_uint(i32 %26, i32* %7)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %31 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_P, align 4
  %32 = call i8* @OSSL_PARAM_construct_uint(i32 %31, i32* %8)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_MAXMEM, align 4
  %37 = call i8* @OSSL_PARAM_construct_uint(i32 %36, i32* %9)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  %41 = call i32 (...) @OSSL_PARAM_construct_end()
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @OSSL_KDF_NAME_SCRYPT, align 4
  %44 = call i32* @get_kdfbyname(i32 %43)
  store i32* %44, i32** %2, align 8
  %45 = call i64 @TEST_ptr(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %0
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %50 = call i32 @EVP_KDF_CTX_set_params(i32* %48, i32* %49)
  %51 = call i64 @TEST_true(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 -1
  %56 = call i32 @OSSL_PARAM_set_uint(i32* %55, i32 10485760)
  %57 = call i64 @TEST_true(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load i32*, i32** %2, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 -1
  %63 = call i32 @EVP_KDF_CTX_set_params(i32* %60, i32* %62)
  %64 = call i64 @TEST_true(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %69 = call i32 @EVP_KDF_derive(i32* %67, i8* %68, i32 64)
  %70 = call i64 @TEST_int_gt(i32 %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %74 = call i64 @TEST_mem_eq(i8* %73, i32 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @test_kdf_scrypt.expected, i64 0, i64 0), i32 64)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %72, %66, %59, %53, %47, %0
  %77 = phi i1 [ false, %66 ], [ false, %59 ], [ false, %53 ], [ false, %47 ], [ false, %0 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %1, align 4
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @EVP_KDF_CTX_free(i32* %79)
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i8* @OSSL_PARAM_construct_octet_string(i32, i8*, i32) #1

declare dso_local i8* @OSSL_PARAM_construct_uint(i32, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @get_kdfbyname(i32) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i32 @OSSL_PARAM_set_uint(i32*, i32) #1

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
