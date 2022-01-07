; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32, i64)* }

@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAGLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IV = common dso_local global i32 0, align 4
@PROV_R_INVALID_IVLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@PROV_R_TAG_NOTSET = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccm_get_ctx_params(i8* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %13 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %11, i32 %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = call i64 @ccm_get_ivlen(%struct.TYPE_12__* %18)
  %20 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__* %17, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ERR_LIB_PROV, align 4
  %24 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %25 = call i32 @ERR_raise(i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %165

26:                                               ; preds = %16, %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAGLEN, align 4
  %29 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %27, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__* %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ERR_LIB_PROV, align 4
  %42 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %43 = call i32 @ERR_raise(i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %165

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = load i32, i32* @OSSL_CIPHER_PARAM_IV, align 4
  %48 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %46, i32 %47)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %7, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = call i64 @ccm_get_ivlen(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @ERR_LIB_PROV, align 4
  %60 = load i32, i32* @PROV_R_INVALID_IVLEN, align 4
  %61 = call i32 @ERR_raise(i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %165

62:                                               ; preds = %51
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_13__* %63, i32 %66, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @ERR_LIB_PROV, align 4
  %74 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %75 = call i32 @ERR_raise(i32 %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %165

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %45
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %80 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %78, i32 %79)
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %7, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = icmp ne %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__* %84, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @ERR_LIB_PROV, align 4
  %92 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %93 = call i32 @ERR_raise(i32 %91, i32 %92)
  store i32 0, i32* %3, align 4
  br label %165

94:                                               ; preds = %83, %77
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD, align 4
  %97 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %95, i32 %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %7, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = icmp ne %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__* %101, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @ERR_LIB_PROV, align 4
  %109 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %110 = call i32 @ERR_raise(i32 %108, i32 %109)
  store i32 0, i32* %3, align 4
  br label %165

111:                                              ; preds = %100, %94
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %114 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %112, i32 %113)
  store %struct.TYPE_13__* %114, %struct.TYPE_13__** %7, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = icmp ne %struct.TYPE_13__* %115, null
  br i1 %116, label %117, label %164

117:                                              ; preds = %111
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122, %117
  %128 = load i32, i32* @ERR_LIB_PROV, align 4
  %129 = load i32, i32* @PROV_R_TAG_NOTSET, align 4
  %130 = call i32 @ERR_raise(i32 %128, i32 %129)
  store i32 0, i32* %3, align 4
  br label %165

131:                                              ; preds = %122
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @ERR_LIB_PROV, align 4
  %139 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %140 = call i32 @ERR_raise(i32 %138, i32 %139)
  store i32 0, i32* %3, align 4
  br label %165

141:                                              ; preds = %131
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_12__*, i32, i64)*, i32 (%struct.TYPE_12__*, i32, i64)** %145, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 %146(%struct.TYPE_12__* %147, i32 %150, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %165

157:                                              ; preds = %141
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 5
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %157, %111
  store i32 1, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %156, %137, %127, %107, %90, %72, %58, %40, %22
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @ccm_get_ivlen(%struct.TYPE_12__*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_13__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
