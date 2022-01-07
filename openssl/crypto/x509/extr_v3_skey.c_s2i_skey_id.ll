; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_skey.c_s2i_skey_id.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_skey.c_s2i_skey_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@X509V3_F_S2I_SKEY_ID = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CTX_TEST = common dso_local global i64 0, align 8
@X509V3_R_NO_PUBLIC_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_12__*, i8*)* @s2i_skey_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @s2i_skey_id(i32* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32* @s2i_ASN1_OCTET_STRING(i32* %24, %struct.TYPE_12__* %25, i8* %26)
  store i32* %27, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %112

28:                                               ; preds = %3
  %29 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %29, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @X509V3_F_S2I_SKEY_ID, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @X509V3err(i32 %32, i32 %33)
  store i32* null, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %112

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CTX_TEST, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  store i32* %45, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %112

46:                                               ; preds = %38, %35
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54, %46
  %60 = load i32, i32* @X509V3_F_S2I_SKEY_ID, align 4
  %61 = load i32, i32* @X509V3_R_NO_PUBLIC_KEY, align 4
  %62 = call i32 @X509V3err(i32 %60, i32 %61)
  br label %109

63:                                               ; preds = %54, %49
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = icmp ne %struct.TYPE_9__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %9, align 8
  br label %82

75:                                               ; preds = %63
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %9, align 8
  br label %82

82:                                               ; preds = %75, %68
  %83 = load i32*, i32** %9, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @X509V3_F_S2I_SKEY_ID, align 4
  %87 = load i32, i32* @X509V3_R_NO_PUBLIC_KEY, align 4
  %88 = call i32 @X509V3err(i32 %86, i32 %87)
  br label %109

89:                                               ; preds = %82
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @X509_PUBKEY_get0_param(i32* null, i8** %10, i32* %11, i32* null, i32* %90)
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (...) @EVP_sha1()
  %95 = call i32 @EVP_Digest(i8* %92, i32 %93, i8* %19, i32* %14, i32 %94, i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %109

98:                                               ; preds = %89
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ASN1_OCTET_STRING_set(i32* %99, i8* %19, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @X509V3_F_S2I_SKEY_ID, align 4
  %105 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %106 = call i32 @X509V3err(i32 %104, i32 %105)
  br label %109

107:                                              ; preds = %98
  %108 = load i32*, i32** %8, align 8
  store i32* %108, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %112

109:                                              ; preds = %103, %97, %85, %59
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @ASN1_OCTET_STRING_free(i32* %110)
  store i32* null, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %109, %107, %44, %31, %23
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32*, i32** %4, align 8
  ret i32* %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @s2i_ASN1_OCTET_STRING(i32*, %struct.TYPE_12__*, i8*) #2

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #2

declare dso_local i32 @X509V3err(i32, i32) #2

declare dso_local i32 @X509_PUBKEY_get0_param(i32*, i8**, i32*, i32*, i32*) #2

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #2

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
