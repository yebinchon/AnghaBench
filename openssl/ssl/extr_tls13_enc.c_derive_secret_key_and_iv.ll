; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_derive_secret_key_and_iv.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_derive_secret_key_and_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@EVP_MAX_KEY_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DERIVE_SECRET_KEY_AND_IV = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@EVP_CIPH_CCM_MODE = common dso_local global i64 0, align 8
@EVP_CCM_TLS_IV_LEN = common dso_local global i64 0, align 8
@SSL_AES128CCM8 = common dso_local global i32 0, align 4
@SSL_AES256CCM8 = common dso_local global i32 0, align 4
@EVP_CCM8_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CTRL_AEAD_SET_IVLEN = common dso_local global i32 0, align 4
@EVP_CTRL_AEAD_SET_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32*, i32*, i8*, i8*, i8*, i64, i8*, i8*, i32*)* @derive_secret_key_and_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_secret_key_and_iv(%struct.TYPE_17__* %0, i32 %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6, i64 %7, i8* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i64 %7, i64* %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %33 = load i32, i32* @EVP_MAX_KEY_LENGTH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %24, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %25, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @EVP_MD_size(i32* %37)
  store i32 %38, i32* %29, align 4
  %39 = load i32, i32* %29, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ossl_assert(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %11
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %46 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %47 = load i32, i32* @SSL_F_DERIVE_SECRET_KEY_AND_IV, align 4
  %48 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %49 = call i32 @SSLfatal(%struct.TYPE_17__* %45, i32 %46, i32 %47, i32 %48)
  br label %159

50:                                               ; preds = %11
  %51 = load i32, i32* %29, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %30, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i64, i64* %20, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = load i64, i64* %30, align 8
  %60 = load i8*, i8** %21, align 8
  %61 = load i64, i64* %30, align 8
  %62 = call i32 @tls13_hkdf_expand(%struct.TYPE_17__* %53, i32* %54, i8* %55, i8* %56, i64 %57, i8* %58, i64 %59, i8* %60, i64 %61, i32 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %159

65:                                               ; preds = %50
  %66 = load i32*, i32** %16, align 8
  %67 = call i64 @EVP_CIPHER_key_length(i32* %66)
  store i64 %67, i64* %27, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i64 @EVP_CIPHER_mode(i32* %68)
  %70 = load i64, i64* @EVP_CIPH_CCM_MODE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %65
  %73 = load i64, i64* @EVP_CCM_TLS_IV_LEN, align 8
  store i64 %73, i64* %26, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = icmp eq %struct.TYPE_14__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %31, align 4
  br label %96

88:                                               ; preds = %72
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %31, align 4
  br label %96

96:                                               ; preds = %88, %80
  %97 = load i32, i32* %31, align 4
  %98 = load i32, i32* @SSL_AES128CCM8, align 4
  %99 = load i32, i32* @SSL_AES256CCM8, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i64, i64* @EVP_CCM8_TLS_TAG_LEN, align 8
  store i64 %104, i64* %28, align 8
  br label %107

105:                                              ; preds = %96
  %106 = load i64, i64* @EVP_CCM_TLS_TAG_LEN, align 8
  store i64 %106, i64* %28, align 8
  br label %107

107:                                              ; preds = %105, %103
  br label %111

108:                                              ; preds = %65
  %109 = load i32*, i32** %16, align 8
  %110 = call i64 @EVP_CIPHER_iv_length(i32* %109)
  store i64 %110, i64* %26, align 8
  store i64 0, i64* %28, align 8
  br label %111

111:                                              ; preds = %108, %107
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = load i8*, i8** %21, align 8
  %115 = load i64, i64* %27, align 8
  %116 = call i32 @tls13_derive_key(%struct.TYPE_17__* %112, i32* %113, i8* %114, i8* %36, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load i64, i64* %26, align 8
  %124 = call i32 @tls13_derive_iv(%struct.TYPE_17__* %119, i32* %120, i8* %121, i8* %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118, %111
  br label %159

127:                                              ; preds = %118
  %128 = load i32*, i32** %23, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i64 @EVP_CipherInit_ex(i32* %128, i32* %129, i32* null, i8* null, i32* null, i32 %130)
  %132 = icmp sle i64 %131, 0
  br i1 %132, label %152, label %133

133:                                              ; preds = %127
  %134 = load i32*, i32** %23, align 8
  %135 = load i32, i32* @EVP_CTRL_AEAD_SET_IVLEN, align 4
  %136 = load i64, i64* %26, align 8
  %137 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %134, i32 %135, i64 %136, i32* null)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load i64, i64* %28, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32*, i32** %23, align 8
  %144 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %145 = load i64, i64* %28, align 8
  %146 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %143, i32 %144, i64 %145, i32* null)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142, %139
  %149 = load i32*, i32** %23, align 8
  %150 = call i64 @EVP_CipherInit_ex(i32* %149, i32* null, i32* null, i8* %36, i32* null, i32 -1)
  %151 = icmp sle i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148, %142, %133, %127
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %154 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %155 = load i32, i32* @SSL_F_DERIVE_SECRET_KEY_AND_IV, align 4
  %156 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %157 = call i32 @SSLfatal(%struct.TYPE_17__* %153, i32 %154, i32 %155, i32 %156)
  br label %159

158:                                              ; preds = %148
  store i32 1, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %162

159:                                              ; preds = %152, %126, %64, %44
  %160 = trunc i64 %34 to i32
  %161 = call i32 @OPENSSL_cleanse(i8* %36, i32 %160)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %162

162:                                              ; preds = %159, %158
  %163 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %12, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_17__*, i32*, i8*, i8*, i64, i8*, i64, i8*, i64, i32) #2

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #2

declare dso_local i64 @EVP_CIPHER_mode(i32*) #2

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #2

declare dso_local i32 @tls13_derive_key(%struct.TYPE_17__*, i32*, i8*, i8*, i64) #2

declare dso_local i32 @tls13_derive_iv(%struct.TYPE_17__*, i32*, i8*, i8*, i64) #2

declare dso_local i64 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i32*, i32) #2

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i64, i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
