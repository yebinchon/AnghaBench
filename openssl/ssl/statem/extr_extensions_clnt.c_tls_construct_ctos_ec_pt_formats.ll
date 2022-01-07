; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_ec_pt_formats.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_ec_pt_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_ec_point_formats = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_ec_pt_formats(i32* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @ssl_get_min_max_version(i32* %17, i32* %15, i32* %16, i32* null)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %24 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @SSLfatal(i32* %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %27, i32* %6, align 4
  br label %65

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @use_ecc(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %34, i32* %6, align 4
  br label %65

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @tls1_get_formatlist(i32* %36, i8** %12, i64* %13)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @TLSEXT_TYPE_ec_point_formats, align 4
  %40 = call i32 @WPACKET_put_bytes_u16(i32* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @WPACKET_start_sub_packet_u16(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @WPACKET_sub_memcpy_u8(i32* %47, i8* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @WPACKET_close(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52, %46, %42, %35
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %59 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS, align 4
  %60 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %61 = call i32 @SSLfatal(i32* %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %62, i32* %6, align 4
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %56, %33, %21
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @ssl_get_min_max_version(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @use_ecc(i32*, i32) #1

declare dso_local i32 @tls1_get_formatlist(i32*, i8**, i64*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
