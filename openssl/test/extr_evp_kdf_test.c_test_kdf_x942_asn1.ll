; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_x942_asn1.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_x942_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SN_id_smime_alg_CMS3DESwrap = common dso_local global i8* null, align 8
@test_kdf_x942_asn1.z = internal global [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@test_kdf_x942_asn1.expected = internal constant [24 x i8] c"\A0\96a9#v\F7\04M\90R\A3\97\882F\B6\7F_\1E\F6>\B5\FB", align 16
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_CEK_ALG = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_X942KDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_x942_asn1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_x942_asn1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [24 x i8], align 16
  store i32* null, i32** %2, align 8
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32* %7, i32** %4, align 8
  %8 = load i8*, i8** @SN_id_smime_alg_CMS3DESwrap, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %10 = call i8* @OSSL_PARAM_construct_utf8_string(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %11 = ptrtoint i8* %10 to i32
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  %14 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %15 = call i32 @OSSL_PARAM_construct_octet_string(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_kdf_x942_asn1.z, i64 0, i64 0), i32 20)
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  %18 = load i32, i32* @OSSL_KDF_PARAM_CEK_ALG, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 1
  %23 = call i8* @OSSL_PARAM_construct_utf8_string(i32 %18, i8* %19, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  %27 = call i32 (...) @OSSL_PARAM_construct_end()
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @OSSL_KDF_NAME_X942KDF, align 4
  %30 = call i32* @get_kdfbyname(i32 %29)
  store i32* %30, i32** %2, align 8
  %31 = call i64 @TEST_ptr(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %0
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %36 = call i32 @EVP_KDF_CTX_set_params(i32* %34, i32* %35)
  %37 = call i64 @TEST_true(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %42 = call i32 @EVP_KDF_derive(i32* %40, i8* %41, i32 24)
  %43 = call i64 @TEST_int_gt(i32 %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %47 = call i64 @TEST_mem_eq(i8* %46, i32 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_kdf_x942_asn1.expected, i64 0, i64 0), i32 24)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %39, %33, %0
  %50 = phi i1 [ false, %39 ], [ false, %33 ], [ false, %0 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %1, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @EVP_KDF_CTX_free(i32* %52)
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i8* @OSSL_PARAM_construct_utf8_string(i32, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

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
