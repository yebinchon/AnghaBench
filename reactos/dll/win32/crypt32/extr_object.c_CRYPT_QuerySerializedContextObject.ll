; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QuerySerializedContextObject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QuerySerializedContextObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@CERT_STORE_ALL_CONTEXT_FLAG = common dso_local global i32 0, align 4
@pCertInterface = common dso_local global i32* null, align 8
@CERT_QUERY_CONTENT_SERIALIZED_CERT = common dso_local global i32 0, align 4
@CERT_CONTEXT = common dso_local global i32 0, align 4
@hCertStore = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_SERIALIZED_CERT = common dso_local global i32 0, align 4
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@pCRLInterface = common dso_local global i32* null, align 8
@CERT_QUERY_CONTENT_SERIALIZED_CRL = common dso_local global i32 0, align 4
@CRL_CONTEXT = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_SERIALIZED_CRL = common dso_local global i32 0, align 4
@pCTLInterface = common dso_local global i32* null, align 8
@CERT_QUERY_CONTENT_SERIALIZED_CTL = common dso_local global i32 0, align 4
@CTL_CONTEXT = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_SERIALIZED_CTL = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32, i32*, i32*, i32*, i8**)* @CRYPT_QuerySerializedContextObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_QuerySerializedContextObject(i32 %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_3__, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32* null, i32** %18, align 8
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %32 [
    i32 131, label %25
    i32 132, label %28
  ]

25:                                               ; preds = %7
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @CRYPT_ReadBlobFromFile(i8* %26, %struct.TYPE_3__* %16)
  store i64 %27, i64* %21, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %17, align 8
  br label %36

28:                                               ; preds = %7
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %17, align 8
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %21, align 8
  br label %36

32:                                               ; preds = %7
  %33 = load i32, i32* @E_INVALIDARG, align 4
  %34 = call i32 @SetLastError(i32 %33)
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %21, align 8
  br label %36

36:                                               ; preds = %32, %28, %25
  %37 = load i64, i64* %21, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %8, align 8
  br label %162

41:                                               ; preds = %36
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %21, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CERT_STORE_ALL_CONTEXT_FLAG, align 4
  %50 = call i8* @CRYPT_ReadSerializedElement(i32 %45, i32 %48, i32 %49, i32* %20)
  store i8* %50, i8** %19, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %139

53:                                               ; preds = %41
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %21, align 8
  %55 = load i32, i32* %20, align 4
  switch i32 %55, label %101 [
    i32 130, label %56
    i32 129, label %71
    i32 128, label %86
  ]

56:                                               ; preds = %53
  %57 = load i32*, i32** @pCertInterface, align 8
  store i32* %57, i32** %18, align 8
  %58 = load i32, i32* @CERT_QUERY_CONTENT_SERIALIZED_CERT, align 4
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* @CERT_CONTEXT, align 4
  %60 = load i32, i32* @hCertStore, align 4
  %61 = call i32 @offsetof(i32 %59, i32 %60)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_SERIALIZED_CERT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @ERROR_INVALID_DATA, align 4
  %68 = call i32 @SetLastError(i32 %67)
  %69 = load i64, i64* @FALSE, align 8
  store i64 %69, i64* %21, align 8
  br label %140

70:                                               ; preds = %56
  br label %105

71:                                               ; preds = %53
  %72 = load i32*, i32** @pCRLInterface, align 8
  store i32* %72, i32** %18, align 8
  %73 = load i32, i32* @CERT_QUERY_CONTENT_SERIALIZED_CRL, align 4
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* @CRL_CONTEXT, align 4
  %75 = load i32, i32* @hCertStore, align 4
  %76 = call i32 @offsetof(i32 %74, i32 %75)
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_SERIALIZED_CRL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @ERROR_INVALID_DATA, align 4
  %83 = call i32 @SetLastError(i32 %82)
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %21, align 8
  br label %140

85:                                               ; preds = %71
  br label %105

86:                                               ; preds = %53
  %87 = load i32*, i32** @pCTLInterface, align 8
  store i32* %87, i32** %18, align 8
  %88 = load i32, i32* @CERT_QUERY_CONTENT_SERIALIZED_CTL, align 4
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* @CTL_CONTEXT, align 4
  %90 = load i32, i32* @hCertStore, align 4
  %91 = call i32 @offsetof(i32 %89, i32 %90)
  store i32 %91, i32* %23, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_SERIALIZED_CTL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @ERROR_INVALID_DATA, align 4
  %98 = call i32 @SetLastError(i32 %97)
  %99 = load i64, i64* @FALSE, align 8
  store i64 %99, i64* %21, align 8
  br label %140

100:                                              ; preds = %86
  br label %105

101:                                              ; preds = %53
  %102 = load i32, i32* @ERROR_INVALID_DATA, align 4
  %103 = call i32 @SetLastError(i32 %102)
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %21, align 8
  br label %140

105:                                              ; preds = %100, %85, %70
  %106 = load i32*, i32** %12, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @X509_ASN_ENCODING, align 4
  %110 = load i32*, i32** %12, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %13, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32*, i32** %14, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i8*, i8** %19, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load i32, i32* %23, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @CertDuplicateStore(i32 %126)
  %128 = load i32*, i32** %14, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %117
  %130 = load i8**, i8*** %15, align 8
  %131 = icmp ne i8** %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i8*, i8** %19, align 8
  %134 = load i8**, i8*** %15, align 8
  store i8* %133, i8** %134, align 8
  %135 = load i8*, i8** %19, align 8
  %136 = call i32 @context_from_ptr(i8* %135)
  %137 = call i32 @Context_AddRef(i32 %136)
  br label %138

138:                                              ; preds = %132, %129
  br label %139

139:                                              ; preds = %138, %41
  br label %140

140:                                              ; preds = %139, %101, %96, %81, %66
  %141 = load i32*, i32** %18, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i8*, i8** %19, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i8*, i8** %19, align 8
  %148 = call i32 @context_from_ptr(i8* %147)
  %149 = call i32 @Context_Release(i32 %148)
  br label %150

150:                                              ; preds = %146, %143, %140
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %152 = icmp eq %struct.TYPE_3__* %151, %16
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @CryptMemFree(i32 %156)
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i64, i64* %21, align 8
  %160 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %159)
  %161 = load i64, i64* %21, align 8
  store i64 %161, i64* %8, align 8
  br label %162

162:                                              ; preds = %158, %39
  %163 = load i64, i64* %8, align 8
  ret i64 %163
}

declare dso_local i64 @CRYPT_ReadBlobFromFile(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i8* @CRYPT_ReadSerializedElement(i32, i32, i32, i32*) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @CertDuplicateStore(i32) #1

declare dso_local i32 @Context_AddRef(i32) #1

declare dso_local i32 @context_from_ptr(i8*) #1

declare dso_local i32 @Context_Release(i32) #1

declare dso_local i32 @CryptMemFree(i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
