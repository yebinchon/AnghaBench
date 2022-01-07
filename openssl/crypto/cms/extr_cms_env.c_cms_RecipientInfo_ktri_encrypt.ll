; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_ktri_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_cms_RecipientInfo_ktri_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32, i32 }

@CMS_RECIPINFO_TRANS = common dso_local global i64 0, align 8
@CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT = common dso_local global i32 0, align 4
@CMS_R_NOT_KEY_TRANSPORT = common dso_local global i32 0, align 4
@EVP_PKEY_OP_ENCRYPT = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_CMS_ENCRYPT = common dso_local global i32 0, align 4
@CMS_R_CTRL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_15__*)* @cms_RecipientInfo_ktri_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_RecipientInfo_ktri_encrypt(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CMS_RECIPINFO_TRANS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT, align 4
  %19 = load i32, i32* @CMS_R_NOT_KEY_TRANSPORT, align 4
  %20 = call i32 @CMSerr(i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %7, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %21
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = call i32 @cms_env_asn1_ctrl(%struct.TYPE_15__* %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %107

42:                                               ; preds = %37
  br label %57

43:                                               ; preds = %21
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @EVP_PKEY_CTX_new(i32 %46, i32* null)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %115

51:                                               ; preds = %43
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @EVP_PKEY_encrypt_init(i32* %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %107

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @EVP_PKEY_OP_ENCRYPT, align 4
  %60 = load i32, i32* @EVP_PKEY_CTRL_CMS_ENCRYPT, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = call i64 @EVP_PKEY_CTX_ctrl(i32* %58, i32 -1, i32 %59, i32 %60, i32 0, %struct.TYPE_15__* %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT, align 4
  %66 = load i32, i32* @CMS_R_CTRL_ERROR, align 4
  %67 = call i32 @CMSerr(i32 %65, i32 %66)
  br label %107

68:                                               ; preds = %57
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @EVP_PKEY_encrypt(i32* %69, i8* null, i64* %10, i32 %72, i32 %75)
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %107

79:                                               ; preds = %68
  %80 = load i64, i64* %10, align 8
  %81 = call i8* @OPENSSL_malloc(i64 %80)
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT, align 4
  %86 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %87 = call i32 @CMSerr(i32 %85, i32 %86)
  br label %107

88:                                               ; preds = %79
  %89 = load i32*, i32** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @EVP_PKEY_encrypt(i32* %89, i8* %90, i64* %10, i32 %93, i32 %96)
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %107

100:                                              ; preds = %88
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @ASN1_STRING_set0(i32 %103, i8* %104, i64 %105)
  store i8* null, i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %107

107:                                              ; preds = %100, %99, %84, %78, %64, %55, %41
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @EVP_PKEY_CTX_free(i32* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @OPENSSL_free(i8* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %107, %50, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @cms_env_asn1_ctrl(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_encrypt_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @EVP_PKEY_encrypt(i32*, i8*, i64*, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @ASN1_STRING_set0(i32, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
