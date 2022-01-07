; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_set_shared_info.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_ameth.c_ecdh_cms_set_shared_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32 }

@EC_F_ECDH_CMS_SET_SHARED_INFO = common dso_local global i32 0, align 4
@EC_R_KDF_PARAMETER_ERROR = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i64 0, align 8
@EVP_CIPH_WRAP_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ecdh_cms_set_shared_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_cms_set_shared_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store i8* null, i8** %11, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @CMS_RecipientInfo_kari_get0_alg(i32* %16, %struct.TYPE_11__** %7, i32** %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %126

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @OBJ_obj2nid(i32 %24)
  %26 = call i32 @ecdh_cms_set_kdf_param(i32* %21, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EC_F_ECDH_CMS_SET_SHARED_INFO, align 4
  %30 = load i32, i32* @EC_R_KDF_PARAMETER_ERROR, align 4
  %31 = call i32 @ECerr(i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %126

32:                                               ; preds = %20
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V_ASN1_SEQUENCE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %126

41:                                               ; preds = %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.TYPE_11__* @d2i_X509_ALGOR(i32* null, i8** %10, i32 %58)
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %8, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %41
  br label %120

63:                                               ; preds = %41
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @CMS_RecipientInfo_kari_get0_ctx(i32* %64)
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %120

69:                                               ; preds = %63
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32* @EVP_get_cipherbyobj(i32 %72)
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32*, i32** %14, align 8
  %78 = call i64 @EVP_CIPHER_mode(i32* %77)
  %79 = load i64, i64* @EVP_CIPH_WRAP_MODE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %69
  br label %120

82:                                               ; preds = %76
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @EVP_EncryptInit_ex(i32* %83, i32* %84, i32* null, i32* null, i32* null)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %120

88:                                               ; preds = %82
  %89 = load i32*, i32** %15, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = call i64 @EVP_CIPHER_asn1_to_param(i32* %89, %struct.TYPE_12__* %92)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %120

96:                                               ; preds = %88
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @EVP_CIPHER_CTX_key_length(i32* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(i32* %99, i32 %100)
  %102 = icmp sle i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %120

104:                                              ; preds = %96
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @CMS_SharedInfo_encode(i8** %11, %struct.TYPE_11__* %105, i32* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  br label %120

112:                                              ; preds = %104
  %113 = load i32*, i32** %4, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(i32* %113, i8* %114, i32 %115)
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %120

119:                                              ; preds = %112
  store i8* null, i8** %11, align 8
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %118, %111, %103, %95, %87, %81, %68, %62
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = call i32 @X509_ALGOR_free(%struct.TYPE_11__* %121)
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @OPENSSL_free(i8* %123)
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %120, %40, %28, %19
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @CMS_RecipientInfo_kari_get0_alg(i32*, %struct.TYPE_11__**, i32**) #1

declare dso_local i32 @ecdh_cms_set_kdf_param(i32*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local %struct.TYPE_11__* @d2i_X509_ALGOR(i32*, i8**, i32) #1

declare dso_local i32* @CMS_RecipientInfo_kari_get0_ctx(i32*) #1

declare dso_local i32* @EVP_get_cipherbyobj(i32) #1

declare dso_local i64 @EVP_CIPHER_mode(i32*) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @EVP_CIPHER_asn1_to_param(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @EVP_CIPHER_CTX_key_length(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ecdh_kdf_outlen(i32*, i32) #1

declare dso_local i32 @CMS_SharedInfo_encode(i8**, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set0_ecdh_kdf_ukm(i32*, i8*, i32) #1

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_11__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
