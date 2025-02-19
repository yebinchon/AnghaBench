; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc4_hmac_md5.c_rc4_hmac_md5_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc4_hmac_md5.c_rc4_hmac_md5_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @rc4_hmac_md5_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc4_hmac_md5_get_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %12 = call i32* @OSSL_PARAM_locate(i32* %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OSSL_PARAM_set_size_t(i32* %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ERR_LIB_PROV, align 4
  %25 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %26 = call i32 @ERR_raise(i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %63

27:                                               ; preds = %15, %2
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %30 = call i32* @OSSL_PARAM_locate(i32* %28, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @OSSL_PARAM_set_size_t(i32* %34, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ERR_LIB_PROV, align 4
  %43 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %44 = call i32 @ERR_raise(i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %63

45:                                               ; preds = %33, %27
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD, align 4
  %48 = call i32* @OSSL_PARAM_locate(i32* %46, i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OSSL_PARAM_set_size_t(i32* %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ERR_LIB_PROV, align 4
  %60 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %61 = call i32 @ERR_raise(i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %51, %45
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %58, %41, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(i32*, i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
