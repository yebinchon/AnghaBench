; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_supported_versions.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_supported_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_supported_versions = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_supported_versions(i32* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ssl_get_min_max_version(i32* %16, i32* %13, i32* %14, i32* null)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %23 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @SSLfatal(i32* %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %26, i32* %6, align 4
  br label %92

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @TLS1_3_VERSION, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %32, i32* %6, align 4
  br label %92

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @TLSEXT_TYPE_supported_versions, align 4
  %36 = call i32 @WPACKET_put_bytes_u16(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @WPACKET_start_sub_packet_u16(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @WPACKET_start_sub_packet_u8(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %38, %33
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS, align 4
  %50 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %51 = call i32 @SSLfatal(i32* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %52, i32* %6, align 4
  br label %92

53:                                               ; preds = %42
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %72, %53
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @WPACKET_put_bytes_u16(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %67 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS, align 4
  %68 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %69 = call i32 @SSLfatal(i32* %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %70, i32* %6, align 4
  br label %92

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %12, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @WPACKET_close(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @WPACKET_close(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79, %75
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %86 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS, align 4
  %87 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %88 = call i32 @SSLfatal(i32* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %89, i32* %6, align 4
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %83, %64, %46, %31, %20
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @ssl_get_min_max_version(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
