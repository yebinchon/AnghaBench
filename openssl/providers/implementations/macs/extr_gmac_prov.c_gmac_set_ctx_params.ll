; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_gmac_prov.c_gmac_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_gmac_prov.c_gmac_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32* }
%struct.gmac_data_st = type { i32, i32, i32* }

@EVP_CIPH_GCM_MODE = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@EVP_R_CIPHER_NOT_GCM_MODE = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@EVP_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_IV = common dso_local global i32 0, align 4
@EVP_CTRL_AEAD_SET_IVLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @gmac_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_set_ctx_params(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.gmac_data_st*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.gmac_data_st*
  store %struct.gmac_data_st* %11, %struct.gmac_data_st** %6, align 8
  %12 = load %struct.gmac_data_st*, %struct.gmac_data_st** %6, align 8
  %13 = getelementptr inbounds %struct.gmac_data_st, %struct.gmac_data_st* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.gmac_data_st*, %struct.gmac_data_st** %6, align 8
  %16 = getelementptr inbounds %struct.gmac_data_st, %struct.gmac_data_st* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.gmac_data_st*, %struct.gmac_data_st** %6, align 8
  %23 = getelementptr inbounds %struct.gmac_data_st, %struct.gmac_data_st* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @ossl_prov_cipher_load_from_params(i32* %23, %struct.TYPE_6__* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %113

29:                                               ; preds = %21
  %30 = load %struct.gmac_data_st*, %struct.gmac_data_st** %6, align 8
  %31 = getelementptr inbounds %struct.gmac_data_st, %struct.gmac_data_st* %30, i32 0, i32 0
  %32 = call i32* @ossl_prov_cipher_cipher(i32* %31)
  %33 = call i64 @EVP_CIPHER_mode(i32* %32)
  %34 = load i64, i64* @EVP_CIPH_GCM_MODE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @ERR_LIB_PROV, align 4
  %38 = load i32, i32* @EVP_R_CIPHER_NOT_GCM_MODE, align 4
  %39 = call i32 @ERR_raise(i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %113

40:                                               ; preds = %29
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.gmac_data_st*, %struct.gmac_data_st** %6, align 8
  %43 = getelementptr inbounds %struct.gmac_data_st, %struct.gmac_data_st* %42, i32 0, i32 0
  %44 = call i32* @ossl_prov_cipher_cipher(i32* %43)
  %45 = load %struct.gmac_data_st*, %struct.gmac_data_st** %6, align 8
  %46 = getelementptr inbounds %struct.gmac_data_st, %struct.gmac_data_st* %45, i32 0, i32 0
  %47 = call i32* @ossl_prov_cipher_engine(i32* %46)
  %48 = call i32 @EVP_EncryptInit_ex(i32* %41, i32* %44, i32* %47, i32* null, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %113

51:                                               ; preds = %40
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %54 = call %struct.TYPE_6__* @OSSL_PARAM_locate_const(%struct.TYPE_6__* %52, i32 %53)
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %9, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %113

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @EVP_CIPHER_CTX_key_length(i32* %67)
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @ERR_LIB_PROV, align 4
  %72 = load i32, i32* @EVP_R_INVALID_KEY_LENGTH, align 4
  %73 = call i32 @ERR_raise(i32 %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %113

74:                                               ; preds = %63
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @EVP_EncryptInit_ex(i32* %75, i32* null, i32* null, i32* %78, i32* null)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %113

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %51
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = load i32, i32* @OSSL_MAC_PARAM_IV, align 4
  %86 = call %struct.TYPE_6__* @OSSL_PARAM_locate_const(%struct.TYPE_6__* %84, i32 %85)
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %9, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %113

95:                                               ; preds = %88
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @EVP_CTRL_AEAD_SET_IVLEN, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %96, i32 %97, i64 %100, i32* null)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @EVP_EncryptInit_ex(i32* %104, i32* null, i32* null, i32* null, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103, %95
  store i32 0, i32* %3, align 4
  br label %113

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %83
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %110, %94, %81, %70, %62, %50, %36, %28
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_cipher_load_from_params(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @EVP_CIPHER_mode(i32*) #1

declare dso_local i32* @ossl_prov_cipher_cipher(i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @ossl_prov_cipher_engine(i32*) #1

declare dso_local %struct.TYPE_6__* @OSSL_PARAM_locate_const(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @EVP_CIPHER_CTX_key_length(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
