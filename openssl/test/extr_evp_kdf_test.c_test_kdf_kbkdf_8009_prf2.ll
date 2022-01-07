; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_kbkdf_8009_prf2.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_kbkdf_8009_prf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@test_kdf_kbkdf_8009_prf2.input_key = internal global [32 x i8] c"m@M7\FA\F7\9F\9D\F0\D35h\D3 f\98\00\EBH6G.\A8\A0&\D1kq\82F\0CR", align 16
@test_kdf_kbkdf_8009_prf2.output = internal global [48 x i8] c"\98\01\F6\9A6\8C+\F6u\E5\95!\E1w\D9\A0\7Fg\EF\E1\CF\DE\8D<\8Doj\02V\E3\B1}\B3\C1\B6*\D1\B8U3`\D1sg\EB\15\14\D2", align 16
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_MAC = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"KBKDF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_kbkdf_8009_prf2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_kbkdf_8009_prf2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [48 x i8], align 16
  store i32 0, i32* %2, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %10 = bitcast [48 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 48, i1 false)
  %11 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  %16 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %11, i8* %12, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @OSSL_KDF_PARAM_MAC, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %21, i8* %22, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %32 = call i32 (i32, ...) @OSSL_PARAM_construct_octet_string(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_kbkdf_8009_prf2.input_key, i64 0, i64 0), i64 32)
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 (i32, ...) @OSSL_PARAM_construct_octet_string(i32 %37, i8* %38, i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i32 (i32, ...) @OSSL_PARAM_construct_octet_string(i32 %46, i8* %47, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = call i32 (...) @OSSL_PARAM_construct_end()
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %57
  store i32 %55, i32* %58, align 4
  %59 = call i32* @get_kdfbyname(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32* %59, i32** %3, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i64 @TEST_ptr(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %0
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %66 = call i32 @EVP_KDF_CTX_set_params(i32* %64, i32* %65)
  %67 = call i64 @TEST_true(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %72 = call i32 @EVP_KDF_derive(i32* %70, i8* %71, i32 48)
  %73 = call i64 @TEST_int_gt(i32 %72, i32 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %77 = call i64 @TEST_mem_eq(i8* %76, i32 48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @test_kdf_kbkdf_8009_prf2.output, i64 0, i64 0), i32 48)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %75, %69, %63, %0
  %80 = phi i1 [ false, %69 ], [ false, %63 ], [ false, %0 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %1, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @EVP_KDF_CTX_free(i32* %82)
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, ...) #2

declare dso_local i32 @OSSL_PARAM_construct_end(...) #2

declare dso_local i32* @get_kdfbyname(i8*) #2

declare dso_local i64 @TEST_ptr(i32*) #2

declare dso_local i64 @TEST_true(i32) #2

declare dso_local i32 @EVP_KDF_CTX_set_params(i32*, i32*) #2

declare dso_local i64 @TEST_int_gt(i32, i32) #2

declare dso_local i32 @EVP_KDF_derive(i32*, i8*, i32) #2

declare dso_local i64 @TEST_mem_eq(i8*, i32, i8*, i32) #2

declare dso_local i32 @EVP_KDF_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
