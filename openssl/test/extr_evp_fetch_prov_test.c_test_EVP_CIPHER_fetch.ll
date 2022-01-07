; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_test_EVP_CIPHER_fetch.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_test_EVP_CIPHER_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_EVP_CIPHER_fetch.testmsg = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@use_default_ctx = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@fetch_property = common dso_local global i32 0, align 4
@expected_fetch_result = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_EVP_CIPHER_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_EVP_CIPHER_fetch() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32*], align 16
  %4 = alloca i32, align 4
  %5 = alloca [12 x i8], align 1
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %6 = bitcast [2 x i32*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  %7 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_EVP_CIPHER_fetch.testmsg, i32 0, i32 0), i64 12, i1 false)
  %8 = load i64, i64* @use_default_ctx, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %12 = call i32 @load_providers(i32** %1, i32** %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %55

15:                                               ; preds = %10, %0
  %16 = call i32* (...) @EVP_aes_128_cbc()
  %17 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %18 = call i32 @encrypt_decrypt(i32* %16, i8* %17, i32 12)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %55

22:                                               ; preds = %15
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @fetch_property, align 4
  %25 = call i32* @EVP_CIPHER_fetch(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32* %25, i32** %2, align 8
  %26 = load i64, i64* @expected_fetch_result, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @TEST_ptr(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %35 = call i32 @encrypt_decrypt(i32* %33, i8* %34, i32 12)
  %36 = call i32 @TEST_true(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32, %28
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @EVP_CIPHER_up_ref(i32* %39)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %55

44:                                               ; preds = %38
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @EVP_CIPHER_meth_free(i32* %45)
  br label %47

47:                                               ; preds = %44, %32
  br label %54

48:                                               ; preds = %22
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @TEST_ptr_null(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %47
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %43, %21, %14
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @EVP_CIPHER_meth_free(i32* %56)
  %58 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %59 = load i32*, i32** %58, align 16
  %60 = call i32 @OSSL_PROVIDER_unload(i32* %59)
  %61 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @OSSL_PROVIDER_unload(i32* %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @OPENSSL_CTX_free(i32* %64)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @load_providers(i32**, i32**) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @encrypt_decrypt(i32*, i8*, i32) #2

declare dso_local i32* @EVP_aes_128_cbc(...) #2

declare dso_local i32* @EVP_CIPHER_fetch(i32*, i8*, i32) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @EVP_CIPHER_up_ref(i32*) #2

declare dso_local i32 @EVP_CIPHER_meth_free(i32*) #2

declare dso_local i32 @TEST_ptr_null(i32*) #2

declare dso_local i32 @OSSL_PROVIDER_unload(i32*) #2

declare dso_local i32 @OPENSSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
