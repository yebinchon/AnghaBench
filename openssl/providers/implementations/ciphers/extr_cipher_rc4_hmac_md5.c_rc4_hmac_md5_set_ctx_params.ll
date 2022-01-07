; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc4_hmac_md5.c_rc4_hmac_md5_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc4_hmac_md5.c_rc4_hmac_md5_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)* }

@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@PROV_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@PROV_R_INVALID_IV_LENGTH = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@PROV_R_INVALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*)* @rc4_hmac_md5_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc4_hmac_md5_set_ctx_params(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %13 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %11, i32 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__* %17, i64* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ERR_LIB_PROV, align 4
  %22 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %23 = call i32 @ERR_raise(i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  br label %133

24:                                               ; preds = %16
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @ERR_LIB_PROV, align 4
  %33 = load i32, i32* @PROV_R_INVALID_KEY_LENGTH, align 4
  %34 = call i32 @ERR_raise(i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %133

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %39 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %37, i32 %38)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__* %43, i64* %8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ERR_LIB_PROV, align 4
  %48 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %49 = call i32 @ERR_raise(i32 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %133

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @ERR_LIB_PROV, align 4
  %59 = load i32, i32* @PROV_R_INVALID_IV_LENGTH, align 4
  %60 = call i32 @ERR_raise(i32 %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %133

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD, align 4
  %65 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %63, i32 %64)
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %102

68:                                               ; preds = %62
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @ERR_LIB_PROV, align 4
  %76 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %77 = call i32 @ERR_raise(i32 %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %133

78:                                               ; preds = %68
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = call %struct.TYPE_14__* @GET_HW(%struct.TYPE_11__* %79)
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64 (%struct.TYPE_13__*, i32, i32)*, i64 (%struct.TYPE_13__*, i32, i32)** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 %82(%struct.TYPE_13__* %84, i32 %87, i32 %90)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %78
  %95 = load i32, i32* @ERR_LIB_PROV, align 4
  %96 = load i32, i32* @PROV_R_INVALID_DATA, align 4
  %97 = call i32 @ERR_raise(i32 %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %133

98:                                               ; preds = %78
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %62
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD, align 4
  %105 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %103, i32 %104)
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %7, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = icmp ne %struct.TYPE_12__* %106, null
  br i1 %107, label %108, label %132

108:                                              ; preds = %102
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @ERR_LIB_PROV, align 4
  %116 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %117 = call i32 @ERR_raise(i32 %115, i32 %116)
  store i32 0, i32* %3, align 4
  br label %133

118:                                              ; preds = %108
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = call %struct.TYPE_14__* @GET_HW(%struct.TYPE_11__* %119)
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %122(%struct.TYPE_13__* %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %118, %102
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %114, %94, %74, %57, %46, %31, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local %struct.TYPE_14__* @GET_HW(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
