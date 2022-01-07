; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_HKDF.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_HKDF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_HKDF.salt = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@__const.test_HKDF.key = private unnamed_addr constant [31 x i8] c"012345678901234567890123456789\00", align 16
@__const.test_HKDF.info = private unnamed_addr constant [11 x i8] c"infostring\00", align 1
@__const.test_HKDF.expected = private unnamed_addr constant [20 x i8] c"\E5\07p\7F\C6x\D6T2_~\C5{Y>\D8\03k\ED\CA", align 16
@EVP_PKEY_HKDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_HKDF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_HKDF() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [20 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [11 x i8], align 1
  %7 = alloca [31 x i8], align 16
  %8 = alloca [11 x i8], align 1
  %9 = alloca [20 x i8], align 16
  %10 = alloca i64, align 8
  store i32 0, i32* %5, align 4
  %11 = bitcast [11 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_HKDF.salt, i32 0, i32 0), i64 11, i1 false)
  %12 = bitcast [31 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* @__const.test_HKDF.key, i32 0, i32 0), i64 31, i1 false)
  %13 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_HKDF.info, i32 0, i32 0), i64 11, i1 false)
  %14 = bitcast [20 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_HKDF.expected, i32 0, i32 0), i64 20, i1 false)
  store i64 20, i64* %10, align 8
  %15 = load i32, i32* @EVP_PKEY_HKDF, align 4
  %16 = call i32* @EVP_PKEY_CTX_new_id(i32 %15, i32* null)
  store i32* %16, i32** %1, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  br label %75

20:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %71, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %74

24:                                               ; preds = %21
  store i64 20, i64* %3, align 8
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @memset(i8* %25, i32 0, i64 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @EVP_PKEY_derive_init(i32* %28)
  %30 = call i32 @TEST_int_gt(i32 %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %24
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 (...) @EVP_sha256()
  %35 = call i32 @EVP_PKEY_CTX_set_hkdf_md(i32* %33, i32 %34)
  %36 = call i32 @TEST_int_gt(i32 %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %32
  %39 = load i32*, i32** %1, align 8
  %40 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %41 = call i32 @EVP_PKEY_CTX_set1_hkdf_salt(i32* %39, i8* %40, i32 10)
  %42 = call i32 @TEST_int_gt(i32 %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load i32*, i32** %1, align 8
  %46 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i64 0, i64 0
  %47 = call i32 @EVP_PKEY_CTX_set1_hkdf_key(i32* %45, i8* %46, i32 30)
  %48 = call i32 @TEST_int_gt(i32 %47, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load i32*, i32** %1, align 8
  %52 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %53 = call i32 @EVP_PKEY_CTX_add1_hkdf_info(i32* %51, i8* %52, i32 10)
  %54 = call i32 @TEST_int_gt(i32 %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32*, i32** %1, align 8
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %59 = call i32 @EVP_PKEY_derive(i32* %57, i8* %58, i64* %3)
  %60 = call i32 @TEST_int_gt(i32 %59, i32 0)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @TEST_mem_eq(i8* %63, i64 %64, i8* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62, %56, %50, %44, %38, %32, %24
  br label %75

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %21

74:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %69, %19
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @EVP_PKEY_CTX_free(i32* %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i32 @TEST_int_gt(i32, i32) #2

declare dso_local i32 @EVP_PKEY_derive_init(i32*) #2

declare dso_local i32 @EVP_PKEY_CTX_set_hkdf_md(i32*, i32) #2

declare dso_local i32 @EVP_sha256(...) #2

declare dso_local i32 @EVP_PKEY_CTX_set1_hkdf_salt(i32*, i8*, i32) #2

declare dso_local i32 @EVP_PKEY_CTX_set1_hkdf_key(i32*, i8*, i32) #2

declare dso_local i32 @EVP_PKEY_CTX_add1_hkdf_info(i32*, i8*, i32) #2

declare dso_local i32 @EVP_PKEY_derive(i32*, i8*, i64*) #2

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #2

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
