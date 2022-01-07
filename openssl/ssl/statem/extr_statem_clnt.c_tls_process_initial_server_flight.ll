; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_initial_server_flight.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_initial_server_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i32)*, i32 }
%struct.TYPE_10__ = type { i64 }

@TLSEXT_STATUSTYPE_nothing = common dso_local global i64 0, align 8
@SSL_AD_BAD_CERTIFICATE_STATUS_RESPONSE = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT = common dso_local global i32 0, align 4
@SSL_R_INVALID_STATUS_RESPONSE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_initial_server_flight(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = call i32 @ssl3_check_cert_and_algorithm(%struct.TYPE_13__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

9:                                                ; preds = %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TLSEXT_STATUSTYPE_nothing, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %9
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_13__*, i32)* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %16
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %30(%struct.TYPE_13__* %31, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = load i32, i32* @SSL_AD_BAD_CERTIFICATE_STATUS_RESPONSE, align 4
  %44 = load i32, i32* @SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT, align 4
  %45 = load i32, i32* @SSL_R_INVALID_STATUS_RESPONSE, align 4
  %46 = call i32 @SSLfatal(%struct.TYPE_13__* %42, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %76

47:                                               ; preds = %24
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %53 = load i32, i32* @SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @SSLfatal(%struct.TYPE_13__* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %76

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %16, %9
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = call i32 @ssl_validate_ct(%struct.TYPE_13__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %76

74:                                               ; preds = %66, %62
  br label %75

75:                                               ; preds = %74, %57
  store i32 1, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %73, %50, %41, %8
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @ssl3_check_cert_and_algorithm(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @ssl_validate_ct(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
