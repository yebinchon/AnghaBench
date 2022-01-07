; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }

@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAGLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IV = common dso_local global i32 0, align 4
@PROV_R_INVALID_IV_LENGTH = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@PROV_R_INVALID_TAGLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_11__*)* @aes_ocb_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_ocb_get_ctx_params(i8* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %12 = call %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__* %10, i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_11__* %16, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ERR_LIB_PROV, align 4
  %25 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %26 = call i32 @ERR_raise(i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %145

27:                                               ; preds = %15, %2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %30 = call %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__* %28, i32 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %7, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_11__* %34, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ERR_LIB_PROV, align 4
  %43 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %44 = call i32 @ERR_raise(i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %145

45:                                               ; preds = %33, %27
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAGLEN, align 4
  %48 = call %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__* %46, i32 %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_11__* %52, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ERR_LIB_PROV, align 4
  %60 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %61 = call i32 @ERR_raise(i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %145

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = load i32, i32* @OSSL_CIPHER_PARAM_IV, align 4
  %66 = call %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__* %64, i32 %65)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %7, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @ERR_LIB_PROV, align 4
  %80 = load i32, i32* @PROV_R_INVALID_IV_LENGTH, align 4
  %81 = call i32 @ERR_raise(i32 %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %145

82:                                               ; preds = %69
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_11__* %83, i32 %87, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %82
  %95 = load i32, i32* @ERR_LIB_PROV, align 4
  %96 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %97 = call i32 @ERR_raise(i32 %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %145

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %63
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %102 = call %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__* %100, i32 %101)
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %7, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %144

105:                                              ; preds = %99
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @ERR_LIB_PROV, align 4
  %113 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %114 = call i32 @ERR_raise(i32 %112, i32 %113)
  store i32 0, i32* %3, align 4
  br label %145

115:                                              ; preds = %105
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %121, %115
  %130 = load i32, i32* @ERR_LIB_PROV, align 4
  %131 = load i32, i32* @PROV_R_INVALID_TAGLEN, align 4
  %132 = call i32 @ERR_raise(i32 %130, i32 %131)
  store i32 0, i32* %3, align 4
  br label %145

133:                                              ; preds = %121
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @memcpy(i32 %136, i32 %139, i64 %142)
  br label %144

144:                                              ; preds = %133, %99
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %129, %111, %94, %78, %58, %41, %23
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
