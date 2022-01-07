; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_as_hello_retry_request.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_as_hello_retry_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_12__, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64 }

@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_AS_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@SSL_R_NO_CHANGE_FOLLOWING_HRR = common dso_local global i32 0, align 4
@SSL3_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @tls_process_as_hello_retry_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_as_hello_retry_request(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @EVP_CIPHER_CTX_free(i32* %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  %16 = call i32 @tls_collect_extensions(%struct.TYPE_16__* %13, i32* %14, i32 %15, i32** %6, i32* null, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @tls_parse_all_extensions(%struct.TYPE_16__* %19, i32 %20, i32* %21, i32* null, i32 0, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %2
  br label %69

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @OPENSSL_free(i32* %26)
  store i32* null, i32** %6, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %43 = load i32, i32* @SSL_F_TLS_PROCESS_AS_HELLO_RETRY_REQUEST, align 4
  %44 = load i32, i32* @SSL_R_NO_CHANGE_FOLLOWING_HRR, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_16__* %41, i32 %42, i32 %43, i32 %44)
  br label %69

46:                                               ; preds = %33, %25
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = call i32 @create_synthetic_message_hash(%struct.TYPE_16__* %47, i32* null, i32 0, i32* null, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %69

51:                                               ; preds = %46
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @ssl3_finish_mac(%struct.TYPE_16__* %52, i8* %58, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  br label %69

67:                                               ; preds = %51
  %68 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %66, %50, %40, %24
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @OPENSSL_free(i32* %70)
  %72 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %67
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @tls_collect_extensions(%struct.TYPE_16__*, i32*, i32, i32**, i32*, i32) #1

declare dso_local i32 @tls_parse_all_extensions(%struct.TYPE_16__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @create_synthetic_message_hash(%struct.TYPE_16__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_16__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
