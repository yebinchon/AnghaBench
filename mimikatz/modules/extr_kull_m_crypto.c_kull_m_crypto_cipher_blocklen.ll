; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_cipher_blocklen.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_cipher_blocklen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@KP_BLOCKLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_cipher_blocklen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 4, i32* %4, align 4
  %7 = load i32, i32* @PROV_RSA_AES, align 4
  %8 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %9 = call i64 @CryptAcquireContext(i32* %5, i32* null, i32* null, i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @CryptGenKey(i32 %12, i32 %13, i32 0, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @KP_BLOCKLEN, align 4
  %19 = ptrtoint i32* %3 to i32
  %20 = call i32 @CryptGetKeyParam(i32 %17, i32 %18, i32 %19, i32* %4, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @CryptDestroyKey(i32 %21)
  br label %23

23:                                               ; preds = %16, %11
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @CryptReleaseContext(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %27, 8
  ret i32 %28
}

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @CryptGenKey(i32, i32, i32, i32*) #1

declare dso_local i32 @CryptGetKeyParam(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
