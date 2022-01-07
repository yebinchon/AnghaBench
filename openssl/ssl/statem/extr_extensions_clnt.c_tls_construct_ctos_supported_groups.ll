; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_supported_groups.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_supported_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_supported_groups = common dso_local global i32 0, align 4
@WPACKET_FLAGS_NON_ZERO_LENGTH = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_supported_groups(i32* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ssl_get_min_max_version(i32* %19, i32* %15, i32* %16, i32* null)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %26 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call i32 @SSLfatal(i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %123

30:                                               ; preds = %5
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @use_ecc(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @TLS1_3_VERSION, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %40, i32* %6, align 4
  br label %123

41:                                               ; preds = %35, %30
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @tls1_get_supported_groups(i32* %42, i32** %12, i64* %13)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @TLSEXT_TYPE_supported_groups, align 4
  %46 = call i32 @WPACKET_put_bytes_u16(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @WPACKET_start_sub_packet_u16(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @WPACKET_start_sub_packet_u16(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @WPACKET_FLAGS_NON_ZERO_LENGTH, align 4
  %59 = call i32 @WPACKET_set_flags(i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56, %52, %48, %41
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %64 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, align 4
  %65 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %66 = call i32 @SSLfatal(i32* %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %67, i32* %6, align 4
  br label %123

68:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %103, %68
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %69
  %74 = load i32*, i32** %12, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %18, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i64 @tls_valid_group(i32* %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %73
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %87 = call i64 @tls_group_allowed(i32* %84, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @WPACKET_put_bytes_u16(i32* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %97 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, align 4
  %98 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %99 = call i32 @SSLfatal(i32* %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %100, i32* %6, align 4
  br label %123

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %83, %73
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %14, align 8
  br label %69

106:                                              ; preds = %69
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @WPACKET_close(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @WPACKET_close(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %110, %106
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %117 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, align 4
  %118 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %119 = call i32 @SSLfatal(i32* %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %120, i32* %6, align 4
  br label %123

121:                                              ; preds = %110
  %122 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %114, %94, %61, %39, %23
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @ssl_get_min_max_version(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @use_ecc(i32*, i32) #1

declare dso_local i32 @tls1_get_supported_groups(i32*, i32**, i64*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_set_flags(i32*, i32) #1

declare dso_local i64 @tls_valid_group(i32*, i32, i32) #1

declare dso_local i64 @tls_group_allowed(i32*, i32, i32) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
