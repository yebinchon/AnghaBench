; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_sig_algs.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_sig_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_signature_algorithms = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_SIG_ALGS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_sig_algs(i32* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @SSL_CLIENT_USE_SIGALGS(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %18, i32* %6, align 4
  br label %58

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @tls12_get_psigalgs(i32* %20, i32 1, i32** %13)
  store i64 %21, i64* %12, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @TLSEXT_TYPE_signature_algorithms, align 4
  %24 = call i32 @WPACKET_put_bytes_u16(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @WPACKET_start_sub_packet_u16(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @WPACKET_start_sub_packet_u16(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @tls12_copy_sigalgs(i32* %35, i32* %36, i32* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @WPACKET_close(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @WPACKET_close(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %41, %34, %30, %26, %19
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %52 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SIG_ALGS, align 4
  %53 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %54 = call i32 @SSLfatal(i32* %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %49, %17
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @SSL_CLIENT_USE_SIGALGS(i32*) #1

declare dso_local i64 @tls12_get_psigalgs(i32*, i32, i32**) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @tls12_copy_sigalgs(i32*, i32*, i32*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
