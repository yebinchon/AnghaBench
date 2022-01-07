; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_pkey_meth_kdf_test.c_test_kdf_hkdf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_pkey_meth_kdf_test.c_test_kdf_hkdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_HKDF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"EVP_PKEY_HKDF\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EVP_PKEY_derive_init\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"EVP_PKEY_CTX_set_hkdf_md\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_CTX_set1_hkdf_salt\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_CTX_set1_hkdf_key\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_CTX_set1_hkdf_info\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"EVP_PKEY_derive\00", align 1
@__const.test_kdf_hkdf.expected = private unnamed_addr constant [10 x i8] c"*\C46\9FRY\96\F8\DE\13", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_hkdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_hkdf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  store i64 10, i64* %4, align 8
  %6 = load i32, i32* @EVP_PKEY_HKDF, align 4
  %7 = call i32* @EVP_PKEY_CTX_new_id(i32 %6, i32* null)
  store i32* %7, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @TEST_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %57

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @EVP_PKEY_derive_init(i32* %12)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @TEST_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %57

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 (...) @EVP_sha256()
  %20 = call i64 @EVP_PKEY_CTX_set_hkdf_md(i32* %18, i32 %19)
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @TEST_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %57

24:                                               ; preds = %17
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @EVP_PKEY_CTX_set1_hkdf_salt(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @TEST_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %57

30:                                               ; preds = %24
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @EVP_PKEY_CTX_set1_hkdf_key(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @TEST_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %57

36:                                               ; preds = %30
  %37 = load i32*, i32** %2, align 8
  %38 = call i64 @EVP_PKEY_CTX_add1_hkdf_info(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @TEST_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %57

42:                                               ; preds = %36
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %45 = call i64 @EVP_PKEY_derive(i32* %43, i8* %44, i64* %4)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @TEST_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %57

49:                                               ; preds = %42
  %50 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_kdf_hkdf.expected, i32 0, i32 0), i64 10, i1 false)
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %53 = call i32 @TEST_mem_eq(i8* %51, i32 10, i8* %52, i32 10)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %57

56:                                               ; preds = %49
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %55, %47, %40, %34, %28, %22, %15, %9
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @EVP_PKEY_CTX_free(i32* %58)
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_hkdf_md(i32*, i32) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_hkdf_salt(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_hkdf_key(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_add1_hkdf_info(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_derive(i32*, i8*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
