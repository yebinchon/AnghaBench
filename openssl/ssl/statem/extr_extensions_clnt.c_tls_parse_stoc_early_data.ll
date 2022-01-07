; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_early_data.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_early_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@SSL_EXT_TLS1_3_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_EARLY_DATA = common dso_local global i32 0, align 4
@SSL_R_INVALID_MAX_EARLY_DATA = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_early_data(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SSL_EXT_TLS1_3_NEW_SESSION_TICKET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @PACKET_get_net_4(i32* %17, i64* %12)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @PACKET_remaining(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %16
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %27 = load i32, i32* @SSL_F_TLS_PARSE_STOC_EARLY_DATA, align 4
  %28 = load i32, i32* @SSL_R_INVALID_MAX_EARLY_DATA, align 4
  %29 = call i32 @SSLfatal(%struct.TYPE_10__* %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %6, align 4
  br label %69

30:                                               ; preds = %20
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i64 %31, i64* %36, align 8
  store i32 1, i32* %6, align 4
  br label %69

37:                                               ; preds = %5
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @PACKET_remaining(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %44 = load i32, i32* @SSL_F_TLS_PARSE_STOC_EARLY_DATA, align 4
  %45 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %46 = call i32 @SSLfatal(%struct.TYPE_10__* %42, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %6, align 4
  br label %69

47:                                               ; preds = %37
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %61 = load i32, i32* @SSL_F_TLS_PARSE_STOC_EARLY_DATA, align 4
  %62 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %63 = call i32 @SSLfatal(%struct.TYPE_10__* %59, i32 %60, i32 %61, i32 %62)
  store i32 0, i32* %6, align 4
  br label %69

64:                                               ; preds = %53
  %65 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %58, %41, %30, %24
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @PACKET_get_net_4(i32*, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
