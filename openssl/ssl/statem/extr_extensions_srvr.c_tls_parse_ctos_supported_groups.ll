; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_supported_groups.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_supported_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_supported_groups(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @PACKET_as_length_prefixed_2(i32* %13, i32* %12)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = call i32 @PACKET_remaining(i32* %12)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 @PACKET_remaining(i32* %12)
  %21 = srem i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %16, %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %26 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS, align 4
  %27 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %28 = call i32 @SSLfatal(%struct.TYPE_7__* %24, i32 %25, i32 %26, i32 %27)
  store i32 0, i32* %6, align 4
  br label %66

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = call i64 @SSL_IS_TLS13(%struct.TYPE_7__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %34, %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @OPENSSL_free(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @tls1_save_u16(i32* %12, i32** %52, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %38
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %61 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS, align 4
  %62 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %63 = call i32 @SSLfatal(%struct.TYPE_7__* %59, i32 %60, i32 %61, i32 %62)
  store i32 0, i32* %6, align 4
  br label %66

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64, %34
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %58, %23
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_7__*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @tls1_save_u16(i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
