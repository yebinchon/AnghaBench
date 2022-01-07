; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_RECIP_INFO_set.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_RECIP_INFO_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*)* }

@PKCS7_F_PKCS7_RECIP_INFO_SET = common dso_local global i32 0, align 4
@PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE = common dso_local global i32 0, align 4
@ASN1_PKEY_CTRL_PKCS7_ENCRYPT = common dso_local global i32 0, align 4
@PKCS7_R_ENCRYPTION_CTRL_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_RECIP_INFO_set(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ASN1_INTEGER_set(i32 %10, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @X509_get_issuer_name(i32* %19)
  %21 = call i32 @X509_NAME_set(i32* %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %91

24:                                               ; preds = %14
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ASN1_INTEGER_free(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @X509_get_serialNumber(i32* %31)
  %33 = call i32 @ASN1_INTEGER_dup(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = icmp ne i32 %33, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %91

40:                                               ; preds = %24
  %41 = load i32*, i32** %5, align 8
  %42 = call %struct.TYPE_12__* @X509_get0_pubkey(i32* %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %7, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*)*, i32 (%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*)* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %50, %45, %40
  %58 = load i32, i32* @PKCS7_F_PKCS7_RECIP_INFO_SET, align 4
  %59 = load i32, i32* @PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE, align 4
  %60 = call i32 @PKCS7err(i32 %58, i32 %59)
  br label %90

61:                                               ; preds = %50
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*)*, i32 (%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*)** %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = load i32, i32* @ASN1_PKEY_CTRL_PKCS7_ENCRYPT, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = call i32 %66(%struct.TYPE_12__* %67, i32 %68, i32 0, %struct.TYPE_11__* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, -2
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* @PKCS7_F_PKCS7_RECIP_INFO_SET, align 4
  %75 = load i32, i32* @PKCS7_R_ENCRYPTION_NOT_SUPPORTED_FOR_THIS_KEY_TYPE, align 4
  %76 = call i32 @PKCS7err(i32 %74, i32 %75)
  br label %90

77:                                               ; preds = %61
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @PKCS7_F_PKCS7_RECIP_INFO_SET, align 4
  %82 = load i32, i32* @PKCS7_R_ENCRYPTION_CTRL_FAILURE, align 4
  %83 = call i32 @PKCS7err(i32 %81, i32 %82)
  br label %90

84:                                               ; preds = %77
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @X509_up_ref(i32* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %80, %73, %57
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %84, %39, %23, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32 @X509_NAME_set(i32*, i32) #1

declare dso_local i32 @X509_get_issuer_name(i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32) #1

declare dso_local i32 @ASN1_INTEGER_dup(i32) #1

declare dso_local i32 @X509_get_serialNumber(i32*) #1

declare dso_local %struct.TYPE_12__* @X509_get0_pubkey(i32*) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i32 @X509_up_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
