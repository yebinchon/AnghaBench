; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_cert_validity.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_cert_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_PKEY_RSA = common dso_local global i32 0, align 4
@SSL_PKEY_RSA_PSS_SIGN = common dso_local global i32 0, align 4
@SSL_PKEY_DSA_SIGN = common dso_local global i32 0, align 4
@SSL_PKEY_ECC = common dso_local global i32 0, align 4
@SSL_PKEY_GOST01 = common dso_local global i32 0, align 4
@SSL_PKEY_GOST12_256 = common dso_local global i32 0, align 4
@SSL_PKEY_GOST12_512 = common dso_local global i32 0, align 4
@SSL_PKEY_ED25519 = common dso_local global i32 0, align 4
@SSL_PKEY_ED448 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls1_set_cert_validity(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SSL_PKEY_RSA, align 4
  %5 = call i32 @tls1_check_chain(i32* %3, i32* null, i32* null, i32* null, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @SSL_PKEY_RSA_PSS_SIGN, align 4
  %8 = call i32 @tls1_check_chain(i32* %6, i32* null, i32* null, i32* null, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @SSL_PKEY_DSA_SIGN, align 4
  %11 = call i32 @tls1_check_chain(i32* %9, i32* null, i32* null, i32* null, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SSL_PKEY_ECC, align 4
  %14 = call i32 @tls1_check_chain(i32* %12, i32* null, i32* null, i32* null, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SSL_PKEY_GOST01, align 4
  %17 = call i32 @tls1_check_chain(i32* %15, i32* null, i32* null, i32* null, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SSL_PKEY_GOST12_256, align 4
  %20 = call i32 @tls1_check_chain(i32* %18, i32* null, i32* null, i32* null, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @SSL_PKEY_GOST12_512, align 4
  %23 = call i32 @tls1_check_chain(i32* %21, i32* null, i32* null, i32* null, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @SSL_PKEY_ED25519, align 4
  %26 = call i32 @tls1_check_chain(i32* %24, i32* null, i32* null, i32* null, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @SSL_PKEY_ED448, align 4
  %29 = call i32 @tls1_check_chain(i32* %27, i32* null, i32* null, i32* null, i32 %28)
  ret void
}

declare dso_local i32 @tls1_check_chain(i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
