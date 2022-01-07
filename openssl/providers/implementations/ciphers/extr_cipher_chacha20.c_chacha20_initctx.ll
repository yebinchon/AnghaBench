; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20.c_chacha20_initctx.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20.c_chacha20_initctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHACHA20_KEYLEN = common dso_local global i32 0, align 4
@CHACHA20_BLKLEN = common dso_local global i32 0, align 4
@CHACHA20_IVLEN = common dso_local global i32 0, align 4
@CHACHA20_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chacha20_initctx(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @CHACHA20_KEYLEN, align 4
  %5 = mul nsw i32 %4, 8
  %6 = load i32, i32* @CHACHA20_BLKLEN, align 4
  %7 = mul nsw i32 %6, 8
  %8 = load i32, i32* @CHACHA20_IVLEN, align 4
  %9 = mul nsw i32 %8, 8
  %10 = load i32, i32* @CHACHA20_FLAGS, align 4
  %11 = load i32, i32* @CHACHA20_KEYLEN, align 4
  %12 = mul nsw i32 %11, 8
  %13 = call i32 @PROV_CIPHER_HW_chacha20(i32 %12)
  %14 = call i32 @cipher_generic_initkey(i32* %3, i32 %5, i32 %7, i32 %9, i32 0, i32 %10, i32 %13, i32* null)
  ret void
}

declare dso_local i32 @cipher_generic_initkey(i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PROV_CIPHER_HW_chacha20(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
