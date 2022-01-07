; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_cms_SignerInfo_content_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_cms_SignerInfo_content_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32 }

@CMS_F_CMS_SIGNERINFO_CONTENT_SIGN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CMS_R_NO_PRIVATE_KEY = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@NID_pkcs9_messageDigest = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@CMS_R_SIGNFINAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32*)* @cms_SignerInfo_content_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_SignerInfo_content_sign(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %22, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @CMSerr(i32 %26, i32 %27)
  store i32 0, i32* %4, align 4
  br label %186

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, align 4
  %36 = load i32, i32* @CMS_R_NO_PRIVATE_KEY, align 4
  %37 = call i32 @CMSerr(i32 %35, i32 %36)
  br label %180

38:                                               ; preds = %29
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cms_DigestAlgorithm_find_ctx(i32* %39, i32* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %180

47:                                               ; preds = %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i32 @cms_sd_asn1_ctrl(%struct.TYPE_8__* %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %180

57:                                               ; preds = %52, %47
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = call i64 @CMS_signed_get_attr_count(%struct.TYPE_8__* %58)
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %57
  %62 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %11, align 8
  %65 = alloca i8, i64 %63, align 16
  store i64 %63, i64* %12, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @EVP_DigestFinal_ex(i32* %66, i8* %65, i32* %13)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  store i32 2, i32* %14, align 4
  br label %90

70:                                               ; preds = %61
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = load i32, i32* @NID_pkcs9_messageDigest, align 4
  %73 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @CMS_signed_add1_attr_by_NID(%struct.TYPE_8__* %71, i32 %72, i32 %73, i8* %65, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i32 2, i32* %14, align 4
  br label %90

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = call i32 @cms_set_si_contentType_attr(i32* %79, %struct.TYPE_8__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 2, i32* %14, align 4
  br label %90

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = call i32 @CMS_SignerInfo_sign(%struct.TYPE_8__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 2, i32* %14, align 4
  br label %90

89:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %88, %83, %77, %69, %89
  %91 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %14, align 4
  switch i32 %92, label %188 [
    i32 0, label %93
    i32 2, label %180
  ]

93:                                               ; preds = %90
  br label %179

94:                                               ; preds = %57
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %145

99:                                               ; preds = %94
  %100 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %17, align 8
  %103 = alloca i8, i64 %101, align 16
  store i64 %101, i64* %18, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %10, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @EVP_DigestFinal_ex(i32* %107, i8* %103, i32* %19)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  store i32 2, i32* %14, align 4
  br label %141

111:                                              ; preds = %99
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @EVP_PKEY_size(i32 %114)
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call i8* @OPENSSL_malloc(i64 %116)
  store i8* %117, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, align 4
  %122 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %123 = call i32 @CMSerr(i32 %121, i32 %122)
  store i32 2, i32* %14, align 4
  br label %141

124:                                              ; preds = %111
  %125 = load i32*, i32** %10, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* %19, align 4
  %128 = call i64 @EVP_PKEY_sign(i32* %125, i8* %126, i64* %16, i8* %103, i32 %127)
  %129 = icmp sle i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @OPENSSL_free(i8* %131)
  store i32 2, i32* %14, align 4
  br label %141

133:                                              ; preds = %124
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load i64, i64* %16, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @ASN1_STRING_set0(i32 %136, i8* %137, i32 %139)
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %130, %120, %110, %133
  %142 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %14, align 4
  switch i32 %143, label %188 [
    i32 0, label %144
    i32 2, label %180
  ]

144:                                              ; preds = %141
  br label %178

145:                                              ; preds = %94
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @EVP_PKEY_size(i32 %148)
  %150 = call i8* @OPENSSL_malloc(i64 %149)
  store i8* %150, i8** %20, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i32, i32* @CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, align 4
  %155 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %156 = call i32 @CMSerr(i32 %154, i32 %155)
  br label %180

157:                                              ; preds = %145
  %158 = load i32*, i32** %8, align 8
  %159 = load i8*, i8** %20, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @EVP_SignFinal(i32* %158, i8* %159, i32* %21, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %157
  %166 = load i32, i32* @CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, align 4
  %167 = load i32, i32* @CMS_R_SIGNFINAL_ERROR, align 4
  %168 = call i32 @CMSerr(i32 %166, i32 %167)
  %169 = load i8*, i8** %20, align 8
  %170 = call i32 @OPENSSL_free(i8* %169)
  br label %180

171:                                              ; preds = %157
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i8*, i8** %20, align 8
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @ASN1_STRING_set0(i32 %174, i8* %175, i32 %176)
  br label %178

178:                                              ; preds = %171, %144
  br label %179

179:                                              ; preds = %178, %93
  store i32 1, i32* %9, align 4
  br label %180

180:                                              ; preds = %179, %165, %153, %141, %90, %56, %46, %34
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @EVP_MD_CTX_free(i32* %181)
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @EVP_PKEY_CTX_free(i32* %183)
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %180, %25
  %187 = load i32, i32* %4, align 4
  ret i32 %187

188:                                              ; preds = %141, %90
  unreachable
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @cms_DigestAlgorithm_find_ctx(i32*, i32*, i32) #1

declare dso_local i32 @cms_sd_asn1_ctrl(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CMS_signed_get_attr_count(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @CMS_signed_add1_attr_by_NID(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @cms_set_si_contentType_attr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @CMS_SignerInfo_sign(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @EVP_PKEY_size(i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @EVP_PKEY_sign(i32*, i8*, i64*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_set0(i32, i8*, i32) #1

declare dso_local i32 @EVP_SignFinal(i32*, i8*, i32*, i32) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
