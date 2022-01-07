; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_DecodeContent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_DecodeContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_CONTENT_INFO = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@szOID_RSA_data = common dso_local global i32 0, align 4
@szOID_RSA_digestedData = common dso_local global i32 0, align 4
@szOID_RSA_envelopedData = common dso_local global i32 0, align 4
@szOID_RSA_signedData = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32)* @CDecodeMsg_DecodeContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CDecodeMsg_DecodeContent(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %47 [
    i32 131, label %11
    i32 129, label %20
    i32 130, label %29
    i32 128, label %38
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @CDecodeMsg_DecodeDataContent(%struct.TYPE_13__* %12, i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 131, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %11
  br label %121

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @CDecodeMsg_DecodeHashedContent(%struct.TYPE_13__* %21, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 129, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %20
  br label %121

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @CDecodeMsg_DecodeEnvelopedContent(%struct.TYPE_13__* %30, i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  store i32 130, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %121

38:                                               ; preds = %3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @CDecodeMsg_DecodeSignedContent(%struct.TYPE_13__* %39, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i32 128, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %121

47:                                               ; preds = %3
  %48 = load i32, i32* @X509_ASN_ENCODING, align 4
  %49 = load i32, i32* @PKCS_CONTENT_INFO, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %59 = call i32 @CryptDecodeObjectEx(i32 %48, i32 %49, i32 %53, i32 %57, i32 %58, i32* null, %struct.TYPE_12__** %8, i32* %9)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %120

62:                                               ; preds = %47
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @szOID_RSA_data, align 4
  %67 = call i32 @strcmp(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = call i32 @CDecodeMsg_DecodeContent(%struct.TYPE_13__* %70, i32* %72, i32 131)
  store i32 %73, i32* %7, align 4
  br label %117

74:                                               ; preds = %62
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @szOID_RSA_digestedData, align 4
  %79 = call i32 @strcmp(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = call i32 @CDecodeMsg_DecodeContent(%struct.TYPE_13__* %82, i32* %84, i32 129)
  store i32 %85, i32* %7, align 4
  br label %116

86:                                               ; preds = %74
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @szOID_RSA_envelopedData, align 4
  %91 = call i32 @strcmp(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = call i32 @CDecodeMsg_DecodeContent(%struct.TYPE_13__* %94, i32* %96, i32 130)
  store i32 %97, i32* %7, align 4
  br label %115

98:                                               ; preds = %86
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @szOID_RSA_signedData, align 4
  %103 = call i32 @strcmp(i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = call i32 @CDecodeMsg_DecodeContent(%struct.TYPE_13__* %106, i32* %108, i32 128)
  store i32 %109, i32* %7, align 4
  br label %114

110:                                              ; preds = %98
  %111 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %112 = call i32 @SetLastError(i32 %111)
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %81
  br label %117

117:                                              ; preds = %116, %69
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = call i32 @LocalFree(%struct.TYPE_12__* %118)
  br label %120

120:                                              ; preds = %117, %47
  br label %121

121:                                              ; preds = %120, %46, %37, %28, %19
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @CDecodeMsg_DecodeDataContent(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @CDecodeMsg_DecodeHashedContent(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @CDecodeMsg_DecodeEnvelopedContent(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @CDecodeMsg_DecodeSignedContent(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
