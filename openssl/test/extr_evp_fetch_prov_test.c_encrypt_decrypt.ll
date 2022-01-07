; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_encrypt_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_encrypt_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @encrypt_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_decrypt(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %10, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 16)
  %16 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %16, i32** %10, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %3
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %23 = call i32 @EVP_CipherInit_ex(i32* %20, i32* %21, i32* null, i8* %22, i32* null, i32 1)
  %24 = call i32 @TEST_true(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %19
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @EVP_CipherUpdate(i32* %27, i8* %28, i32* %8, i8* %29, i32 %31)
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %26
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %38 = call i32 @EVP_CipherFinal_ex(i32* %36, i8* %37, i32* %8)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %45 = call i32 @EVP_CipherInit_ex(i32* %42, i32* %43, i32* null, i8* %44, i32* null, i32 0)
  %46 = call i32 @TEST_true(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @EVP_CipherUpdate(i32* %49, i8* %50, i32* %9, i8* %51, i32 %52)
  %54 = call i32 @TEST_true(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %59 = call i32 @EVP_CipherFinal_ex(i32* %57, i8* %58, i32* %9)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @TEST_mem_eq(i8* %63, i32 %64, i8* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62, %56, %48, %41, %35, %26, %19, %3
  br label %71

70:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @EVP_CIPHER_CTX_free(i32* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @EVP_CipherUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_CipherFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
