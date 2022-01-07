; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_sshkdf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_sshkdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_KDF_SSHKDF_TYPE_INITIAL_IV_CLI_TO_SRV = common dso_local global i8 0, align 1
@test_kdf_sshkdf.key = internal global [133 x i8] c"\00\00\00\81\00\87\\U\1C\EFRjJ\8B\E1\A7\DF'\E9\ED5K\AC\9A\FBq\F5=\BA\E9\05g\9D\14\F9\FA\F2F\9CSE|\F8\0A6k\E2x\96[\A6%Rv\CA-\9FJ\97\D2q\F7\1EP\D8\A9\ECF%:j\90j\C2\C5\E4\F4\8B'\A6<\E0\8D\809\0AI*\A4;\AD\9D\88,\CA\C2=\AC\88\BC\AD\A4\B4\D4&\A3b\08=\ABei\C5L\22M\D2\D8vC\AA\22v\93\E1A\AD\160\CE\13\14N", align 16
@test_kdf_sshkdf.xcghash = internal global [32 x i8] c"\0Eh?\C8\A9\ED|/\F0-\EF#\B2t^\BC\99\B2g\DA\A8jJ\A7ir9\08\82S\F6B", align 16
@test_kdf_sshkdf.sessid = internal global [32 x i8] c"\0Eh?\C8\A9\ED|/\F0-\EF#\B2t^\BC\99\B2g\DA\A8jJ\A7ir9\08\82S\F6B", align 16
@test_kdf_sshkdf.expected = internal constant [8 x i8] c"A\FF.\AD\16\83\F1\E6", align 1
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SSHKDF_XCGHASH = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SSHKDF_SESSION_ID = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SSHKDF_TYPE = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_SSHKDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_sshkdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_sshkdf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [8 x i8], align 1
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32* %7, i32** %4, align 8
  %8 = load i8, i8* @EVP_KDF_SSHKDF_TYPE_INITIAL_IV_CLI_TO_SRV, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %10 = call i8* @OSSL_PARAM_construct_utf8_string(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 7)
  %11 = ptrtoint i8* %10 to i32
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  %14 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %15 = call i8* @OSSL_PARAM_construct_octet_string(i32 %14, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @test_kdf_sshkdf.key, i64 0, i64 0), i32 133)
  %16 = ptrtoint i8* %15 to i32
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %19 = load i32, i32* @OSSL_KDF_PARAM_SSHKDF_XCGHASH, align 4
  %20 = call i8* @OSSL_PARAM_construct_octet_string(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_sshkdf.xcghash, i64 0, i64 0), i32 32)
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %24 = load i32, i32* @OSSL_KDF_PARAM_SSHKDF_SESSION_ID, align 4
  %25 = call i8* @OSSL_PARAM_construct_octet_string(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_sshkdf.sessid, i64 0, i64 0), i32 32)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32, i32* @OSSL_KDF_PARAM_SSHKDF_TYPE, align 4
  %30 = call i8* @OSSL_PARAM_construct_utf8_string(i32 %29, i8* %5, i32 1)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  %34 = call i32 (...) @OSSL_PARAM_construct_end()
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @OSSL_KDF_NAME_SSHKDF, align 4
  %37 = call i32* @get_kdfbyname(i32 %36)
  store i32* %37, i32** %2, align 8
  %38 = call i64 @TEST_ptr(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %0
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %43 = call i32 @EVP_KDF_CTX_set_params(i32* %41, i32* %42)
  %44 = call i64 @TEST_true(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %49 = call i32 @EVP_KDF_derive(i32* %47, i8* %48, i32 8)
  %50 = call i64 @TEST_int_gt(i32 %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %54 = call i64 @TEST_mem_eq(i8* %53, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_kdf_sshkdf.expected, i64 0, i64 0), i32 8)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %52, %46, %40, %0
  %57 = phi i1 [ false, %46 ], [ false, %40 ], [ false, %0 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %1, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @EVP_KDF_CTX_free(i32* %59)
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i8* @OSSL_PARAM_construct_utf8_string(i32, i8*, i32) #1

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
