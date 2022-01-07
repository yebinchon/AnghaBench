; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@OCB_MAX_TAG_LEN = common dso_local global i64 0, align 8
@OSSL_CIPHER_PARAM_AEAD_IVLEN = common dso_local global i32 0, align 4
@OCB_MIN_IV_LEN = common dso_local global i64 0, align 8
@OCB_MAX_IV_LEN = common dso_local global i64 0, align 8
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@PROV_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*)* @aes_ocb_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_ocb_set_ctx_params(i8* %0, %struct.TYPE_10__* %1) #0 {
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
  br i1 %16, label %17, label %72

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
  br label %127

27:                                               ; preds = %17
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OCB_MAX_TAG_LEN, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %127

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %71

45:                                               ; preds = %27
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %45
  store i32 0, i32* %3, align 4
  br label %127

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i32 %63, i32* %66, i64 %69)
  br label %71

71:                                               ; preds = %60, %39
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_IVLEN, align 4
  %75 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %73, i32 %74)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %7, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_10__* %79, i64* %8)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @ERR_LIB_PROV, align 4
  %84 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %85 = call i32 @ERR_raise(i32 %83, i32 %84)
  store i32 0, i32* %3, align 4
  br label %127

86:                                               ; preds = %78
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @OCB_MIN_IV_LEN, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @OCB_MAX_IV_LEN, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86
  store i32 0, i32* %3, align 4
  br label %127

95:                                               ; preds = %90
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  br label %100

100:                                              ; preds = %95, %72
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %103 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %101, i32 %102)
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %7, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %126

106:                                              ; preds = %100
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_10__* %107, i64* %9)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @ERR_LIB_PROV, align 4
  %112 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %113 = call i32 @ERR_raise(i32 %111, i32 %112)
  store i32 0, i32* %3, align 4
  br label %127

114:                                              ; preds = %106
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @ERR_LIB_PROV, align 4
  %123 = load i32, i32* @PROV_R_INVALID_KEY_LENGTH, align 4
  %124 = call i32 @ERR_raise(i32 %122, i32 %123)
  store i32 0, i32* %3, align 4
  br label %127

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %100
  store i32 1, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %121, %110, %94, %82, %59, %38, %23
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_10__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
