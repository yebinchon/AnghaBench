; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_pkey_meth_kdf_test.c_test_kdf_scrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_pkey_meth_kdf_test.c_test_kdf_scrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_SCRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"EVP_PKEY_SCRYPT\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EVP_PKEY_derive_init\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_CTX_set1_pbe_pass\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NaCl\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"EVP_PKEY_CTX_set1_scrypt_salt\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_CTX_set_scrypt_N\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_CTX_set_scrypt_r\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_CTX_set_scrypt_p\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"EVP_PKEY_CTX_set_maxmem_bytes\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"EVP_PKEY_derive should have failed\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"EVP_PKEY_derive\00", align 1
@__const.test_kdf_scrypt.expected = private unnamed_addr constant [64 x i8] c"\FD\BA\BE\1C\9D4r\00xV\E7\19\0D\01\E9\FE|j\D7\CB\C8#x0\E7svcK71b.\AF0\D9.\22\A3\88o\F1\09'\9D\980\DA\C7'\AF\B9J\83\EEm\83`\CB\DF\A2\CC\06@", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_scrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_scrypt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca [64 x i8], align 16
  store i32 0, i32* %1, align 4
  store i64 64, i64* %4, align 8
  %6 = load i32, i32* @EVP_PKEY_SCRYPT, align 4
  %7 = call i32* @EVP_PKEY_CTX_new_id(i32 %6, i32* null)
  store i32* %7, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @TEST_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %81

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @EVP_PKEY_derive_init(i32* %12)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @TEST_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %81

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @EVP_PKEY_CTX_set1_pbe_pass(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @TEST_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %81

23:                                               ; preds = %17
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @EVP_PKEY_CTX_set1_scrypt_salt(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @TEST_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %81

29:                                               ; preds = %23
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @EVP_PKEY_CTX_set_scrypt_N(i32* %30, i32 1024)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @TEST_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %81

35:                                               ; preds = %29
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @EVP_PKEY_CTX_set_scrypt_r(i32* %36, i32 8)
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @TEST_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %81

41:                                               ; preds = %35
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @EVP_PKEY_CTX_set_scrypt_p(i32* %42, i32 16)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @TEST_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %81

47:                                               ; preds = %41
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @EVP_PKEY_CTX_set_scrypt_maxmem_bytes(i32* %48, i32 16)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @TEST_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %81

53:                                               ; preds = %47
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %56 = call i64 @EVP_PKEY_derive(i32* %54, i8* %55, i64* %4)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @TEST_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %81

60:                                               ; preds = %53
  %61 = load i32*, i32** %2, align 8
  %62 = call i64 @EVP_PKEY_CTX_set_scrypt_maxmem_bytes(i32* %61, i32 10485760)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @TEST_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %81

66:                                               ; preds = %60
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %69 = call i64 @EVP_PKEY_derive(i32* %67, i8* %68, i64* %4)
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @TEST_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %81

73:                                               ; preds = %66
  %74 = bitcast [64 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %74, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @__const.test_kdf_scrypt.expected, i32 0, i32 0), i64 64, i1 false)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %77 = call i32 @TEST_mem_eq(i8* %75, i32 64, i8* %76, i32 64)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %81

80:                                               ; preds = %73
  store i32 1, i32* %1, align 4
  br label %81

81:                                               ; preds = %80, %79, %71, %64, %58, %51, %45, %39, %33, %27, %21, %15, %9
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @EVP_PKEY_CTX_free(i32* %82)
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_pbe_pass(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_scrypt_salt(i32*, i8*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_scrypt_N(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_scrypt_r(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_scrypt_p(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_scrypt_maxmem_bytes(i32*, i32) #1

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
