; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_EVP_Enveloped.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_test_EVP_Enveloped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@test_EVP_Enveloped.msg = internal constant [8 x i8] c"\01\02\03\04\05\06\07\08", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_EVP_Enveloped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_EVP_Enveloped() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %14 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %18, i32** %13, align 8
  %19 = call i8* (...) @load_example_rsa_key()
  store i8* %19, i8** %3, align 8
  %20 = call i32 @TEST_ptr(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %0
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @EVP_PKEY_size(i8* %23)
  %25 = call i8* @OPENSSL_zalloc(i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = call i32 @TEST_ptr(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = call i8* (...) @EVP_CIPHER_CTX_new()
  store i8* %29, i8** %2, align 8
  %30 = call i32 @TEST_ptr(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @EVP_SealInit(i8* %33, i32* %34, i8** %4, i32* %8, i8* %17, i8** %3, i32 1)
  %36 = call i32 @TEST_true(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %41 = call i32 @EVP_SealUpdate(i8* %39, i8* %40, i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_EVP_Enveloped.msg, i64 0, i64 0), i32 8)
  %42 = call i32 @TEST_true(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i32 @EVP_SealFinal(i8* %45, i8* %49, i32* %7)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44, %38, %32, %28, %22, %0
  br label %94

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i8*, i8** %2, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @EVP_OpenInit(i8* %58, i32* %59, i8* %60, i32 %61, i8* %17, i8* %62)
  %64 = call i32 @TEST_true(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %54
  %67 = load i8*, i8** %2, align 8
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @EVP_OpenUpdate(i8* %67, i8* %68, i32* %10, i8* %69, i32 %70)
  %72 = call i32 @TEST_true(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = call i32 @EVP_OpenFinal(i8* %75, i8* %79, i32* %7)
  %81 = call i32 @TEST_true(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74, %66, %54
  br label %94

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @TEST_mem_eq(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_EVP_Enveloped.msg, i64 0, i64 0), i32 8, i8* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %94

93:                                               ; preds = %84
  store i32 1, i32* %1, align 4
  br label %94

94:                                               ; preds = %93, %92, %83, %53
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @OPENSSL_free(i8* %95)
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @EVP_PKEY_free(i8* %97)
  %99 = load i8*, i8** %2, align 8
  %100 = call i32 @EVP_CIPHER_CTX_free(i8* %99)
  %101 = load i32, i32* %1, align 4
  %102 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_aes_256_cbc(...) #2

declare dso_local i32 @TEST_ptr(i8*) #2

declare dso_local i8* @load_example_rsa_key(...) #2

declare dso_local i8* @OPENSSL_zalloc(i32) #2

declare dso_local i32 @EVP_PKEY_size(i8*) #2

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @EVP_SealInit(i8*, i32*, i8**, i32*, i8*, i8**, i32) #2

declare dso_local i32 @EVP_SealUpdate(i8*, i8*, i32*, i8*, i32) #2

declare dso_local i32 @EVP_SealFinal(i8*, i8*, i32*) #2

declare dso_local i32 @EVP_OpenInit(i8*, i32*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @EVP_OpenUpdate(i8*, i8*, i32*, i8*, i32) #2

declare dso_local i32 @EVP_OpenFinal(i8*, i8*, i32*) #2

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @EVP_PKEY_free(i8*) #2

declare dso_local i32 @EVP_CIPHER_CTX_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
