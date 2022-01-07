; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i32, i64 }

@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@PROV_R_INVALID_TAGLEN = common dso_local global i32 0, align 4
@PROV_R_TAG_NOT_NEEDED = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_IVLEN = common dso_local global i32 0, align 4
@PROV_R_INVALID_IVLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD = common dso_local global i32 0, align 4
@PROV_R_INVALID_DATA = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccm_set_ctx_params(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %14 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %12, i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %80

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @ERR_LIB_PROV, align 4
  %25 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %26 = call i32 @ERR_raise(i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %177

27:                                               ; preds = %17
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 16
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %33, %27
  %44 = load i32, i32* @ERR_LIB_PROV, align 4
  %45 = load i32, i32* @PROV_R_INVALID_TAGLEN, align 4
  %46 = call i32 @ERR_raise(i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %177

47:                                               ; preds = %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @ERR_LIB_PROV, align 4
  %59 = load i32, i32* @PROV_R_TAG_NOT_NEEDED, align 4
  %60 = call i32 @ERR_raise(i32 %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %177

61:                                               ; preds = %52
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32 %64, i32* %67, i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %61, %47
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_IVLEN, align 4
  %83 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %81, i32 %82)
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %7, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_10__* %87, i64* %8)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @ERR_LIB_PROV, align 4
  %92 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %93 = call i32 @ERR_raise(i32 %91, i32 %92)
  store i32 0, i32* %3, align 4
  br label %177

94:                                               ; preds = %86
  %95 = load i64, i64* %8, align 8
  %96 = sub i64 15, %95
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ult i64 %97, 2
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %9, align 8
  %101 = icmp ugt i64 %100, 8
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %94
  %103 = load i32, i32* @ERR_LIB_PROV, align 4
  %104 = load i32, i32* @PROV_R_INVALID_IVLEN, align 4
  %105 = call i32 @ERR_raise(i32 %103, i32 %104)
  store i32 0, i32* %3, align 4
  br label %177

106:                                              ; preds = %99
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %80
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD, align 4
  %113 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %111, i32 %112)
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %7, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %116, label %145

116:                                              ; preds = %110
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* @ERR_LIB_PROV, align 4
  %124 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %125 = call i32 @ERR_raise(i32 %123, i32 %124)
  store i32 0, i32* %3, align 4
  br label %177

126:                                              ; preds = %116
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @ccm_tls_init(%struct.TYPE_9__* %127, i32* %130, i32 %133)
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %126
  %138 = load i32, i32* @ERR_LIB_PROV, align 4
  %139 = load i32, i32* @PROV_R_INVALID_DATA, align 4
  %140 = call i32 @ERR_raise(i32 %138, i32 %139)
  store i32 0, i32* %3, align 4
  br label %177

141:                                              ; preds = %126
  %142 = load i64, i64* %8, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %110
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED, align 4
  %148 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %146, i32 %147)
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %7, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = icmp ne %struct.TYPE_10__* %149, null
  br i1 %150, label %151, label %176

151:                                              ; preds = %145
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i32, i32* @ERR_LIB_PROV, align 4
  %159 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %160 = call i32 @ERR_raise(i32 %158, i32 %159)
  store i32 0, i32* %3, align 4
  br label %177

161:                                              ; preds = %151
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @ccm_tls_iv_set_fixed(%struct.TYPE_9__* %162, i32* %165, i32 %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = load i32, i32* @ERR_LIB_PROV, align 4
  %173 = load i32, i32* @PROV_R_INVALID_IVLEN, align 4
  %174 = call i32 @ERR_raise(i32 %172, i32 %173)
  store i32 0, i32* %3, align 4
  br label %177

175:                                              ; preds = %161
  br label %176

176:                                              ; preds = %175, %145
  store i32 1, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %171, %157, %137, %122, %102, %90, %57, %43, %23
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_10__*, i64*) #1

declare dso_local i64 @ccm_tls_init(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @ccm_tls_iv_set_fixed(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
