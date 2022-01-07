; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_set_shared_info.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_set_shared_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32 }

@NID_id_smime_alg_ESDH = common dso_local global i64 0, align 8
@DH_F_DH_CMS_SET_SHARED_INFO = common dso_local global i32 0, align 4
@DH_R_KDF_PARAMETER_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_DH_KDF_X9_42 = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i64 0, align 8
@EVP_CIPH_WRAP_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @dh_cms_set_shared_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_cms_set_shared_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @CMS_RecipientInfo_kari_get0_alg(i32* %16, %struct.TYPE_10__** %6, i32** %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %145

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @OBJ_obj2nid(i32 %23)
  %25 = load i64, i64* @NID_id_smime_alg_ESDH, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @DH_F_DH_CMS_SET_SHARED_INFO, align 4
  %29 = load i32, i32* @DH_R_KDF_PARAMETER_ERROR, align 4
  %30 = call i32 @DHerr(i32 %28, i32 %29)
  br label %145

31:                                               ; preds = %20
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @EVP_PKEY_DH_KDF_X9_42, align 4
  %34 = call i64 @EVP_PKEY_CTX_set_dh_kdf_type(i32* %32, i32 %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %145

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (...) @EVP_sha1()
  %40 = call i64 @EVP_PKEY_CTX_set_dh_kdf_md(i32* %38, i32 %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %145

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @V_ASN1_SEQUENCE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %145

52:                                               ; preds = %43
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call %struct.TYPE_10__* @d2i_X509_ALGOR(i32* null, i8** %9, i32 %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %7, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %52
  br label %145

74:                                               ; preds = %52
  %75 = load i32*, i32** %4, align 8
  %76 = call i32* @CMS_RecipientInfo_kari_get0_ctx(i32* %75)
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %145

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32* @EVP_get_cipherbyobj(i32 %83)
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i32*, i32** %14, align 8
  %89 = call i64 @EVP_CIPHER_mode(i32* %88)
  %90 = load i64, i64* @EVP_CIPH_WRAP_MODE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %80
  br label %145

93:                                               ; preds = %87
  %94 = load i32*, i32** %15, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @EVP_EncryptInit_ex(i32* %94, i32* %95, i32* null, i32* null, i32* null)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %145

99:                                               ; preds = %93
  %100 = load i32*, i32** %15, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = call i64 @EVP_CIPHER_asn1_to_param(i32* %100, %struct.TYPE_11__* %103)
  %105 = icmp sle i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %145

107:                                              ; preds = %99
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @EVP_CIPHER_CTX_key_length(i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @EVP_PKEY_CTX_set_dh_kdf_outlen(i32* %110, i32 %111)
  %113 = icmp sle i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %145

115:                                              ; preds = %107
  %116 = load i32*, i32** %3, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @EVP_CIPHER_type(i32* %117)
  %119 = call i32 @OBJ_nid2obj(i32 %118)
  %120 = call i64 @EVP_PKEY_CTX_set0_dh_kdf_oid(i32* %116, i32 %119)
  %121 = icmp sle i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %145

123:                                              ; preds = %115
  %124 = load i32*, i32** %8, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @ASN1_STRING_length(i32* %127)
  store i64 %128, i64* %11, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @ASN1_STRING_get0_data(i32* %129)
  %131 = load i64, i64* %11, align 8
  %132 = call i8* @OPENSSL_memdup(i32 %130, i64 %131)
  store i8* %132, i8** %10, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  br label %145

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %123
  %138 = load i32*, i32** %3, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i64 @EVP_PKEY_CTX_set0_dh_kdf_ukm(i32* %138, i8* %139, i64 %140)
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %145

144:                                              ; preds = %137
  store i8* null, i8** %10, align 8
  store i32 1, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %143, %135, %122, %114, %106, %98, %92, %79, %73, %51, %42, %36, %27, %19
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = call i32 @X509_ALGOR_free(%struct.TYPE_10__* %146)
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 @OPENSSL_free(i8* %148)
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @CMS_RecipientInfo_kari_get0_alg(i32*, %struct.TYPE_10__**, i32**) #1

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_kdf_type(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_kdf_md(i32*, i32) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local %struct.TYPE_10__* @d2i_X509_ALGOR(i32*, i8**, i32) #1

declare dso_local i32* @CMS_RecipientInfo_kari_get0_ctx(i32*) #1

declare dso_local i32* @EVP_get_cipherbyobj(i32) #1

declare dso_local i64 @EVP_CIPHER_mode(i32*) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @EVP_CIPHER_asn1_to_param(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @EVP_CIPHER_CTX_key_length(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_kdf_outlen(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set0_dh_kdf_oid(i32*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @EVP_CIPHER_type(i32*) #1

declare dso_local i64 @ASN1_STRING_length(i32*) #1

declare dso_local i8* @OPENSSL_memdup(i32, i64) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set0_dh_kdf_ukm(i32*, i8*, i64) #1

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_10__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
