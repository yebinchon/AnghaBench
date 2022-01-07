; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_get_cert_verify_tbs_data.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_get_cert_verify_tbs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@get_cert_verify_tbs_data.servercontext = internal constant [34 x i8] c"TLS 1.3, server CertificateVerify\00", align 16
@get_cert_verify_tbs_data.clientcontext = internal constant [34 x i8] c"TLS 1.3, client CertificateVerify\00", align 16
@TLS13_TBS_START_SIZE = common dso_local global i32 0, align 4
@TLS_ST_CR_CERT_VRFY = common dso_local global i64 0, align 8
@TLS_ST_SW_CERT_VRFY = common dso_local global i64 0, align 8
@TLS_ST_SR_CERT_VRFY = common dso_local global i64 0, align 8
@TLS13_TBS_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_GET_CERT_VERIFY_TBS_DATA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8**, i64*)* @get_cert_verify_tbs_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cert_verify_tbs_data(%struct.TYPE_10__* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = call i64 @SSL_IS_TLS13(%struct.TYPE_10__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %90

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @TLS13_TBS_START_SIZE, align 4
  %19 = call i32 @memset(i8* %17, i32 32, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TLS_ST_CR_CERT_VRFY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TLS_ST_SW_CERT_VRFY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26, %16
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @TLS13_TBS_START_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @get_cert_verify_tbs_data.servercontext, i64 0, i64 0))
  br label %45

39:                                               ; preds = %26
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @TLS13_TBS_START_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = call i32 @strcpy(i8* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @get_cert_verify_tbs_data.clientcontext, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TLS_ST_CR_CERT_VRFY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TLS_ST_SR_CERT_VRFY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %52, %45
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* @TLS13_TBS_PREAMBLE_SIZE, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i8* %62, i32 %65, i64 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  br label %83

73:                                               ; preds = %52
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* @TLS13_TBS_PREAMBLE_SIZE, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %79 = call i32 @ssl_handshake_hash(%struct.TYPE_10__* %74, i8* %77, i32 %78, i64* %10)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %109

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i8*, i8** %7, align 8
  %85 = load i8**, i8*** %8, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i64, i64* @TLS13_TBS_PREAMBLE_SIZE, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %86, %87
  %89 = load i64*, i64** %9, align 8
  store i64 %88, i64* %89, align 8
  br label %108

90:                                               ; preds = %4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i8**, i8*** %8, align 8
  %96 = call i64 @BIO_get_mem_data(i32 %94, i8** %95)
  store i64 %96, i64* %12, align 8
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %102 = load i32, i32* @SSL_F_GET_CERT_VERIFY_TBS_DATA, align 4
  %103 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %104 = call i32 @SSLfatal(%struct.TYPE_10__* %100, i32 %101, i32 %102, i32 %103)
  store i32 0, i32* %5, align 4
  br label %109

105:                                              ; preds = %90
  %106 = load i64, i64* %11, align 8
  %107 = load i64*, i64** %9, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %83
  store i32 1, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %99, %81
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_10__*, i8*, i32, i64*) #1

declare dso_local i64 @BIO_get_mem_data(i32, i8**) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
