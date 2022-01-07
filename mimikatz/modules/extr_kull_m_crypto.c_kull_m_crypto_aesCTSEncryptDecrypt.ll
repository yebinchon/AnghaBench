; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_aesCTSEncryptDecrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_aesCTSEncryptDecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@CRYPT_MODE_CBC = common dso_local global i32 0, align 4
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@KP_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_crypto_aesCTSEncryptDecrypt(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* @CRYPT_MODE_CBC, align 4
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @PROV_RSA_AES, align 4
  %22 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %23 = call i64 @CryptAcquireContext(i32* %16, i32* null, i32* null, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %7
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @kull_m_crypto_hkey(i32 %26, i32 %27, i64 %28, i32 %29, i32 0, i32* %17, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %25
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @KP_MODE, align 4
  %35 = ptrtoint i32* %18 to i32
  %36 = call i64 @CryptSetKeyParam(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = load i64, i64* %13, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i64 @kull_m_crypto_aesCTSEncrypt(i32 %42, i32 %44, i32 %45, i32 %47)
  br label %57

49:                                               ; preds = %38
  %50 = load i32, i32* %17, align 4
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %13, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @kull_m_crypto_aesCTSDecrypt(i32 %50, i32 %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %49, %41
  %58 = phi i64 [ %48, %41 ], [ %56, %49 ]
  store i64 %58, i64* %15, align 8
  br label %59

59:                                               ; preds = %57, %32
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @CryptDestroyKey(i32 %60)
  br label %62

62:                                               ; preds = %59, %25
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @CryptReleaseContext(i32 %63, i32 0)
  br label %65

65:                                               ; preds = %62, %7
  %66 = load i64, i64* %15, align 8
  ret i64 %66
}

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @kull_m_crypto_hkey(i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @CryptSetKeyParam(i32, i32, i32, i32) #1

declare dso_local i64 @kull_m_crypto_aesCTSEncrypt(i32, i32, i32, i32) #1

declare dso_local i64 @kull_m_crypto_aesCTSDecrypt(i32, i32, i32, i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
