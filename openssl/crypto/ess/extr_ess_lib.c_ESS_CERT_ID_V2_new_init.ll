; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ess/extr_ess_lib.c_ESS_CERT_ID_V2_new_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ess/extr_ess_lib.c_ESS_CERT_ID_V2_new_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@GEN_DIRNAME = common dso_local global i32 0, align 4
@ESS_F_ESS_CERT_ID_V2_NEW_INIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (i32*, i32*, i32)* @ESS_CERT_ID_V2_new_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ESS_CERT_ID_V2_new_init(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  %15 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = trunc i64 %16 to i32
  store i32 %19, i32* %12, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  %20 = trunc i64 %16 to i32
  %21 = call i32 @memset(i8* %18, i32 0, i32 %20)
  %22 = call %struct.TYPE_19__* (...) @ESS_CERT_ID_V2_new()
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %8, align 8
  %23 = icmp eq %struct.TYPE_19__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %124

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* (...) @EVP_sha256()
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = call %struct.TYPE_17__* (...) @X509_ALGOR_new()
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %13, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %32 = icmp eq %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %124

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @X509_ALGOR_set_md(%struct.TYPE_17__* %35, i32* %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %124

43:                                               ; preds = %34
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %46, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  br label %50

47:                                               ; preds = %25
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %49, align 8
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @X509_digest(i32* %51, i32* %52, i8* %18, i32* %12)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %124

56:                                               ; preds = %50
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ASN1_OCTET_STRING_set(i32 %59, i8* %18, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %124

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %134

69:                                               ; preds = %64
  %70 = call %struct.TYPE_15__* (...) @ESS_ISSUER_SERIAL_new()
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %72, align 8
  %73 = icmp eq %struct.TYPE_15__* %70, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %124

75:                                               ; preds = %69
  %76 = call %struct.TYPE_18__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %9, align 8
  %77 = icmp eq %struct.TYPE_18__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %124

79:                                               ; preds = %75
  %80 = load i32, i32* @GEN_DIRNAME, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @X509_get_issuer_name(i32* %83)
  %85 = call i32* @X509_NAME_dup(i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i32* %85, i32** %88, align 8
  %89 = icmp eq i32* %85, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %124

91:                                               ; preds = %79
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %98 = call i32 @sk_GENERAL_NAME_push(i32 %96, %struct.TYPE_18__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  br label %124

101:                                              ; preds = %91
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @ASN1_INTEGER_free(i32* %106)
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @X509_get_serialNumber(i32* %108)
  %110 = call i32* @ASN1_INTEGER_dup(i32 %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32* %110, i32** %114, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %101
  br label %124

122:                                              ; preds = %101
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %123, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %134

124:                                              ; preds = %121, %100, %90, %78, %74, %63, %55, %42, %33, %24
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %126 = call i32 @X509_ALGOR_free(%struct.TYPE_17__* %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = call i32 @GENERAL_NAME_free(%struct.TYPE_18__* %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %130 = call i32 @ESS_CERT_ID_V2_free(%struct.TYPE_19__* %129)
  %131 = load i32, i32* @ESS_F_ESS_CERT_ID_V2_NEW_INIT, align 4
  %132 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %133 = call i32 @ESSerr(i32 %131, i32 %132)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %134

134:                                              ; preds = %124, %122, %67
  %135 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.TYPE_19__* @ESS_CERT_ID_V2_new(...) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local %struct.TYPE_17__* @X509_ALGOR_new(...) #2

declare dso_local i32 @X509_ALGOR_set_md(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @X509_digest(i32*, i32*, i8*, i32*) #2

declare dso_local i32 @ASN1_OCTET_STRING_set(i32, i8*, i32) #2

declare dso_local %struct.TYPE_15__* @ESS_ISSUER_SERIAL_new(...) #2

declare dso_local %struct.TYPE_18__* @GENERAL_NAME_new(...) #2

declare dso_local i32* @X509_NAME_dup(i32) #2

declare dso_local i32 @X509_get_issuer_name(i32*) #2

declare dso_local i32 @sk_GENERAL_NAME_push(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @ASN1_INTEGER_free(i32*) #2

declare dso_local i32* @ASN1_INTEGER_dup(i32) #2

declare dso_local i32 @X509_get_serialNumber(i32*) #2

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_17__*) #2

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_18__*) #2

declare dso_local i32 @ESS_CERT_ID_V2_free(%struct.TYPE_19__*) #2

declare dso_local i32 @ESSerr(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
