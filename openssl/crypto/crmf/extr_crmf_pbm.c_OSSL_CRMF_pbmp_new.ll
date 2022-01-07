; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_pbm.c_OSSL_CRMF_pbmp_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_pbm.c_OSSL_CRMF_pbmp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@CRMF_F_OSSL_CRMF_PBMP_NEW = common dso_local global i32 0, align 4
@CRMF_R_FAILURE_OBTAINING_RANDOM = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@CRMF_R_SETTING_OWF_ALGOR_FAILURE = common dso_local global i32 0, align 4
@CRMF_R_ITERATIONCOUNT_BELOW_100 = common dso_local global i32 0, align 4
@CRMF_R_CRMFERROR = common dso_local global i32 0, align 4
@CRMF_R_SETTING_MAC_ALGOR_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @OSSL_CRMF_pbmp_new(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = call %struct.TYPE_5__* (...) @OSSL_CRMF_PBMPARAMETER_new()
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %10, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %88

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @OPENSSL_malloc(i64 %16)
  store i8* %17, i8** %11, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %88

20:                                               ; preds = %15
  %21 = load i8*, i8** %11, align 8
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @RAND_bytes(i8* %21, i32 %23)
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @CRMF_F_OSSL_CRMF_PBMP_NEW, align 4
  %28 = load i32, i32* @CRMF_R_FAILURE_OBTAINING_RANDOM, align 4
  %29 = call i32 @CRMFerr(i32 %27, i32 %28)
  br label %88

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ASN1_OCTET_STRING_set(i32 %33, i8* %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %88

40:                                               ; preds = %30
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @OBJ_nid2obj(i32 %44)
  %46 = load i32, i32* @V_ASN1_UNDEF, align 4
  %47 = call i32 @X509_ALGOR_set0(i32 %43, i32 %45, i32 %46, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @CRMF_F_OSSL_CRMF_PBMP_NEW, align 4
  %51 = load i32, i32* @CRMF_R_SETTING_OWF_ALGOR_FAILURE, align 4
  %52 = call i32 @CRMFerr(i32 %50, i32 %51)
  br label %88

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 100
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @CRMF_F_OSSL_CRMF_PBMP_NEW, align 4
  %58 = load i32, i32* @CRMF_R_ITERATIONCOUNT_BELOW_100, align 4
  %59 = call i32 @CRMFerr(i32 %57, i32 %58)
  br label %88

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ASN1_INTEGER_set(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @CRMF_F_OSSL_CRMF_PBMP_NEW, align 4
  %69 = load i32, i32* @CRMF_R_CRMFERROR, align 4
  %70 = call i32 @CRMFerr(i32 %68, i32 %69)
  br label %88

71:                                               ; preds = %60
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @OBJ_nid2obj(i32 %75)
  %77 = load i32, i32* @V_ASN1_UNDEF, align 4
  %78 = call i32 @X509_ALGOR_set0(i32 %74, i32 %76, i32 %77, i32* null)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @CRMF_F_OSSL_CRMF_PBMP_NEW, align 4
  %82 = load i32, i32* @CRMF_R_SETTING_MAC_ALGOR_FAILURE, align 4
  %83 = call i32 @CRMFerr(i32 %81, i32 %82)
  br label %88

84:                                               ; preds = %71
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @OPENSSL_free(i8* %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %5, align 8
  br label %93

88:                                               ; preds = %80, %67, %56, %49, %39, %26, %19, %14
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @OPENSSL_free(i8* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = call i32 @OSSL_CRMF_PBMPARAMETER_free(%struct.TYPE_5__* %91)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %93

93:                                               ; preds = %88, %84
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %94
}

declare dso_local %struct.TYPE_5__* @OSSL_CRMF_PBMPARAMETER_new(...) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @CRMFerr(i32, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32, i8*, i32) #1

declare dso_local i32 @X509_ALGOR_set0(i32, i32, i32, i32*) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OSSL_CRMF_PBMPARAMETER_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
