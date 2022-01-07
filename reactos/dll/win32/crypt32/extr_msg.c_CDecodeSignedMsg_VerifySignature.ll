; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeSignedMsg_VerifySignature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeSignedMsg_VerifySignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@NTE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@CERT_ID_ISSUER_SERIAL_NUMBER = common dso_local global i64 0, align 8
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"signer %d: unimplemented for key id\0A\00", align 1
@CRYPT_E_SIGNER_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @CDecodeSignedMsg_VerifySignature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CDecodeSignedMsg_VerifySignature(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NTE_BAD_SIGNATURE, align 4
  %18 = call i32 @SetLastError(i32 %17)
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %3, align 8
  br label %99

20:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %82, %20
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %25, %32
  br label %34

34:                                               ; preds = %24, %21
  %35 = phi i1 [ false, %21 ], [ %33, %24 ]
  br i1 %35, label %36, label %85

36:                                               ; preds = %34
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i64 %44
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %8, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %36
  %53 = load i32, i32* @X509_ASN_ENCODING, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = call i64 @CertCompareCertificateName(i32 %53, i32* %58, i32* %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %52
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = call i64 @CertCompareIntegerBlob(i32* %69, i32* %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %85

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %52
  br label %81

78:                                               ; preds = %36
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %21

85:                                               ; preds = %75, %34
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = call i64 @CDecodeSignedMsg_VerifySignatureWithKey(%struct.TYPE_21__* %89, i32 0, i64 %90, i32* %92)
  store i64 %93, i64* %6, align 8
  br label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @CRYPT_E_SIGNER_NOT_FOUND, align 4
  %96 = call i32 @SetLastError(i32 %95)
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i64, i64* %6, align 8
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %97, %16
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CertCompareCertificateName(i32, i32*, i32*) #1

declare dso_local i64 @CertCompareIntegerBlob(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i64 @CDecodeSignedMsg_VerifySignatureWithKey(%struct.TYPE_21__*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
