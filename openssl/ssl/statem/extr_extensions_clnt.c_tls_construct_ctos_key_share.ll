; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_key_share.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@TLSEXT_TYPE_key_share = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_KEY_SHARE = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_key_share(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64* null, i64** %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @TLSEXT_TYPE_key_share, align 4
  %18 = call i32 @WPACKET_put_bytes_u16(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @WPACKET_start_sub_packet_u16(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @WPACKET_start_sub_packet_u16(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %20, %5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %31 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE, align 4
  %32 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_9__* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %34, i32* %6, align 4
  br label %107

35:                                               ; preds = %24
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = call i32 @tls1_get_supported_groups(%struct.TYPE_9__* %36, i64** %14, i64* %13)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  br label %72

48:                                               ; preds = %35
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = load i64*, i64** %14, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %60 = call i32 @tls_group_allowed(%struct.TYPE_9__* %54, i64 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %68

63:                                               ; preds = %53
  %64 = load i64*, i64** %14, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %15, align 8
  br label %71

68:                                               ; preds = %62
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %49

71:                                               ; preds = %63, %49
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i64, i64* %15, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %78 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE, align 4
  %79 = load i32, i32* @SSL_R_NO_SUITABLE_KEY_SHARE, align 4
  %80 = call i32 @SSLfatal(%struct.TYPE_9__* %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %81, i32* %6, align 4
  br label %107

82:                                               ; preds = %72
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @add_key_share(%struct.TYPE_9__* %83, i32* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %89, i32* %6, align 4
  br label %107

90:                                               ; preds = %82
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @WPACKET_close(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @WPACKET_close(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %101 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE, align 4
  %102 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %103 = call i32 @SSLfatal(%struct.TYPE_9__* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %104, i32* %6, align 4
  br label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %98, %88, %75, %28
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_9__*, i64**, i64*) #1

declare dso_local i32 @tls_group_allowed(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @add_key_share(%struct.TYPE_9__*, i32*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
