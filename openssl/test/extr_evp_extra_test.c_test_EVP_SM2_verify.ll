; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_EVP_SM2_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_EVP_SM2_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [476 x i8] c"-----BEGIN PUBLIC KEY-----\0AMIIBMzCB7AYHKoZIzj0CATCB4AIBATAsBgcqhkjOPQEBAiEAhULWnkwETxjouSQ1\0Av2/33kVyg5FcRVF9ci7biwjx38MwRAQgeHlotPoyw/0kF4Quc7v+/y88hItoMdfg\0A7GUiizk35JgEIGPkxtOyOwyEnPhCQUhL/kj2HVmlsWugbm4S0donxSSaBEEEQh3r\0A1hti6rZ0ZDTrw8wxXjIiCzut1QvcTE5sFH/t1D0GgFEry7QsB9RzSdIVO3DE5df9\0A/L+jbqGoWEG55G4JogIhAIVC1p5MBE8Y6LkkNb9v990pdyBjBIVijVrnTufDLnm3\0AAgEBA0IABArkx3mKoPEZRxvuEYJb5GICu3nipYRElel8BP9N8lSKfAJA+I8c1OFj\0AUqc8F7fxbwc1PlOhdtaEqf4Ma7eY6Fc=\0A-----END PUBLIC KEY-----\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"message digest\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ALICE123@YAHOO.COM\00", align 1
@__const.test_EVP_SM2_verify.signature = private unnamed_addr constant [70 x i32] [i32 48, i32 68, i32 2, i32 32, i32 64, i32 241, i32 236, i32 89, i32 247, i32 147, i32 217, i32 244, i32 158, i32 9, i32 220, i32 239, i32 73, i32 19, i32 13, i32 65, i32 148, i32 247, i32 159, i32 177, i32 238, i32 210, i32 202, i32 165, i32 91, i32 172, i32 219, i32 73, i32 196, i32 231, i32 85, i32 209, i32 2, i32 32, i32 111, i32 198, i32 218, i32 195, i32 44, i32 93, i32 92, i32 241, i32 12, i32 119, i32 223, i32 178, i32 15, i32 124, i32 46, i32 182, i32 103, i32 164, i32 87, i32 135, i32 47, i32 176, i32 158, i32 197, i32 99, i32 39, i32 166, i32 126, i32 199, i32 222, i32 235, i32 231], align 16
@EVP_PKEY_SM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_EVP_SM2_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_EVP_SM2_verify() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [70 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* getelementptr inbounds ([476 x i8], [476 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %10 = bitcast [70 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([70 x i32]* @__const.test_EVP_SM2_verify.signature to i8*), i64 280, i1 false)
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i32* @BIO_new_mem_buf(i8* %11, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  br label %86

21:                                               ; preds = %0
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @PEM_read_bio_PUBKEY(i32* %22, i32* null, i32* null, i32* null)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %86

30:                                               ; preds = %21
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @EVP_PKEY_SM2, align 4
  %33 = call i32 @EVP_PKEY_set_alias_type(i32* %31, i32 %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %86

37:                                               ; preds = %30
  %38 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %38, i32** %8, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %86

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @EVP_PKEY_CTX_new(i32* %43, i32* null)
  store i32* %44, i32** %9, align 8
  %45 = call i32 @TEST_ptr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %86

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i32 @EVP_PKEY_CTX_set1_id(i32* %49, i32* %51, i32 %53)
  %55 = call i32 @TEST_int_gt(i32 %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %86

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @EVP_MD_CTX_set_pkey_ctx(i32* %59, i32* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 (...) @EVP_sm3()
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @EVP_DigestVerifyInit(i32* %62, i32* null, i32 %63, i32* null, i32* %64)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %86

69:                                               ; preds = %58
  %70 = load i32*, i32** %8, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @EVP_DigestVerifyUpdate(i32* %70, i8* %71, i32 %73)
  %75 = call i32 @TEST_true(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %86

78:                                               ; preds = %69
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds [70 x i32], [70 x i32]* %4, i64 0, i64 0
  %81 = call i32 @EVP_DigestVerifyFinal(i32* %79, i32* %80, i32 280)
  %82 = call i32 @TEST_true(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %86

85:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %84, %77, %68, %57, %47, %41, %36, %29, %20
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @BIO_free(i32* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @EVP_PKEY_free(i32* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @EVP_PKEY_CTX_free(i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @EVP_MD_CTX_free(i32* %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @BIO_new_mem_buf(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32* @PEM_read_bio_PUBKEY(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @EVP_PKEY_set_alias_type(i32*, i32) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #2

declare dso_local i32 @TEST_int_gt(i32, i32) #2

declare dso_local i32 @EVP_PKEY_CTX_set1_id(i32*, i32*, i32) #2

declare dso_local i32 @EVP_MD_CTX_set_pkey_ctx(i32*, i32*) #2

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @EVP_sm3(...) #2

declare dso_local i32 @EVP_DigestVerifyUpdate(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i32*, i32) #2

declare dso_local i32 @BIO_free(i32*) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
