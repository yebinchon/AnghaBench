; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_MsgOpenStore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_MsgOpenStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"(%ld, %08x, %p)\0A\00", align 1
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@CMSG_CERT_COUNT_PARAM = common dso_local global i32 0, align 4
@CMSG_CERT_PARAM = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_STORE_ADD_ALWAYS = common dso_local global i32 0, align 4
@CMSG_CRL_COUNT_PARAM = common dso_local global i32 0, align 4
@CMSG_CRL_PARAM = common dso_local global i32 0, align 4
@msgProvFuncs = common dso_local global i32 0, align 4
@CERT_STORE_NO_CRYPT_RELEASE_FLAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i8*)* @CRYPT_MsgOpenStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CRYPT_MsgOpenStore(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_3__, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i64, i64* %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %20, i64 %21, i8* %22)
  %24 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %25 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %26 = call i32* @CertOpenStore(i32 %24, i32 0, i32 0, i32 %25, i32* null)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %157

29:                                               ; preds = %3
  store i64 8, i64* %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @CMSG_CERT_COUNT_PARAM, align 4
  %32 = call i64 @CryptMsgGetParam(i32 %30, i32 %31, i64 0, i64* %12, i64* %11)
  store i64 %32, i64* %10, align 8
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %74, %29
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp slt i64 %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %77

42:                                               ; preds = %40
  store i64 0, i64* %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CMSG_CERT_PARAM, align 4
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @CryptMsgGetParam(i32 %43, i32 %44, i64 %45, i64* null, i64* %11)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = call i64* @CryptMemAlloc(i64 %50)
  store i64* %51, i64** %14, align 8
  %52 = load i64*, i64** %14, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @CMSG_CERT_PARAM, align 4
  %57 = load i64, i64* %13, align 8
  %58 = load i64*, i64** %14, align 8
  %59 = call i64 @CryptMsgGetParam(i32 %55, i32 %56, i64 %57, i64* %58, i64* %11)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @X509_ASN_ENCODING, align 4
  %65 = load i64*, i64** %14, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* @CERT_STORE_ADD_ALWAYS, align 4
  %68 = call i64 @CertAddEncodedCertificateToStore(i32* %63, i32 %64, i64* %65, i64 %66, i32 %67, i32* null)
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %62, %54
  %70 = load i64*, i64** %14, align 8
  %71 = call i32 @CryptMemFree(i64* %70)
  br label %72

72:                                               ; preds = %69, %49
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %13, align 8
  br label %33

77:                                               ; preds = %40
  store i64 8, i64* %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @CMSG_CRL_COUNT_PARAM, align 4
  %80 = call i64 @CryptMsgGetParam(i32 %78, i32 %79, i64 0, i64* %12, i64* %11)
  store i64 %80, i64* %10, align 8
  store i64 0, i64* %13, align 8
  br label %81

81:                                               ; preds = %122, %77
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp slt i64 %85, %86
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ false, %81 ], [ %87, %84 ]
  br i1 %89, label %90, label %125

90:                                               ; preds = %88
  store i64 0, i64* %11, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @CMSG_CRL_PARAM, align 4
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @CryptMsgGetParam(i32 %91, i32 %92, i64 %93, i64* null, i64* %11)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %90
  %98 = load i64, i64* %11, align 8
  %99 = call i64* @CryptMemAlloc(i64 %98)
  store i64* %99, i64** %15, align 8
  %100 = load i64*, i64** %15, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @CMSG_CRL_PARAM, align 4
  %105 = load i64, i64* %13, align 8
  %106 = load i64*, i64** %15, align 8
  %107 = call i64 @CryptMsgGetParam(i32 %103, i32 %104, i64 %105, i64* %106, i64* %11)
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* @X509_ASN_ENCODING, align 4
  %113 = load i64*, i64** %15, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i32, i32* @CERT_STORE_ADD_ALWAYS, align 4
  %116 = call i64 @CertAddEncodedCRLToStore(i32* %111, i32 %112, i64* %113, i64 %114, i32 %115, i32* null)
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %110, %102
  %118 = load i64*, i64** %15, align 8
  %119 = call i32 @CryptMemFree(i64* %118)
  br label %120

120:                                              ; preds = %117, %97
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %13, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %13, align 8
  br label %81

125:                                              ; preds = %88
  %126 = load i64, i64* %10, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  %129 = bitcast %struct.TYPE_3__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %129, i8 0, i64 20, i1 false)
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 20, i32* %130, align 4
  %131 = load i32, i32* @msgProvFuncs, align 4
  %132 = call i32 @ARRAY_SIZE(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @msgProvFuncs, align 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @CryptMsgDuplicate(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  %139 = load i64, i64* %5, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32* @CRYPT_ProvCreateStore(i64 %139, i32* %140, %struct.TYPE_3__* %16)
  store i32* %141, i32** %7, align 8
  %142 = load i64, i64* %4, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %128
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @CERT_STORE_NO_CRYPT_RELEASE_FLAG, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @CryptReleaseContext(i64 %150, i32 0)
  br label %152

152:                                              ; preds = %149, %144, %128
  br label %156

153:                                              ; preds = %125
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @CertCloseStore(i32* %154, i32 0)
  br label %156

156:                                              ; preds = %153, %152
  br label %157

157:                                              ; preds = %156, %3
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %158)
  %160 = load i32*, i32** %7, align 8
  ret i32* %160
}

declare dso_local i32 @TRACE(i8*, i32*, ...) #1

declare dso_local i32* @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CryptMsgGetParam(i32, i32, i64, i64*, i64*) #1

declare dso_local i64* @CryptMemAlloc(i64) #1

declare dso_local i64 @CertAddEncodedCertificateToStore(i32*, i32, i64*, i64, i32, i32*) #1

declare dso_local i32 @CryptMemFree(i64*) #1

declare dso_local i64 @CertAddEncodedCRLToStore(i32*, i32, i64*, i64, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @CryptMsgDuplicate(i32) #1

declare dso_local i32* @CRYPT_ProvCreateStore(i64, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @CryptReleaseContext(i64, i32) #1

declare dso_local i32 @CertCloseStore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
