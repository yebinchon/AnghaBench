; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_test_EVP_MD_fetch.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_test_EVP_MD_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_EVP_MD_fetch.testmsg = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@__const.test_EVP_MD_fetch.exptd = private unnamed_addr constant [32 x i8] c"'Q\8B\A9h0\11\F6\B3\96\07,\05\F6em\04\F5\FB\C3x|\F9$\90\EC`nP\92\E3&", align 16
@use_default_ctx = common dso_local global i64 0, align 8
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA256_CBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@fetch_property = common dso_local global i32 0, align 4
@expected_fetch_result = common dso_local global i64 0, align 8
@NID_sha256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_EVP_MD_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_EVP_MD_fetch() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32*], align 16
  %4 = alloca i32, align 4
  %5 = alloca [12 x i8], align 1
  %6 = alloca [32 x i8], align 16
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %7 = bitcast [2 x i32*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  %8 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_EVP_MD_fetch.testmsg, i32 0, i32 0), i64 12, i1 false)
  %9 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.test_EVP_MD_fetch.exptd, i32 0, i32 0), i64 32, i1 false)
  %10 = load i64, i64* @use_default_ctx, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %14 = call i32 @load_providers(i32** %1, i32** %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %89

17:                                               ; preds = %12, %0
  %18 = call i32* (...) @EVP_sha256()
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %21 = call i32 @calculate_digest(i32* %18, i8* %19, i32 12, i8* %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = call i32* (...) @EVP_sha256()
  %26 = call i32 @EVP_MD_size(i32* %25)
  %27 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %28 = call i32 @TEST_int_eq(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = call i32* (...) @EVP_sha256()
  %32 = call i32 @EVP_MD_block_size(i32* %31)
  %33 = load i32, i32* @SHA256_CBLOCK, align 4
  %34 = call i32 @TEST_int_eq(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %24, %17
  br label %89

37:                                               ; preds = %30
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @fetch_property, align 4
  %40 = call i32* @EVP_MD_fetch(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32* %40, i32** %2, align 8
  %41 = load i64, i64* @expected_fetch_result, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @TEST_ptr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @EVP_MD_nid(i32* %48)
  %50 = load i32, i32* @NID_sha256, align 4
  %51 = call i32 @TEST_int_eq(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %57 = call i32 @calculate_digest(i32* %54, i8* %55, i32 12, i8* %56)
  %58 = call i32 @TEST_true(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @EVP_MD_size(i32* %61)
  %63 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %64 = call i32 @TEST_int_eq(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @EVP_MD_block_size(i32* %67)
  %69 = load i32, i32* @SHA256_CBLOCK, align 4
  %70 = call i32 @TEST_int_eq(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66, %60, %53, %47, %43
  br label %89

73:                                               ; preds = %66
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @EVP_MD_up_ref(i32* %74)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %89

79:                                               ; preds = %73
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @EVP_MD_meth_free(i32* %80)
  br label %88

82:                                               ; preds = %37
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @TEST_ptr_null(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %89

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %79
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %86, %78, %72, %36, %16
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @EVP_MD_meth_free(i32* %90)
  %92 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %93 = load i32*, i32** %92, align 16
  %94 = call i32 @OSSL_PROVIDER_unload(i32* %93)
  %95 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @OSSL_PROVIDER_unload(i32* %96)
  %98 = load i32*, i32** %1, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @OPENSSL_thread_stop_ex(i32* %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @OPENSSL_CTX_free(i32* %103)
  br label %105

105:                                              ; preds = %100, %89
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @load_providers(i32**, i32**) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @calculate_digest(i32*, i8*, i32, i8*) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local i32 @TEST_int_eq(i32, i32) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @EVP_MD_block_size(i32*) #2

declare dso_local i32* @EVP_MD_fetch(i32*, i8*, i32) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @EVP_MD_nid(i32*) #2

declare dso_local i32 @EVP_MD_up_ref(i32*) #2

declare dso_local i32 @EVP_MD_meth_free(i32*) #2

declare dso_local i32 @TEST_ptr_null(i32*) #2

declare dso_local i32 @OSSL_PROVIDER_unload(i32*) #2

declare dso_local i32 @OPENSSL_thread_stop_ex(i32*) #2

declare dso_local i32 @OPENSSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
