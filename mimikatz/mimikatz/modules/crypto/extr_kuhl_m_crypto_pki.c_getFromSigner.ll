; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getFromSigner.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getFromSigner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@CERT_KEY_PROV_INFO_PROP_ID = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i32] [i32 32, i32 91, i32 105, i32 46, i32 107, i32 101, i32 121, i32 32, i32 93, i32 32, i32 112, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 32, i32 91, i32 105, i32 46, i32 107, i32 101, i32 121, i32 32, i32 93, i32 32, i32 99, i32 111, i32 110, i32 116, i32 97, i32 105, i32 110, i32 101, i32 114, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@CRYPT_ACQUIRE_CACHE_FLAG = common dso_local global i32 0, align 4
@CRYPT_ACQUIRE_ALLOW_NCRYPT_KEY_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 65, i32 99, i32 113, i32 117, i32 105, i32 114, i32 101, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 75, i32 101, i32 121, i32 40, i32 115, i32 105, i32 103, i32 110, i32 101, i32 114, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getFromSigner(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, i64* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %95

22:                                               ; preds = %7
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %14, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = load i32, i32* @CERT_KEY_PROV_INFO_PROP_ID, align 4
  %31 = call i64 @CertGetCertificateContextProperty(%struct.TYPE_17__* %29, i32 %30, %struct.TYPE_16__* null, i32* %16)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %22
  %34 = load i32, i32* @LPTR, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @LocalAlloc(i32 %34, i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %17, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = load i32, i32* @CERT_KEY_PROV_INFO_PROP_ID, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %43 = call i64 @CertGetCertificateContextProperty(%struct.TYPE_17__* %40, i32 %41, %struct.TYPE_16__* %42, i32* %16)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kprintf(i8* bitcast ([49 x i32]* @.str to i8*), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %45, %39
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %55 = call i32 @LocalFree(%struct.TYPE_16__* %54)
  br label %56

56:                                               ; preds = %53, %33
  br label %57

57:                                               ; preds = %56, %22
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = load i32, i32* @CRYPT_ACQUIRE_CACHE_FLAG, align 4
  %60 = load i32, i32* @CRYPT_ACQUIRE_ALLOW_NCRYPT_KEY_FLAG, align 4
  %61 = or i32 %59, %60
  %62 = load i64*, i64** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i64 @CryptAcquireCertificatePrivateKey(%struct.TYPE_17__* %58, i32 %61, i32* null, i64* %62, i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %57
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_16__* @getPublicKeyInfo(i64 %69, i32 %71)
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %18, align 8
  %73 = icmp ne %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %77 = call i32 @giveaki(i32 %75, %struct.TYPE_16__* %76)
  store i32 %77, i32* %15, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %79 = call i32 @LocalFree(%struct.TYPE_16__* %78)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i64*, i64** %10, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @closeHprov(i32 %85, i32 %87, i64 %89)
  br label %91

91:                                               ; preds = %83, %80
  br label %94

92:                                               ; preds = %57
  %93 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([42 x i32]* @.str.1 to i8*))
  br label %94

94:                                               ; preds = %92, %91
  br label %127

95:                                               ; preds = %7
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %97 = icmp ne %struct.TYPE_15__* %96, null
  br i1 %97, label %98, label %126

98:                                               ; preds = %95
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %14, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %10, align 8
  store i64 %105, i64* %106, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = load i32*, i32** %12, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i64*, i64** %10, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.TYPE_16__* @getPublicKeyInfo(i64 %114, i32 %116)
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %18, align 8
  %118 = icmp ne %struct.TYPE_16__* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %98
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %122 = call i32 @giveaki(i32 %120, %struct.TYPE_16__* %121)
  store i32 %122, i32* %15, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %124 = call i32 @LocalFree(%struct.TYPE_16__* %123)
  br label %125

125:                                              ; preds = %119, %98
  br label %126

126:                                              ; preds = %125, %95
  br label %127

127:                                              ; preds = %126, %94
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i64*, i64** %10, align 8
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* @FALSE, align 4
  %133 = load i32*, i32** %12, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i32, i32* %15, align 4
  ret i32 %135
}

declare dso_local i64 @CertGetCertificateContextProperty(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_16__*) #1

declare dso_local i64 @CryptAcquireCertificatePrivateKey(%struct.TYPE_17__*, i32, i32*, i64*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @getPublicKeyInfo(i64, i32) #1

declare dso_local i32 @giveaki(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @closeHprov(i32, i32, i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
