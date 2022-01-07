; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ess/extr_ess_lib.c_ESS_CERT_ID_new_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ess/extr_ess_lib.c_ESS_CERT_ID_new_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@GEN_DIRNAME = common dso_local global i32 0, align 4
@ESS_F_ESS_CERT_ID_NEW_INIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32)* @ESS_CERT_ID_new_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ESS_CERT_ID_new_init(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %11 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @X509_check_purpose(i32* %15, i32 -1, i32 0)
  %17 = call %struct.TYPE_13__* (...) @ESS_CERT_ID_new()
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %91

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 (...) @EVP_sha1()
  %23 = call i32 @X509_digest(i32* %21, i32 %22, i8* %14, i32* null)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %28 = call i32 @ASN1_OCTET_STRING_set(i32 %26, i8* %14, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %91

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %99

36:                                               ; preds = %31
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp eq %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = call %struct.TYPE_14__* (...) @ESS_ISSUER_SERIAL_new()
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %44, align 8
  %45 = icmp eq %struct.TYPE_14__* %42, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %91

47:                                               ; preds = %41, %36
  %48 = call %struct.TYPE_12__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %7, align 8
  %49 = icmp eq %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %91

51:                                               ; preds = %47
  %52 = load i32, i32* @GEN_DIRNAME, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @X509_get_issuer_name(i32* %55)
  %57 = call i32* @X509_NAME_dup(i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32* %57, i32** %60, align 8
  %61 = icmp eq i32* %57, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %91

63:                                               ; preds = %51
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = call i32 @sk_GENERAL_NAME_push(i32 %68, %struct.TYPE_12__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %91

73:                                               ; preds = %63
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ASN1_INTEGER_free(i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @X509_get_serialNumber(i32* %80)
  %82 = call i32 @ASN1_INTEGER_dup(i32 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  %87 = icmp ne i32 %82, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %73
  br label %91

89:                                               ; preds = %73
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %99

91:                                               ; preds = %88, %72, %62, %50, %46, %30, %19
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = call i32 @GENERAL_NAME_free(%struct.TYPE_12__* %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = call i32 @ESS_CERT_ID_free(%struct.TYPE_13__* %94)
  %96 = load i32, i32* @ESS_F_ESS_CERT_ID_NEW_INIT, align 4
  %97 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %98 = call i32 @ESSerr(i32 %96, i32 %97)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %91, %89, %34
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @X509_check_purpose(i32*, i32, i32) #2

declare dso_local %struct.TYPE_13__* @ESS_CERT_ID_new(...) #2

declare dso_local i32 @X509_digest(i32*, i32, i8*, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @ASN1_OCTET_STRING_set(i32, i8*, i32) #2

declare dso_local %struct.TYPE_14__* @ESS_ISSUER_SERIAL_new(...) #2

declare dso_local %struct.TYPE_12__* @GENERAL_NAME_new(...) #2

declare dso_local i32* @X509_NAME_dup(i32) #2

declare dso_local i32 @X509_get_issuer_name(i32*) #2

declare dso_local i32 @sk_GENERAL_NAME_push(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @ASN1_INTEGER_free(i32) #2

declare dso_local i32 @ASN1_INTEGER_dup(i32) #2

declare dso_local i32 @X509_get_serialNumber(i32*) #2

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_12__*) #2

declare dso_local i32 @ESS_CERT_ID_free(%struct.TYPE_13__*) #2

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
