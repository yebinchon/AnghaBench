; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecd_sig_info_set25519.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecd_sig_info_set25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i32 0, align 4
@NID_ED25519 = common dso_local global i32 0, align 4
@X25519_SECURITY_BITS = common dso_local global i32 0, align 4
@X509_SIG_INFO_TLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ecd_sig_info_set25519 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecd_sig_info_set25519(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @NID_undef, align 4
  %9 = load i32, i32* @NID_ED25519, align 4
  %10 = load i32, i32* @X25519_SECURITY_BITS, align 4
  %11 = load i32, i32* @X509_SIG_INFO_TLS, align 4
  %12 = call i32 @X509_SIG_INFO_set(i32* %7, i32 %8, i32 %9, i32 %10, i32 %11)
  ret i32 1
}

declare dso_local i32 @X509_SIG_INFO_set(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
