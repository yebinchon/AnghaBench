; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_hmac.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@CALG_RC2 = common dso_local global i32 0, align 4
@CRYPT_IPSEC_HMAC_KEY = common dso_local global i32 0, align 4
@CALG_HMAC = common dso_local global i32 0, align 4
@HP_HMAC_INFO = common dso_local global i32 0, align 4
@HP_HASHVAL = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_crypto_hmac(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 8
  %21 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %15, align 8
  %23 = bitcast %struct.TYPE_2__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 40, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %24, align 8
  %26 = load i32, i32* @PROV_RSA_AES, align 4
  %27 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %28 = call i64 @CryptAcquireContext(i32* %17, i32* null, i32* null, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %93

30:                                               ; preds = %7
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @CALG_RC2, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CRYPT_IPSEC_HMAC_KEY, align 4
  %36 = call i64 @kull_m_crypto_hkey(i32 %31, i32 %32, i64 %33, i32 %34, i32 %35, i32* %18, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %30
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @CALG_HMAC, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i64 @CryptCreateHash(i32 %39, i32 %40, i32 %41, i32 0, i32* %19)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* @HP_HMAC_INFO, align 4
  %47 = ptrtoint %struct.TYPE_2__* %20 to i32
  %48 = call i64 @CryptSetHashParam(i32 %45, i32 %46, i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load i32, i32* %19, align 4
  %52 = load i64, i64* %11, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @CryptHashData(i32 %51, i32 %53, i32 %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %50
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* @HP_HASHVAL, align 4
  %60 = call i64 @CryptGetHashParam(i32 %58, i32 %59, i32* null, i32* %16, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load i32, i32* @LPTR, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @LocalAlloc(i32 %63, i32 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %21, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @HP_HASHVAL, align 4
  %71 = load i32*, i32** %21, align 8
  %72 = call i64 @CryptGetHashParam(i32 %69, i32 %70, i32* %71, i32* %16, i32 0)
  store i64 %72, i64* %15, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32*, i32** %21, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @min(i32 %75, i32 %76)
  %78 = call i32 @RtlCopyMemory(i32 %73, i32* %74, i32 %77)
  %79 = load i32*, i32** %21, align 8
  %80 = call i32 @LocalFree(i32* %79)
  br label %81

81:                                               ; preds = %68, %62
  br label %82

82:                                               ; preds = %81, %57
  br label %83

83:                                               ; preds = %82, %50
  br label %84

84:                                               ; preds = %83, %44
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @CryptDestroyHash(i32 %85)
  br label %87

87:                                               ; preds = %84, %38
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @CryptDestroyKey(i32 %88)
  br label %90

90:                                               ; preds = %87, %30
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @CryptReleaseContext(i32 %91, i32 0)
  br label %93

93:                                               ; preds = %90, %7
  %94 = load i64, i64* %15, align 8
  ret i64 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #2

declare dso_local i64 @kull_m_crypto_hkey(i32, i32, i64, i32, i32, i32*, i32*) #2

declare dso_local i64 @CryptCreateHash(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @CryptSetHashParam(i32, i32, i32, i32) #2

declare dso_local i64 @CryptHashData(i32, i32, i32, i32) #2

declare dso_local i64 @CryptGetHashParam(i32, i32, i32*, i32*, i32) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(i32, i32*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @CryptDestroyHash(i32) #2

declare dso_local i32 @CryptDestroyKey(i32) #2

declare dso_local i32 @CryptReleaseContext(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
