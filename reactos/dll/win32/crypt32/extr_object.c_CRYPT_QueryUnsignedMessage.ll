; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QueryUnsignedMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QueryUnsignedMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@X509_ASN_ENCODING = common dso_local global i64 0, align 8
@PKCS_7_ASN_ENCODING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CMSG_TYPE_PARAM = common dso_local global i32 0, align 4
@CMSG_DATA = common dso_local global i64 0, align 8
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_PKCS7_SIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64*, i64*, i32**)* @CRYPT_QueryUnsignedMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_QueryUnsignedMessage(%struct.TYPE_3__* %0, i64* %1, i64* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32** %3, i32*** %8, align 8
  %14 = load i64, i64* @X509_ASN_ENCODING, align 8
  %15 = load i64, i64* @PKCS_7_ASN_ENCODING, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32* @CryptMsgOpenToDecode(i64 %18, i32 0, i64 0, i32 0, i32* null, i32* null)
  store i32* %19, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %78

21:                                               ; preds = %4
  %22 = load i32*, i32** %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i64 @CryptMsgUpdate(i32* %22, i32 %25, i32 %28, i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %21
  store i64 8, i64* %13, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @CMSG_TYPE_PARAM, align 4
  %36 = call i64 @CryptMsgGetParam(i32* %34, i32 %35, i32 0, i64* %12, i64* %13)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @CMSG_DATA, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @ERROR_INVALID_DATA, align 4
  %45 = call i32 @SetLastError(i32 %44)
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @CryptMsgClose(i32* %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @CMSG_DATA, align 8
  %57 = call i32* @CryptMsgOpenToDecode(i64 %55, i32 0, i64 %56, i32 0, i32* null, i32* null)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i64 @CryptMsgUpdate(i32* %61, i32 %64, i32 %67, i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @CryptMsgClose(i32* %73)
  store i32* null, i32** %11, align 8
  br label %75

75:                                               ; preds = %72, %60
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %49
  br label %78

78:                                               ; preds = %77, %4
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i64*, i64** %6, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* %9, align 8
  %86 = load i64*, i64** %6, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i64*, i64** %7, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i64, i64* @CERT_QUERY_CONTENT_PKCS7_SIGNED, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32**, i32*** %8, align 8
  %95 = icmp ne i32** %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %11, align 8
  %98 = load i32**, i32*** %8, align 8
  store i32* %97, i32** %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %78
  %101 = load i64, i64* %10, align 8
  ret i64 %101
}

declare dso_local i32* @CryptMsgOpenToDecode(i64, i32, i64, i32, i32*, i32*) #1

declare dso_local i64 @CryptMsgUpdate(i32*, i32, i32, i32) #1

declare dso_local i64 @CryptMsgGetParam(i32*, i32, i32, i64*, i64*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptMsgClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
