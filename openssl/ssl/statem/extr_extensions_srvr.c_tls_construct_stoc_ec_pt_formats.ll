; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_ec_pt_formats.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_ec_pt_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }

@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_aECDSA = common dso_local global i64 0, align 8
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_ec_point_formats = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_EC_PT_FORMATS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_ec_pt_formats(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @SSL_kECDHE, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %5
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @SSL_aECDSA, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %5
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %52, i32* %6, align 4
  br label %83

53:                                               ; preds = %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = call i32 @tls1_get_formatlist(%struct.TYPE_13__* %54, i8** %15, i64* %16)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @TLSEXT_TYPE_ec_point_formats, align 4
  %58 = call i32 @WPACKET_put_bytes_u16(i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @WPACKET_start_sub_packet_u16(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i64, i64* %16, align 8
  %68 = call i32 @WPACKET_sub_memcpy_u8(i32* %65, i8* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @WPACKET_close(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70, %64, %60, %53
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_EC_PT_FORMATS, align 4
  %78 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_13__* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %80, i32* %6, align 4
  br label %83

81:                                               ; preds = %70
  %82 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %74, %51
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @tls1_get_formatlist(%struct.TYPE_13__*, i8**, i64*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
