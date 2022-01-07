; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_generateCrl.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_generateCrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, i32, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@FALSE = common dso_local global i8* null, align 8
@CRL_V2 = common dso_local global i32 0, align 4
@szOID_RSA_SHA1RSA = common dso_local global i64 0, align 8
@szOID_CRL_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i32] [i32 91, i32 115, i32 46, i32 99, i32 114, i32 108, i32 32, i32 93, i32 32, i32 97, i32 108, i32 103, i32 111, i32 114, i32 105, i32 116, i32 104, i32 109, i32 32, i32 58, i32 32, i32 37, i32 83, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 91, i32 115, i32 46, i32 99, i32 114, i32 108, i32 32, i32 93, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 105, i32 116, i32 121, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 32, i32 45, i32 62, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [25 x i32] [i32 32, i32 91, i32 105, i32 46, i32 99, i32 101, i32 114, i32 116, i32 93, i32 32, i32 115, i32 117, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [22 x i32] [i32 91, i32 115, i32 46, i32 99, i32 114, i32 108, i32 32, i32 93, i32 32, i32 115, i32 105, i32 103, i32 110, i32 97, i32 116, i32 117, i32 114, i32 101, i32 32, i32 58, i32 32, i32 0], align 4
@X509_CERT_CRL_TO_BE_SIGNED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i32] [i32 79, i32 75, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [29 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 99, i32 114, i32 101, i32 97, i32 116, i32 101, i32 32, i32 67, i32 82, i32 76, i32 32, i32 78, i32 117, i32 109, i32 98, i32 101, i32 114, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @generateCrl(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.TYPE_13__], align 16
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = bitcast [2 x %struct.TYPE_13__]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 32, i1 false)
  %22 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = load i32, i32* @CRL_V2, align 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 6
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %16, i64 0, i64 0
  %26 = call i32 @ARRAYSIZE(%struct.TYPE_13__* %25)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %16, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %40

38:                                               ; preds = %5
  %39 = load i64, i64* @szOID_RSA_SHA1RSA, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i64 [ %37, %34 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @getDate(i32* %44, i32* %45, %struct.TYPE_11__* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @szOID_CRL_NUMBER, align 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load i8*, i8** @FALSE, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  store i8* %55, i8** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = call i64 @kuhl_m_crypto_c_sc_auth_quickEncode(i32 %64, i32* %66, %struct.TYPE_14__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %134

73:                                               ; preds = %40
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @kprintf(i8* bitcast ([25 x i32]* @.str to i8*), i64 %76)
  %78 = call i32 (i8*, ...) @kprintf(i8* bitcast ([22 x i32]* @.str.1 to i8*))
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %80 = call i32 @kull_m_string_displayLocalFileTime(i32* %79)
  %81 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %83 = call i32 @kull_m_string_displayLocalFileTime(i32* %82)
  %84 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %91 = call i64 @getFromSigner(i32 %85, i32 %86, i32* %14, i32* %15, i8** %13, %struct.TYPE_13__* %89, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %73
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %95 = call i32 @getCertificateName(i32* %94)
  store i32 %95, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %18, align 4
  %99 = call i32 (i8*, ...) @kprintf(i8* bitcast ([25 x i32]* @.str.4 to i8*), i32 %98)
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @LocalFree(i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  %103 = call i32 (i8*, ...) @kprintf(i8* bitcast ([22 x i32]* @.str.5 to i8*))
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @X509_CERT_CRL_TO_BE_SIGNED, align 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %108 = load i32*, i32** %9, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = call i8* @getCertificate(i32 %104, i32 %105, i32 %106, %struct.TYPE_12__* %17, %struct.TYPE_15__* %107, i32* %108, i32* %109)
  store i8* %110, i8** %11, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.6 to i8*))
  br label %114

114:                                              ; preds = %112, %102
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @closeHprov(i8* %115, i32 %116, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @LocalFree(i32 %124)
  br label %126

126:                                              ; preds = %114, %73
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @LocalFree(i32 %132)
  br label %136

134:                                              ; preds = %40
  %135 = call i32 @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.7 to i8*))
  br label %136

136:                                              ; preds = %134, %126
  %137 = load i8*, i8** %11, align 8
  ret i8* %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAYSIZE(%struct.TYPE_13__*) #2

declare dso_local i32 @getDate(i32*, i32*, %struct.TYPE_11__*, i32, i32) #2

declare dso_local i64 @kuhl_m_crypto_c_sc_auth_quickEncode(i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @kull_m_string_displayLocalFileTime(i32*) #2

declare dso_local i64 @getFromSigner(i32, i32, i32*, i32*, i8**, %struct.TYPE_13__*, i32*) #2

declare dso_local i32 @getCertificateName(i32*) #2

declare dso_local i32 @LocalFree(i32) #2

declare dso_local i8* @getCertificate(i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_15__*, i32*, i32*) #2

declare dso_local i32 @closeHprov(i8*, i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
