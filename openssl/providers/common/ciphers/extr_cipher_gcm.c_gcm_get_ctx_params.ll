; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i64, i32, i32, i32 }

@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAGLEN = common dso_local global i32 0, align 4
@UNINITIALISED_SIZET = common dso_local global i64 0, align 8
@GCM_TAG_MAX_SIZE = common dso_local global i64 0, align 8
@OSSL_CIPHER_PARAM_IV = common dso_local global i32 0, align 4
@PROV_R_INVALID_IV_LENGTH = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@EVP_GCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@PROV_R_INVALID_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcm_get_ctx_params(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %14 = call %struct.TYPE_9__* @OSSL_PARAM_locate(%struct.TYPE_9__* %12, i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_9__* %18, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ERR_LIB_PROV, align 4
  %26 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %27 = call i32 @ERR_raise(i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %180

28:                                               ; preds = %17, %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %31 = call %struct.TYPE_9__* @OSSL_PARAM_locate(%struct.TYPE_9__* %29, i32 %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_9__* %35, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ERR_LIB_PROV, align 4
  %43 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %44 = call i32 @ERR_raise(i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %180

45:                                               ; preds = %34, %28
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAGLEN, align 4
  %48 = call %struct.TYPE_9__* @OSSL_PARAM_locate(%struct.TYPE_9__* %46, i32 %47)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UNINITIALISED_SIZET, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load i64, i64* @GCM_TAG_MAX_SIZE, align 8
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i64 [ %60, %57 ], [ %62, %61 ]
  store i64 %64, i64* %9, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_9__* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ERR_LIB_PROV, align 4
  %71 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %72 = call i32 @ERR_raise(i32 %70, i32 %71)
  store i32 0, i32* %3, align 4
  br label %180

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %45
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32, i32* @OSSL_CIPHER_PARAM_IV, align 4
  %77 = call %struct.TYPE_9__* @OSSL_PARAM_locate(%struct.TYPE_9__* %75, i32 %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %7, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %118

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %180

91:                                               ; preds = %85, %80
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32, i32* @ERR_LIB_PROV, align 4
  %101 = load i32, i32* @PROV_R_INVALID_IV_LENGTH, align 4
  %102 = call i32 @ERR_raise(i32 %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %180

103:                                              ; preds = %91
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_9__* %104, i32 %107, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @ERR_LIB_PROV, align 4
  %115 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %116 = call i32 @ERR_raise(i32 %114, i32 %115)
  store i32 0, i32* %3, align 4
  br label %180

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %74
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD, align 4
  %121 = call %struct.TYPE_9__* @OSSL_PARAM_locate(%struct.TYPE_9__* %119, i32 %120)
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %7, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = icmp ne %struct.TYPE_9__* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %118
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_9__* %125, i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @ERR_LIB_PROV, align 4
  %133 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %134 = call i32 @ERR_raise(i32 %132, i32 %133)
  store i32 0, i32* %3, align 4
  br label %180

135:                                              ; preds = %124, %118
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %138 = call %struct.TYPE_9__* @OSSL_PARAM_locate(%struct.TYPE_9__* %136, i32 %137)
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %7, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = icmp ne %struct.TYPE_9__* %139, null
  br i1 %140, label %141, label %179

141:                                              ; preds = %135
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %141
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @UNINITIALISED_SIZET, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156, %151, %147, %141
  %163 = load i32, i32* @ERR_LIB_PROV, align 4
  %164 = load i32, i32* @PROV_R_INVALID_TAG, align 4
  %165 = call i32 @ERR_raise(i32 %163, i32 %164)
  store i32 0, i32* %3, align 4
  br label %180

166:                                              ; preds = %156
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_9__* %167, i32 %170, i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %166
  %175 = load i32, i32* @ERR_LIB_PROV, align 4
  %176 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %177 = call i32 @ERR_raise(i32 %175, i32 %176)
  store i32 0, i32* %3, align 4
  br label %180

178:                                              ; preds = %166
  br label %179

179:                                              ; preds = %178, %135
  store i32 1, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %174, %162, %131, %113, %99, %90, %69, %41, %24
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.TYPE_9__* @OSSL_PARAM_locate(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_9__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
