; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_tls13_hkdf_expand.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_tls13_hkdf_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls13_hkdf_expand.label_prefix = internal constant [7 x i8] c"tls13 \00", align 1
@OSSL_KDF_NAME_HKDF = common dso_local global i32 0, align 4
@EVP_PKEY_HKDEF_MODE_EXPAND_ONLY = common dso_local global i32 0, align 4
@TLS13_MAX_LABEL_LEN = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_HKDF_EXPAND = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_TLS_ILLEGAL_EXPORTER_LABEL = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_MODE = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_hkdf_expand(i32* %0, i32* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca [5 x i32], align 16
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  %35 = load i32, i32* @OSSL_KDF_NAME_HKDF, align 4
  %36 = call i32* @EVP_KDF_fetch(i32* null, i32 %35, i32* null)
  store i32* %36, i32** %22, align 8
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  store i32* %37, i32** %25, align 8
  %38 = load i32, i32* @EVP_PKEY_HKDEF_MODE_EXPAND_ONLY, align 4
  store i32 %38, i32* %26, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i8* @EVP_MD_name(i32* %39)
  store i8* %40, i8** %27, align 8
  %41 = load i32, i32* @TLS13_MAX_LABEL_LEN, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 14, %42
  %44 = add i64 %43, 1
  %45 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %31, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %32, align 8
  %50 = load i32*, i32** %22, align 8
  %51 = call i32* @EVP_KDF_CTX_new(i32* %50)
  store i32* %51, i32** %23, align 8
  %52 = load i32*, i32** %22, align 8
  %53 = call i32 @EVP_KDF_free(i32* %52)
  %54 = load i32*, i32** %23, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  store i32 1, i32* %34, align 4
  br label %200

57:                                               ; preds = %10
  %58 = load i64, i64* %16, align 8
  %59 = load i32, i32* @TLS13_MAX_LABEL_LEN, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load i32, i32* %21, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %68 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %69 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %70 = call i32 @SSLfatal(i32* %66, i32 %67, i32 %68, i32 %69)
  br label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %73 = load i32, i32* @SSL_R_TLS_ILLEGAL_EXPORTER_LABEL, align 4
  %74 = call i32 @SSLerr(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32*, i32** %23, align 8
  %77 = call i32 @EVP_KDF_CTX_free(i32* %76)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %34, align 4
  br label %200

78:                                               ; preds = %57
  %79 = load i32*, i32** %13, align 8
  %80 = call i64 @EVP_MD_size(i32* %79)
  store i64 %80, i64* %30, align 8
  %81 = trunc i64 %47 to i32
  %82 = call i32 @WPACKET_init_static_len(i32* %33, i8* %49, i32 %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %78
  %85 = load i64, i64* %20, align 8
  %86 = call i32 @WPACKET_put_bytes_u16(i32* %33, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %84
  %89 = call i32 @WPACKET_start_sub_packet_u8(i32* %33)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %88
  %92 = call i32 @WPACKET_memcpy(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @tls13_hkdf_expand.label_prefix, i64 0, i64 0), i64 6)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load i8*, i8** %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = call i32 @WPACKET_memcpy(i32* %33, i8* %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = call i32 @WPACKET_close(i32* %33)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load i8*, i8** %17, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %109

107:                                              ; preds = %102
  %108 = load i64, i64* %18, align 8
  br label %109

109:                                              ; preds = %107, %106
  %110 = phi i64 [ 0, %106 ], [ %108, %107 ]
  %111 = call i32 @WPACKET_sub_memcpy_u8(i32* %33, i8* %103, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = call i32 @WPACKET_get_total_written(i32* %33, i64* %29)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = call i32 @WPACKET_finish(i32* %33)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %116, %113, %109, %99, %94, %91, %88, %84, %78
  %120 = load i32*, i32** %23, align 8
  %121 = call i32 @EVP_KDF_CTX_free(i32* %120)
  %122 = call i32 @WPACKET_cleanup(i32* %33)
  %123 = load i32, i32* %21, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %128 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %129 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %130 = call i32 @SSLfatal(i32* %126, i32 %127, i32 %128, i32 %129)
  br label %135

131:                                              ; preds = %119
  %132 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %133 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %134 = call i32 @SSLerr(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %125
  store i32 0, i32* %11, align 4
  store i32 1, i32* %34, align 4
  br label %200

136:                                              ; preds = %116
  %137 = load i32, i32* @OSSL_KDF_PARAM_MODE, align 4
  %138 = call i32 @OSSL_PARAM_construct_int(i32 %137, i32* %26)
  %139 = load i32*, i32** %25, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %25, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %142 = load i8*, i8** %27, align 8
  %143 = load i8*, i8** %27, align 8
  %144 = call i64 @strlen(i8* %143)
  %145 = add nsw i64 %144, 1
  %146 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %141, i8* %142, i64 %145)
  %147 = load i32*, i32** %25, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %25, align 8
  store i32 %146, i32* %147, align 4
  %149 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %150 = load i8*, i8** %14, align 8
  %151 = load i64, i64* %30, align 8
  %152 = call i8* @OSSL_PARAM_construct_octet_string(i32 %149, i8* %150, i64 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %25, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %25, align 8
  store i32 %153, i32* %154, align 4
  %156 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %157 = load i64, i64* %29, align 8
  %158 = call i8* @OSSL_PARAM_construct_octet_string(i32 %156, i8* %49, i64 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load i32*, i32** %25, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %25, align 8
  store i32 %159, i32* %160, align 4
  %162 = call i32 (...) @OSSL_PARAM_construct_end()
  %163 = load i32*, i32** %25, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %25, align 8
  store i32 %162, i32* %163, align 4
  %165 = load i32*, i32** %23, align 8
  %166 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  %167 = call i64 @EVP_KDF_CTX_set_params(i32* %165, i32* %166)
  %168 = icmp sle i64 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %136
  %170 = load i32*, i32** %23, align 8
  %171 = load i8*, i8** %19, align 8
  %172 = load i64, i64* %20, align 8
  %173 = call i64 @EVP_KDF_derive(i32* %170, i8* %171, i64 %172)
  %174 = icmp sle i64 %173, 0
  br label %175

175:                                              ; preds = %169, %136
  %176 = phi i1 [ true, %136 ], [ %174, %169 ]
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %28, align 4
  %178 = load i32*, i32** %23, align 8
  %179 = call i32 @EVP_KDF_CTX_free(i32* %178)
  %180 = load i32, i32* %28, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %175
  %183 = load i32, i32* %21, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %188 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %189 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %190 = call i32 @SSLfatal(i32* %186, i32 %187, i32 %188, i32 %189)
  br label %195

191:                                              ; preds = %182
  %192 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %193 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %194 = call i32 @SSLerr(i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %191, %185
  br label %196

196:                                              ; preds = %195, %175
  %197 = load i32, i32* %28, align 4
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %11, align 4
  store i32 1, i32* %34, align 4
  br label %200

200:                                              ; preds = %196, %135, %75, %56
  %201 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %11, align 4
  ret i32 %202
}

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

declare dso_local i8* @EVP_MD_name(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @EVP_KDF_CTX_new(i32*) #1

declare dso_local i32 @EVP_KDF_free(i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @EVP_KDF_CTX_free(i32*) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32 @WPACKET_init_static_len(i32*, i8*, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i64) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @WPACKET_finish(i32*) #1

declare dso_local i32 @WPACKET_cleanup(i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_int(i32, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i64 @EVP_KDF_derive(i32*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
