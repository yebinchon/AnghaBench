; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_poly1305.c_chacha20_poly1305_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_poly1305.c_chacha20_poly1305_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@CHACHA20_POLY1305_KEYLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAGLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@PROV_R_TAG_NOTSET = common dso_local global i32 0, align 4
@POLY1305_BLOCK_SIZE = common dso_local global i64 0, align 8
@PROV_R_INVALID_TAGLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*)* @chacha20_poly1305_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_poly1305_get_ctx_params(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %12 = call %struct.TYPE_10__* @OSSL_PARAM_locate(%struct.TYPE_10__* %10, i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_10__* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ERR_LIB_PROV, align 4
  %24 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %25 = call i32 @ERR_raise(i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %129

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %30 = call %struct.TYPE_10__* @OSSL_PARAM_locate(%struct.TYPE_10__* %28, i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %7, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = load i32, i32* @CHACHA20_POLY1305_KEYLEN, align 4
  %36 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_10__* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ERR_LIB_PROV, align 4
  %40 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %41 = call i32 @ERR_raise(i32 %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %129

42:                                               ; preds = %33, %27
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAGLEN, align 4
  %45 = call %struct.TYPE_10__* @OSSL_PARAM_locate(%struct.TYPE_10__* %43, i32 %44)
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %7, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_10__* %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ERR_LIB_PROV, align 4
  %57 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %58 = call i32 @ERR_raise(i32 %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %129

59:                                               ; preds = %48, %42
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD, align 4
  %62 = call %struct.TYPE_10__* @OSSL_PARAM_locate(%struct.TYPE_10__* %60, i32 %61)
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %7, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_10__* %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @ERR_LIB_PROV, align 4
  %74 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %75 = call i32 @ERR_raise(i32 %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %129

76:                                               ; preds = %65, %59
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %79 = call %struct.TYPE_10__* @OSSL_PARAM_locate(%struct.TYPE_10__* %77, i32 %78)
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %7, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %82, label %128

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @ERR_LIB_PROV, align 4
  %90 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %91 = call i32 @ERR_raise(i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %129

92:                                               ; preds = %82
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @ERR_LIB_PROV, align 4
  %100 = load i32, i32* @PROV_R_TAG_NOTSET, align 4
  %101 = call i32 @ERR_raise(i32 %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %129

102:                                              ; preds = %92
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107, %102
  %114 = load i32, i32* @ERR_LIB_PROV, align 4
  %115 = load i32, i32* @PROV_R_INVALID_TAGLEN, align 4
  %116 = call i32 @ERR_raise(i32 %114, i32 %115)
  store i32 0, i32* %3, align 4
  br label %129

117:                                              ; preds = %107
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @memcpy(i32 %120, i32 %123, i64 %126)
  br label %128

128:                                              ; preds = %117, %76
  store i32 1, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %113, %98, %88, %72, %55, %38, %22
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_10__* @OSSL_PARAM_locate(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
