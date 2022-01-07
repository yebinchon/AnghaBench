; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_server_name.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_server_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_server_name = common dso_local global i32 0, align 4
@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_SERVER_NAME = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_server_name(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
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
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %18, i32* %6, align 4
  br label %67

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @TLSEXT_TYPE_server_name, align 4
  %22 = call i32 @WPACKET_put_bytes_u16(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @WPACKET_start_sub_packet_u16(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @WPACKET_start_sub_packet_u16(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %35 = call i32 @WPACKET_put_bytes_u8(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @strlen(i32* %46)
  %48 = call i32 @WPACKET_sub_memcpy_u16(i32* %38, i32* %42, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @WPACKET_close(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @WPACKET_close(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54, %50, %37, %32, %28, %24, %19
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %61 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SERVER_NAME, align 4
  %62 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %63 = call i32 @SSLfatal(%struct.TYPE_6__* %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %64, i32* %6, align 4
  br label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %58, %17
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
