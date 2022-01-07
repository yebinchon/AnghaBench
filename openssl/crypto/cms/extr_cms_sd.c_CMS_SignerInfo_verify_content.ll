; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_CMS_SignerInfo_verify_content.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_CMS_SignerInfo_verify_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_pkcs9_messageDigest = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@CMS_R_ERROR_READING_MESSAGEDIGEST_ATTRIBUTE = common dso_local global i32 0, align 4
@CMS_R_UNABLE_TO_FINALIZE_CONTEXT = common dso_local global i32 0, align 4
@CMS_R_MESSAGEDIGEST_ATTRIBUTE_WRONG_LENGTH = common dso_local global i32 0, align 4
@CMS_R_VERIFICATION_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_SignerInfo_verify_content(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %13 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %13, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %14 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT, align 4
  %22 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %23 = call i32 @CMSerr(i32 %21, i32 %22)
  br label %136

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i64 @CMS_signed_get_attr_count(%struct.TYPE_10__* %25)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = load i32, i32* @NID_pkcs9_messageDigest, align 4
  %31 = call i32 @OBJ_nid2obj(i32 %30)
  %32 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %33 = call %struct.TYPE_11__* @CMS_signed_get0_data_by_OBJ(%struct.TYPE_10__* %29, i32 %31, i32 -3, i32 %32)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %5, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT, align 4
  %38 = load i32, i32* @CMS_R_ERROR_READING_MESSAGEDIGEST_ATTRIBUTE, align 4
  %39 = call i32 @CMSerr(i32 %37, i32 %38)
  br label %136

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cms_DigestAlgorithm_find_ctx(i32* %42, i32* %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %136

50:                                               ; preds = %41
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @EVP_DigestFinal_ex(i32* %51, i8* %17, i32* %11)
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT, align 4
  %56 = load i32, i32* @CMS_R_UNABLE_TO_FINALIZE_CONTEXT, align 4
  %57 = call i32 @CMSerr(i32 %55, i32 %56)
  br label %136

58:                                               ; preds = %50
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp ne i32 %62, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT, align 4
  %70 = load i32, i32* @CMS_R_MESSAGEDIGEST_ATTRIBUTE_WRONG_LENGTH, align 4
  %71 = call i32 @CMSerr(i32 %69, i32 %70)
  br label %136

72:                                               ; preds = %61
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @memcmp(i8* %17, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT, align 4
  %81 = load i32, i32* @CMS_R_VERIFICATION_FAILURE, align 4
  %82 = call i32 @CMSerr(i32 %80, i32 %81)
  store i32 0, i32* %8, align 4
  br label %84

83:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %135

85:                                               ; preds = %58
  %86 = load i32*, i32** %6, align 8
  %87 = call i32* @EVP_MD_CTX_md(i32* %86)
  store i32* %87, i32** %12, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32* @EVP_PKEY_CTX_new(i32 %90, i32* null)
  store i32* %91, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %136

95:                                               ; preds = %85
  %96 = load i32*, i32** %7, align 8
  %97 = call i64 @EVP_PKEY_verify_init(i32* %96)
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %136

100:                                              ; preds = %95
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i64 @EVP_PKEY_CTX_set_signature_md(i32* %101, i32* %102)
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %136

106:                                              ; preds = %100
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = call i32 @cms_sd_asn1_ctrl(%struct.TYPE_10__* %110, i32 1)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  br label %136

114:                                              ; preds = %106
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @EVP_PKEY_verify(i32* %115, i32 %120, i32 %125, i8* %17, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %114
  %131 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT, align 4
  %132 = load i32, i32* @CMS_R_VERIFICATION_FAILURE, align 4
  %133 = call i32 @CMSerr(i32 %131, i32 %132)
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %130, %114
  br label %135

135:                                              ; preds = %134, %84
  br label %136

136:                                              ; preds = %135, %113, %105, %99, %94, %68, %54, %49, %36, %20
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @EVP_PKEY_CTX_free(i32* %137)
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @EVP_MD_CTX_free(i32* %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %142)
  ret i32 %141
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i64 @CMS_signed_get_attr_count(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @CMS_signed_get0_data_by_OBJ(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @cms_DigestAlgorithm_find_ctx(i32*, i32*, i32) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_md(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_verify_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_signature_md(i32*, i32*) #1

declare dso_local i32 @cms_sd_asn1_ctrl(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @EVP_PKEY_verify(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
