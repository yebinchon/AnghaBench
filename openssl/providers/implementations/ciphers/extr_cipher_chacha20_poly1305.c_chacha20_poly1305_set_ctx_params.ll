; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_poly1305.c_chacha20_poly1305_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_poly1305.c_chacha20_poly1305_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32* }
%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_13__*, i32*, i64)*, i64 (%struct.TYPE_13__*, i32*, i64)* }

@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@CHACHA20_POLY1305_KEYLEN = common dso_local global i64 0, align 8
@PROV_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@CHACHA20_POLY1305_MAX_IVLEN = common dso_local global i64 0, align 8
@PROV_R_INVALID_IV_LENGTH = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@POLY1305_BLOCK_SIZE = common dso_local global i64 0, align 8
@PROV_R_INVALID_TAGLEN = common dso_local global i32 0, align 4
@PROV_R_TAG_NOT_NEEDED = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD = common dso_local global i32 0, align 4
@PROV_R_INVALID_DATA = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED = common dso_local global i32 0, align 4
@PROV_R_INVALID_IVLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*)* @chacha20_poly1305_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_poly1305_set_ctx_params(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %19 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %17, i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__* %23, i64* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ERR_LIB_PROV, align 4
  %28 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %29 = call i32 @ERR_raise(i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %206

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @CHACHA20_POLY1305_KEYLEN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @ERR_LIB_PROV, align 4
  %36 = load i32, i32* @PROV_R_INVALID_KEY_LENGTH, align 4
  %37 = call i32 @ERR_raise(i32 %35, i32 %36)
  store i32 0, i32* %3, align 4
  br label %206

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %42 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %40, i32 %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %6, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__* %46, i64* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ERR_LIB_PROV, align 4
  %51 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %52 = call i32 @ERR_raise(i32 %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %206

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @CHACHA20_POLY1305_MAX_IVLEN, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %53
  %61 = load i32, i32* @ERR_LIB_PROV, align 4
  %62 = load i32, i32* @PROV_R_INVALID_IV_LENGTH, align 4
  %63 = call i32 @ERR_raise(i32 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %206

64:                                               ; preds = %56
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %39
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %71 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %69, i32 %70)
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %6, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %131

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @ERR_LIB_PROV, align 4
  %82 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %83 = call i32 @ERR_raise(i32 %81, i32 %82)
  store i32 0, i32* %3, align 4
  br label %206

84:                                               ; preds = %74
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89, %84
  %96 = load i32, i32* @ERR_LIB_PROV, align 4
  %97 = load i32, i32* @PROV_R_INVALID_TAGLEN, align 4
  %98 = call i32 @ERR_raise(i32 %96, i32 %97)
  store i32 0, i32* %3, align 4
  br label %206

99:                                               ; preds = %89
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @ERR_LIB_PROV, align 4
  %112 = load i32, i32* @PROV_R_TAG_NOT_NEEDED, align 4
  %113 = call i32 @ERR_raise(i32 %111, i32 %112)
  store i32 0, i32* %3, align 4
  br label %206

114:                                              ; preds = %104
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @memcpy(i32 %117, i32* %120, i64 %123)
  br label %125

125:                                              ; preds = %114, %99
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %68
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD, align 4
  %134 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %132, i32 %133)
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %6, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = icmp ne %struct.TYPE_12__* %135, null
  br i1 %136, label %137, label %170

137:                                              ; preds = %131
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* @ERR_LIB_PROV, align 4
  %145 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %146 = call i32 @ERR_raise(i32 %144, i32 %145)
  store i32 0, i32* %3, align 4
  br label %206

147:                                              ; preds = %137
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64 (%struct.TYPE_13__*, i32*, i64)*, i64 (%struct.TYPE_13__*, i32*, i64)** %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i64 %150(%struct.TYPE_13__* %152, i32* %155, i64 %158)
  store i64 %159, i64* %7, align 8
  %160 = load i64, i64* %7, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %147
  %163 = load i32, i32* @ERR_LIB_PROV, align 4
  %164 = load i32, i32* @PROV_R_INVALID_DATA, align 4
  %165 = call i32 @ERR_raise(i32 %163, i32 %164)
  store i32 0, i32* %3, align 4
  br label %206

166:                                              ; preds = %147
  %167 = load i64, i64* %7, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %131
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED, align 4
  %173 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %171, i32 %172)
  store %struct.TYPE_12__* %173, %struct.TYPE_12__** %6, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %175 = icmp ne %struct.TYPE_12__* %174, null
  br i1 %175, label %176, label %205

176:                                              ; preds = %170
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* @ERR_LIB_PROV, align 4
  %184 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %185 = call i32 @ERR_raise(i32 %183, i32 %184)
  store i32 0, i32* %3, align 4
  br label %206

186:                                              ; preds = %176
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i64 (%struct.TYPE_13__*, i32*, i64)*, i64 (%struct.TYPE_13__*, i32*, i64)** %188, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i64 %189(%struct.TYPE_13__* %191, i32* %194, i64 %197)
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %186
  %201 = load i32, i32* @ERR_LIB_PROV, align 4
  %202 = load i32, i32* @PROV_R_INVALID_IVLEN, align 4
  %203 = call i32 @ERR_raise(i32 %201, i32 %202)
  store i32 0, i32* %3, align 4
  br label %206

204:                                              ; preds = %186
  br label %205

205:                                              ; preds = %204, %170
  store i32 1, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %200, %182, %162, %143, %110, %95, %80, %60, %49, %34, %26
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
