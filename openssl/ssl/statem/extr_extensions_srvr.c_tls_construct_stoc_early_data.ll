; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_early_data.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_early_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@SSL_EXT_TLS1_3_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_early_data = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_EARLY_DATA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_early_data(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @SSL_EXT_TLS1_3_NEW_SESSION_TICKET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %5
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %21, i32* %6, align 4
  br label %82

22:                                               ; preds = %15
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @TLSEXT_TYPE_early_data, align 4
  %25 = call i32 @WPACKET_put_bytes_u16(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @WPACKET_start_sub_packet_u16(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @WPACKET_put_bytes_u32(i32* %32, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @WPACKET_close(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %31, %27, %22
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %45 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_EARLY_DATA, align 4
  %46 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %47 = call i32 @SSLfatal(%struct.TYPE_6__* %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %48, i32* %6, align 4
  br label %82

49:                                               ; preds = %38
  %50 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %50, i32* %6, align 4
  br label %82

51:                                               ; preds = %5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SSL_EARLY_DATA_ACCEPTED, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %59, i32* %6, align 4
  br label %82

60:                                               ; preds = %51
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @TLSEXT_TYPE_early_data, align 4
  %63 = call i32 @WPACKET_put_bytes_u16(i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @WPACKET_start_sub_packet_u16(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @WPACKET_close(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69, %65, %60
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %76 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_EARLY_DATA, align 4
  %77 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %78 = call i32 @SSLfatal(%struct.TYPE_6__* %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %79, i32* %6, align 4
  br label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %73, %58, %49, %42, %20
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_put_bytes_u32(i32*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
