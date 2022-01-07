; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_masterkey_with_password.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_masterkey_with_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@CALG_SHA1 = common dso_local global i64 0, align 8
@CALG_MD4 = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@CALG_SHA_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_dpapi_unprotect_masterkey_with_password(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca [32 x i32], align 16
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %15, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @wcslen(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i64, i64* @CALG_SHA1, align 8
  br label %35

33:                                               ; preds = %7
  %34 = load i64, i64* @CALG_MD4, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = call i32 @kull_m_crypto_hash_len(i64 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* @LPTR, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i32* @LocalAlloc(i32 %39, i32 %40)
  store i32* %41, i32** %19, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %94

43:                                               ; preds = %35
  %44 = load i64, i64* %16, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @wcslen(i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %19, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i64 @kull_m_crypto_hash(i64 %44, i32 %45, i32 %51, i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %43
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @CALG_MD4, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* @CALG_SHA_256, align 4
  %65 = load i32*, i32** %19, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %18, align 4
  %69 = getelementptr inbounds [32 x i32], [32 x i32]* %20, i64 0, i64 0
  %70 = load i64, i64* @FALSE, align 8
  %71 = call i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i32 %64, i32* %65, i32 %66, i32 %67, i32 %68, i32 10000, i32* %69, i32 128, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load i32, i32* @CALG_SHA_256, align 4
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %20, i64 0, i64 0
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32*, i32** %19, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i64, i64* @FALSE, align 8
  %81 = call i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i32 %74, i32* %75, i32 128, i32 %76, i32 %77, i32 1, i32* %78, i32 %79, i64 %80)
  br label %82

82:                                               ; preds = %73, %63
  br label %83

83:                                               ; preds = %82, %59, %56
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %19, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32**, i32*** %13, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = call i64 @kull_m_dpapi_unprotect_masterkey_with_userHash(i32 %84, i32* %85, i32 %86, i32 %87, i32** %88, i32* %89)
  store i64 %90, i64* %15, align 8
  br label %91

91:                                               ; preds = %83, %43
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @LocalFree(i32* %92)
  br label %94

94:                                               ; preds = %91, %35
  %95 = load i64, i64* %15, align 8
  ret i64 %95
}

declare dso_local i64 @wcslen(i32) #1

declare dso_local i32 @kull_m_crypto_hash_len(i64) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i64 @kull_m_crypto_hash(i64, i32, i32, i32*, i32) #1

declare dso_local i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i32, i32*, i32, i32, i32, i32, i32*, i32, i64) #1

declare dso_local i64 @kull_m_dpapi_unprotect_masterkey_with_userHash(i32, i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
