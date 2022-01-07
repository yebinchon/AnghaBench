; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_kbkdf_6803_256.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_kbkdf_6803_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_kdf_kbkdf_6803_256.input_key = internal global [32 x i8] c"\B9\D6\82\8B V\B7\BEem\88\A1#\B1\FA\C6\82\14\AC+r~\CF_i\AF\E0\C4\DF*m,", align 16
@test_kdf_kbkdf_6803_256.constants = internal global [3 x [5 x i8]] [[5 x i8] c"\00\00\00\02\99", [5 x i8] c"\00\00\00\02\AA", [5 x i8] c"\00\00\00\02U"], align 1
@test_kdf_kbkdf_6803_256.outputs = internal global [3 x [32 x i8]] [[32 x i8] c"\E4g\F9\A9U+\C7\D3\15Zb \AF\9C\19\22\0E\EE\D4\FFx\B0\D1\E6\A1TI\91F\1A\9EP", [32 x i8] c"A*\EF\C3b\A7(_\C3\96ljQ\81\E7`Z\E6u#[mT\9F\BF\C9\ABf0\A4\C6\04", [32 x i8] c"\FAbO\A0\E5#\99?\A3\88\AE\FD\C6~g\EB\CD\8C\08\E8\A0$k\1Ds\B0\D1\DD\9F\C5\82\B0"], align 16
@test_kdf_kbkdf_6803_256.iv = internal global [16 x i8] zeroinitializer, align 16
@OSSL_KDF_PARAM_CIPHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CAMELLIA-256-CBC\00", align 1
@OSSL_KDF_PARAM_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CMAC\00", align 1
@OSSL_KDF_PARAM_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"FEEDBACK\00", align 1
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SEED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"KBKDF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_kbkdf_6803_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_kbkdf_6803_256() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca [32 x i8], align 16
  store i32 0, i32* %2, align 4
  %8 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %91, %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %94

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* @OSSL_KDF_PARAM_CIPHER, align 4
  %14 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %17
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @OSSL_KDF_PARAM_MAC, align 4
  %20 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %23
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @OSSL_KDF_PARAM_MODE, align 4
  %26 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %32 = call i32 @OSSL_PARAM_construct_octet_string(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_kbkdf_6803_256.input_key, i64 0, i64 0), i32 32)
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x [5 x i8]], [3 x [5 x i8]]* @test_kdf_kbkdf_6803_256.constants, i64 0, i64 %39
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %40, i64 0, i64 0
  %42 = call i32 @OSSL_PARAM_construct_octet_string(i32 %37, i8* %41, i32 5)
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %48 = call i32 @OSSL_PARAM_construct_octet_string(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_kbkdf_6803_256.iv, i64 0, i64 0), i32 16)
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = call i32 (...) @OSSL_PARAM_construct_end()
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = call i32* @get_kdfbyname(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @TEST_ptr(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %12
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %64 = call i32 @EVP_KDF_CTX_set_params(i32* %62, i32* %63)
  %65 = call i64 @TEST_true(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %70 = call i32 @EVP_KDF_derive(i32* %68, i8* %69, i32 32)
  %71 = call i64 @TEST_int_gt(i32 %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @test_kdf_kbkdf_6803_256.outputs, i64 0, i64 %76
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %77, i64 0, i64 0
  %79 = call i64 @TEST_mem_eq(i8* %74, i32 32, i8* %78, i32 32)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %73, %67, %61, %12
  %82 = phi i1 [ false, %67 ], [ false, %61 ], [ false, %12 ], [ %80, %73 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %2, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @EVP_KDF_CTX_free(i32* %84)
  %86 = load i32, i32* %2, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %2, align 4
  store i32 %89, i32* %1, align 4
  br label %96

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %9

94:                                               ; preds = %9
  %95 = load i32, i32* %2, align 4
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %94, %88
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i32) #2

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i32) #2

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
