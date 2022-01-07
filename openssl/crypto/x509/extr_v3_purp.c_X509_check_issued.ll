; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_purp.c_X509_check_issued.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_purp.c_X509_check_issued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@X509_V_ERR_SUBJECT_ISSUER_MISMATCH = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@X509_V_ERR_NO_ISSUER_PUBLIC_KEY = common dso_local global i32 0, align 4
@X509_V_ERR_SIGNATURE_ALGORITHM_MISMATCH = common dso_local global i32 0, align 4
@EXFLAG_PROXY = common dso_local global i32 0, align 4
@KU_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@KU_KEY_CERT_SIGN = common dso_local global i32 0, align 4
@X509_V_ERR_KEYUSAGE_NO_CERTSIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_issued(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = call i32 @X509_get_subject_name(%struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = call i32 @X509_get_issuer_name(%struct.TYPE_14__* %13)
  %15 = call i64 @X509_NAME_cmp(i32 %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @X509_V_ERR_SUBJECT_ISSUER_MISMATCH, align 4
  store i32 %18, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i32 @x509v3_cache_extensions(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = call i32 @x509v3_cache_extensions(%struct.TYPE_14__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @X509_check_akid(%struct.TYPE_14__* %29, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @X509_V_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %92

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = call i32* @X509_get0_pubkey(%struct.TYPE_14__* %41)
  store i32* %42, i32** %7, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %8, align 8
  %46 = load i32, i32* @NID_undef, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @NID_undef, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @X509_V_ERR_NO_ISSUER_PUBLIC_KEY, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %40
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OBJ_obj2nid(i32 %55)
  %57 = call i32 @OBJ_find_sigid_algs(i32 %56, i32* %10, i32* %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @EVP_PKEY_type(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @EVP_PKEY_base_id(i32* %62)
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %52
  %66 = load i32, i32* @X509_V_ERR_SIGNATURE_ALGORITHM_MISMATCH, align 4
  store i32 %66, i32* %3, align 4
  br label %92

67:                                               ; preds = %59
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @EXFLAG_PROXY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = load i32, i32* @KU_DIGITAL_SIGNATURE, align 4
  %77 = call i64 @ku_reject(%struct.TYPE_14__* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE, align 4
  store i32 %80, i32* %3, align 4
  br label %92

81:                                               ; preds = %74
  br label %90

82:                                               ; preds = %67
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = load i32, i32* @KU_KEY_CERT_SIGN, align 4
  %85 = call i64 @ku_reject(%struct.TYPE_14__* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @X509_V_ERR_KEYUSAGE_NO_CERTSIGN, align 4
  store i32 %88, i32* %3, align 4
  br label %92

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %81
  %91 = load i32, i32* @X509_V_OK, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %87, %79, %65, %50, %37, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @X509_NAME_cmp(i32, i32) #1

declare dso_local i32 @X509_get_subject_name(%struct.TYPE_14__*) #1

declare dso_local i32 @X509_get_issuer_name(%struct.TYPE_14__*) #1

declare dso_local i32 @x509v3_cache_extensions(%struct.TYPE_14__*) #1

declare dso_local i32 @X509_check_akid(%struct.TYPE_14__*, i64) #1

declare dso_local i32* @X509_get0_pubkey(%struct.TYPE_14__*) #1

declare dso_local i32 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i64 @EVP_PKEY_type(i32) #1

declare dso_local i64 @EVP_PKEY_base_id(i32*) #1

declare dso_local i64 @ku_reject(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
