; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_check_and_store_certs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_check_and_store_certs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@__const.check_and_store_certs.chainEngineConfig = private unnamed_addr constant %struct.TYPE_18__ { i32 8, i32 0 }, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CERT_SYSTEM_STORE_CURRENT_USER = common dso_local global i32 0, align 4
@__const.check_and_store_certs.chainPara = private unnamed_addr constant %struct.TYPE_17__ { i32 8, %struct.TYPE_12__ zeroinitializer }, align 4
@CERT_CHAIN_CACHE_ONLY_URL_RETRIEVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rejecting %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"chain creation failed\00", align 1
@CERT_TRUST_IS_UNTRUSTED_ROOT = common dso_local global i32 0, align 4
@CERT_TRUST_IS_NOT_VALID_FOR_USAGE = common dso_local global i32 0, align 4
@CERT_TRUST_INVALID_BASIC_CONSTRAINTS = common dso_local global i32 0, align 4
@CERT_TRUST_IS_NOT_TIME_VALID = common dso_local global i32 0, align 4
@CERT_STORE_ADD_NEW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Added %d root certificates\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @check_and_store_certs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_and_store_certs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_18__* @__const.check_and_store_certs.chainEngineConfig to i8*), i64 8, i1 false)
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @CertDuplicateStore(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %21 = call i64 @CRYPT_CreateChainEngine(i32 %19, i32 %20, %struct.TYPE_18__* %6)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %135

24:                                               ; preds = %2
  store i32* null, i32** %8, align 8
  br label %25

25:                                               ; preds = %129, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @CertEnumCertificatesInStore(i32 %26, i32* %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %128

31:                                               ; preds = %25
  %32 = bitcast %struct.TYPE_17__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.TYPE_17__* @__const.check_and_store_certs.chainPara to i8*), i64 8, i1 false)
  %33 = load i64, i64* %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CERT_CHAIN_CACHE_ONLY_URL_RETRIEVAL, align 4
  %37 = call i32 @CertGetCertificateChain(i64 %33, i32* %34, i32* null, i32 %35, %struct.TYPE_17__* %9, i32 %36, i32* null, %struct.TYPE_16__** %10)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @get_cert_common_name(i32* %41)
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %127

44:                                               ; preds = %31
  %45 = load i32, i32* @CERT_TRUST_IS_UNTRUSTED_ROOT, align 4
  %46 = load i32, i32* @CERT_TRUST_IS_NOT_VALID_FOR_USAGE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CERT_TRUST_INVALID_BASIC_CONSTRAINTS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CERT_TRUST_IS_NOT_TIME_VALID, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %44
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @get_cert_common_name(i32* %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CERT_TRUST_IS_UNTRUSTED_ROOT, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @trust_status_to_str(i32 %69)
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %70)
  br label %124

72:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %120, %72
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %116, %79
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %84, i64 %86
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %81, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %80
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %96, i64 %98
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %102, i64 %104
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CERT_STORE_ADD_NEW, align 4
  %110 = call i64 @CertAddCertificateContextToStore(i32 %93, i32 %108, i32 %109, i32* null)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %92
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %92
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %80

119:                                              ; preds = %80
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %73

123:                                              ; preds = %73
  br label %124

124:                                              ; preds = %123, %60
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = call i32 @CertFreeCertificateChain(%struct.TYPE_16__* %125)
  br label %127

127:                                              ; preds = %124, %40
  br label %128

128:                                              ; preds = %127, %25
  br label %129

129:                                              ; preds = %128
  %130 = load i32*, i32** %8, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %25, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @CertFreeCertificateChainEngine(i64 %133)
  br label %135

135:                                              ; preds = %132, %2
  %136 = load i32, i32* %5, align 4
  %137 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @CertDuplicateStore(i32) #2

declare dso_local i64 @CRYPT_CreateChainEngine(i32, i32, %struct.TYPE_18__*) #2

declare dso_local i32* @CertEnumCertificatesInStore(i32, i32*) #2

declare dso_local i32 @CertGetCertificateChain(i64, i32*, i32*, i32, %struct.TYPE_17__*, i32, i32*, %struct.TYPE_16__**) #2

declare dso_local i32 @get_cert_common_name(i32*) #2

declare dso_local i32 @trust_status_to_str(i32) #2

declare dso_local i64 @CertAddCertificateContextToStore(i32, i32, i32, i32*) #2

declare dso_local i32 @CertFreeCertificateChain(%struct.TYPE_16__*) #2

declare dso_local i32 @CertFreeCertificateChainEngine(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
