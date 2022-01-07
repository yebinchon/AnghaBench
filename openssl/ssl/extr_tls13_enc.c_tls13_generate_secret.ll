; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_tls13_generate_secret.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_tls13_generate_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY = common dso_local global i32 0, align 4
@tls13_generate_secret.derived_secret_label = internal constant [8 x i8] c"derived\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_HKDF = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_GENERATE_SECRET = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@default_zeros = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_MODE = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_generate_secret(i32* %0, i32* %1, i8* %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [5 x i32], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  store i32* %30, i32** %21, align 8
  %31 = load i32, i32* @EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY, align 4
  store i32 %31, i32* %22, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i8* @EVP_MD_name(i32* %32)
  store i8* %33, i8** %23, align 8
  %34 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %24, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %25, align 8
  %38 = load i32, i32* @OSSL_KDF_NAME_HKDF, align 4
  %39 = call i32* @EVP_KDF_fetch(i32* null, i32 %38, i32* null)
  store i32* %39, i32** %18, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = call i32* @EVP_KDF_CTX_new(i32* %40)
  store i32* %41, i32** %19, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = call i32 @EVP_KDF_free(i32* %42)
  %44 = load i32*, i32** %19, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %6
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %50 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %51 = call i32 @SSLfatal(i32* %47, i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %190

52:                                               ; preds = %6
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @EVP_MD_size(i32* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp sge i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ossl_assert(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %63 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %64 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %65 = call i32 @SSLfatal(i32* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 @EVP_KDF_CTX_free(i32* %66)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %190

68:                                               ; preds = %52
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %14, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** @default_zeros, align 8
  store i8* %74, i8** %11, align 8
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i8*, i8** %10, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8*, i8** @default_zeros, align 8
  store i8* %80, i8** %10, align 8
  store i64 0, i64* %15, align 8
  br label %127

81:                                               ; preds = %76
  %82 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %82, i32** %27, align 8
  %83 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %28, align 8
  %86 = alloca i8, i64 %84, align 16
  store i64 %84, i64* %29, align 8
  %87 = load i32*, i32** %27, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %81
  %90 = load i32*, i32** %27, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @EVP_DigestInit_ex(i32* %90, i32* %91, i32* null)
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i32*, i32** %27, align 8
  %96 = call i64 @EVP_DigestFinal_ex(i32* %95, i8* %86, i32* null)
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94, %89, %81
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %101 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %102 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %103 = call i32 @SSLfatal(i32* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %27, align 8
  %105 = call i32 @EVP_MD_CTX_free(i32* %104)
  %106 = load i32*, i32** %19, align 8
  %107 = call i32 @EVP_KDF_CTX_free(i32* %106)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %123

108:                                              ; preds = %94
  %109 = load i32*, i32** %27, align 8
  %110 = call i32 @EVP_MD_CTX_free(i32* %109)
  %111 = load i32*, i32** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @tls13_hkdf_expand(i32* %111, i32* %112, i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @tls13_generate_secret.derived_secret_label, i64 0, i64 0), i32 7, i8* %86, i64 %114, i8* %37, i64 %115, i32 1)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %108
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @EVP_KDF_CTX_free(i32* %119)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %123

121:                                              ; preds = %108
  store i8* %37, i8** %10, align 8
  %122 = load i64, i64* %14, align 8
  store i64 %122, i64* %15, align 8
  store i32 0, i32* %26, align 4
  br label %123

123:                                              ; preds = %121, %118, %98
  %124 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %26, align 4
  switch i32 %125, label %190 [
    i32 0, label %126
  ]

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126, %79
  %128 = load i32, i32* @OSSL_KDF_PARAM_MODE, align 4
  %129 = call i32 @OSSL_PARAM_construct_int(i32 %128, i32* %22)
  %130 = load i32*, i32** %21, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %21, align 8
  store i32 %129, i32* %130, align 4
  %132 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %133 = load i8*, i8** %23, align 8
  %134 = load i8*, i8** %23, align 8
  %135 = call i64 @strlen(i8* %134)
  %136 = add nsw i64 %135, 1
  %137 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %132, i8* %133, i64 %136)
  %138 = load i32*, i32** %21, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %21, align 8
  store i32 %137, i32* %138, align 4
  %140 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %141 = load i8*, i8** %11, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i8* @OSSL_PARAM_construct_octet_string(i32 %140, i8* %141, i64 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load i32*, i32** %21, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %21, align 8
  store i32 %144, i32* %145, align 4
  %147 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %148 = load i8*, i8** %10, align 8
  %149 = load i64, i64* %15, align 8
  %150 = call i8* @OSSL_PARAM_construct_octet_string(i32 %147, i8* %148, i64 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load i32*, i32** %21, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %21, align 8
  store i32 %151, i32* %152, align 4
  %154 = call i32 (...) @OSSL_PARAM_construct_end()
  %155 = load i32*, i32** %21, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %21, align 8
  store i32 %154, i32* %155, align 4
  %157 = load i32*, i32** %19, align 8
  %158 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  %159 = call i64 @EVP_KDF_CTX_set_params(i32* %157, i32* %158)
  %160 = icmp sle i64 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %127
  %162 = load i32*, i32** %19, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i64, i64* %14, align 8
  %165 = call i64 @EVP_KDF_derive(i32* %162, i8* %163, i64 %164)
  %166 = icmp sle i64 %165, 0
  br label %167

167:                                              ; preds = %161, %127
  %168 = phi i1 [ true, %127 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %175 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %176 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %177 = call i32 @SSLfatal(i32* %173, i32 %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %172, %167
  %179 = load i32*, i32** %19, align 8
  %180 = call i32 @EVP_KDF_CTX_free(i32* %179)
  %181 = load i8*, i8** %10, align 8
  %182 = icmp eq i8* %181, %37
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i64, i64* %14, align 8
  %185 = call i32 @OPENSSL_cleanse(i8* %37, i64 %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %17, align 4
  %188 = icmp eq i32 %187, 0
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %190

190:                                              ; preds = %186, %123, %60, %46
  %191 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i8* @EVP_MD_name(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

declare dso_local i32* @EVP_KDF_CTX_new(i32*) #1

declare dso_local i32 @EVP_KDF_free(i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @EVP_KDF_CTX_free(i32*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @tls13_hkdf_expand(i32*, i32*, i8*, i8*, i32, i8*, i64, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @OSSL_PARAM_construct_int(i32, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i64 @EVP_KDF_derive(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
