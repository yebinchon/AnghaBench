; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_genericAES128Decrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_genericAES128Decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CRYPT_MODE_CBC = common dso_local global i64 0, align 8
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@CALG_AES_128 = common dso_local global i32 0, align 4
@KP_MODE = common dso_local global i32 0, align 4
@KP_IV = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 83, i32 101, i32 116, i32 75, i32 101, i32 121, i32 80, i32 97, i32 114, i32 97, i32 109, i32 32, i32 40, i32 73, i32 86, i32 41, i32 0], align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 83, i32 101, i32 116, i32 75, i32 101, i32 121, i32 80, i32 97, i32 114, i32 97, i32 109, i32 32, i32 40, i32 77, i32 79, i32 68, i32 69, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [19 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 104, i32 107, i32 101, i32 121, i32 0], align 4
@.str.4 = private unnamed_addr constant [20 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 65, i32 99, i32 113, i32 117, i32 105, i32 114, i32 101, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_genericAES128Decrypt(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* @CRYPT_MODE_CBC, align 8
  store i64 %18, i64* %16, align 8
  %19 = load i32, i32* @PROV_RSA_AES, align 4
  %20 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %21 = call i64 @CryptAcquireContext(i32* %14, i32* null, i32* null, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %6
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @CALG_AES_128, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @kull_m_crypto_hkey(i32 %24, i32 %25, i64 %26, i32 16, i32 0, i32* %15, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %23
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @KP_MODE, align 4
  %32 = ptrtoint i64* %16 to i32
  %33 = call i64 @CryptSetKeyParam(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %29
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @KP_IV, align 4
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @CryptSetKeyParam(i32 %36, i32 %37, i32 %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load i32, i32* @LPTR, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @LocalAlloc(i32 %43, i64 %44)
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load i64, i64* %10, align 8
  %50 = load i64*, i64** %12, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @RtlCopyMemory(i64 %52, i64 %53, i64 %54)
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64*, i64** %12, align 8
  %62 = call i32 @CryptDecrypt(i32 %56, i32 0, i32 %57, i32 0, i32 %60, i64* %61)
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %48
  %65 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str to i8*))
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @LocalFree(i64 %67)
  %69 = load i64*, i64** %11, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64*, i64** %12, align 8
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %48
  br label %72

72:                                               ; preds = %71, %42
  br label %75

73:                                               ; preds = %35
  %74 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.1 to i8*))
  br label %75

75:                                               ; preds = %73, %72
  br label %78

76:                                               ; preds = %29
  %77 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([24 x i32]* @.str.2 to i8*))
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @CryptDestroyKey(i32 %79)
  br label %83

81:                                               ; preds = %23
  %82 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([19 x i32]* @.str.3 to i8*))
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @CryptReleaseContext(i32 %84, i32 0)
  br label %88

86:                                               ; preds = %6
  %87 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.4 to i8*))
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* %13, align 4
  ret i32 %89
}

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @kull_m_crypto_hkey(i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @CryptSetKeyParam(i32, i32, i32, i32) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i64) #1

declare dso_local i32 @CryptDecrypt(i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @LocalFree(i64) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
