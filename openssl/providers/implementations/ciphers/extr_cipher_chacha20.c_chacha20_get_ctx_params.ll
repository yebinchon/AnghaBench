; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20.c_chacha20_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20.c_chacha20_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@CHACHA20_IVLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@CHACHA20_KEYLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @chacha20_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_get_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %9 = call i32* @OSSL_PARAM_locate(i32* %7, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @CHACHA20_IVLEN, align 4
  %15 = call i32 @OSSL_PARAM_set_size_t(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ERR_LIB_PROV, align 4
  %19 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %20 = call i32 @ERR_raise(i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %37

21:                                               ; preds = %12, %2
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %24 = call i32* @OSSL_PARAM_locate(i32* %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @CHACHA20_KEYLEN, align 4
  %30 = call i32 @OSSL_PARAM_set_size_t(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ERR_LIB_PROV, align 4
  %34 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %35 = call i32 @ERR_raise(i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %27, %21
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
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
