; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_pkey_meth_kdf_test.c_test_kdf_tls1_prf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_pkey_meth_kdf_test.c_test_kdf_tls1_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_TLS1_PRF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EVP_PKEY_TLS1_PRF\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EVP_PKEY_derive_init\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_CTX_set_tls1_prf_md\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"EVP_PKEY_CTX_set1_tls1_prf_secret\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_CTX_add1_tls1_prf_seed\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"EVP_PKEY_derive\00", align 1
@__const.test_kdf_tls1_prf.expected = private unnamed_addr constant [16 x i8] c"\8EM\93%0\D7e\A0\AA\E9t\C3\04s^\CC", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_tls1_prf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_tls1_prf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca [16 x i8], align 16
  store i32 0, i32* %1, align 4
  store i64 16, i64* %4, align 8
  %6 = load i32, i32* @EVP_PKEY_TLS1_PRF, align 4
  %7 = call i32* @EVP_PKEY_CTX_new_id(i32 %6, i32* null)
  store i32* %7, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @TEST_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %51

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @EVP_PKEY_derive_init(i32* %12)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @TEST_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %51

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 (...) @EVP_sha256()
  %20 = call i64 @EVP_PKEY_CTX_set_tls1_prf_md(i32* %18, i32 %19)
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @TEST_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %51

24:                                               ; preds = %17
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @EVP_PKEY_CTX_set1_tls1_prf_secret(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @TEST_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %51

30:                                               ; preds = %24
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @TEST_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %51

36:                                               ; preds = %30
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %39 = call i64 @EVP_PKEY_derive(i32* %37, i8* %38, i64* %4)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @TEST_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %51

43:                                               ; preds = %36
  %44 = bitcast [16 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_kdf_tls1_prf.expected, i32 0, i32 0), i64 16, i1 false)
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %47 = call i32 @TEST_mem_eq(i8* %45, i32 16, i8* %46, i32 16)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  store i32 1, i32* %1, align 4
  br label %51

51:                                               ; preds = %50, %49, %41, %34, %28, %22, %15, %9
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @EVP_PKEY_CTX_free(i32* %52)
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_tls1_prf_md(i32*, i32) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_tls1_prf_secret(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_add1_tls1_prf_seed(i32*, i8*, i32) #1

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
