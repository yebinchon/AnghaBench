; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_import_base64_certs_from_fp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_import_base64_certs_from_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DynamicBuffer = type { i32*, i32, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@import_base64_certs_from_fp.header = internal constant [28 x i8] c"-----BEGIN CERTIFICATE-----\00", align 16
@import_base64_certs_from_fp.trailer = internal constant [26 x i8] c"-----END CERTIFICATE-----\00", align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"begin new certificate\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"end of certificate, adding cert\0A\00", align 1
@CRYPT_STRING_BASE64 = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_STORE_ADD_NEW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Read %d certs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @import_base64_certs_from_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import_base64_certs_from_fp(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.DynamicBuffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %6, align 4
  %12 = bitcast %struct.DynamicBuffer* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  store i32 0, i32* %8, align 4
  %13 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %81, %2
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @fgets(i8* %15, i32 1024, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %14
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %21 = call i32 @strlen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @import_base64_certs_from_fp.header, i64 0, i64 0))
  %22 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @import_base64_certs_from_fp.header, i64 0, i64 0), i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %6, align 4
  %27 = call i32 @reset_buffer(%struct.DynamicBuffer* %7)
  br label %81

28:                                               ; preds = %19
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %30 = call i32 @strlen(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @import_base64_certs_from_fp.trailer, i64 0, i64 0))
  %31 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @import_base64_certs_from_fp.trailer, i64 0, i64 0), i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %6, align 4
  %36 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %7, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CRYPT_STRING_BASE64, align 4
  %42 = call i64 @CryptStringToBinaryA(i8* %38, i32 %40, i32 %41, i32* null, i32* %9, i32* null, i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = call i32* @CryptMemAlloc(i32 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %7, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CRYPT_STRING_BASE64, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @CryptStringToBinaryA(i8* %52, i32 %54, i32 %55, i32* %56, i32* %9, i32* null, i32* null)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @X509_ASN_ENCODING, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @CERT_STORE_ADD_NEW, align 4
  %63 = call i64 @CertAddEncodedCertificateToStore(i32 %58, i32 %59, i32* %60, i32 %61, i32 %62, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %49
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @CryptMemFree(i32* %69)
  br label %71

71:                                               ; preds = %68, %44
  br label %72

72:                                               ; preds = %71, %33
  br label %80

73:                                               ; preds = %28
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %78 = call i32 @add_line_to_buffer(%struct.DynamicBuffer* %7, i8* %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %72
  br label %81

81:                                               ; preds = %80, %24
  br label %14

82:                                               ; preds = %14
  %83 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %7, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @CryptMemFree(i32* %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  %90 = zext i1 %89 to i32
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @reset_buffer(%struct.DynamicBuffer*) #2

declare dso_local i64 @CryptStringToBinaryA(i8*, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32* @CryptMemAlloc(i32) #2

declare dso_local i64 @CertAddEncodedCertificateToStore(i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CryptMemFree(i32*) #2

declare dso_local i32 @add_line_to_buffer(%struct.DynamicBuffer*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
