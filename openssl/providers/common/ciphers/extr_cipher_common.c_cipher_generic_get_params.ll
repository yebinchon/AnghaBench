; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_get_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_CIPHER_PARAM_MODE = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_FLAGS = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_BLOCK_SIZE = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_generic_get_params(i32* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @OSSL_CIPHER_PARAM_MODE, align 4
  %17 = call i32* @OSSL_PARAM_locate(i32* %15, i32 %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %6
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @OSSL_PARAM_set_uint(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ERR_LIB_PROV, align 4
  %27 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %28 = call i32 @ERR_raise(i32 %26, i32 %27)
  store i32 0, i32* %7, align 4
  br label %93

29:                                               ; preds = %20, %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @OSSL_CIPHER_PARAM_FLAGS, align 4
  %32 = call i32* @OSSL_PARAM_locate(i32* %30, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32*, i32** %14, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @OSSL_PARAM_set_ulong(i32* %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ERR_LIB_PROV, align 4
  %42 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %43 = call i32 @ERR_raise(i32 %41, i32 %42)
  store i32 0, i32* %7, align 4
  br label %93

44:                                               ; preds = %35, %29
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %47 = call i32* @OSSL_PARAM_locate(i32* %45, i32 %46)
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32*, i32** %14, align 8
  %52 = load i64, i64* %11, align 8
  %53 = udiv i64 %52, 8
  %54 = call i32 @OSSL_PARAM_set_size_t(i32* %51, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ERR_LIB_PROV, align 4
  %58 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %59 = call i32 @ERR_raise(i32 %57, i32 %58)
  store i32 0, i32* %7, align 4
  br label %93

60:                                               ; preds = %50, %44
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @OSSL_CIPHER_PARAM_BLOCK_SIZE, align 4
  %63 = call i32* @OSSL_PARAM_locate(i32* %61, i32 %62)
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %12, align 8
  %69 = udiv i64 %68, 8
  %70 = call i32 @OSSL_PARAM_set_size_t(i32* %67, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ERR_LIB_PROV, align 4
  %74 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %75 = call i32 @ERR_raise(i32 %73, i32 %74)
  store i32 0, i32* %7, align 4
  br label %93

76:                                               ; preds = %66, %60
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %79 = call i32* @OSSL_PARAM_locate(i32* %77, i32 %78)
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i32*, i32** %14, align 8
  %84 = load i64, i64* %13, align 8
  %85 = udiv i64 %84, 8
  %86 = call i32 @OSSL_PARAM_set_size_t(i32* %83, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ERR_LIB_PROV, align 4
  %90 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %91 = call i32 @ERR_raise(i32 %89, i32 %90)
  store i32 0, i32* %7, align 4
  br label %93

92:                                               ; preds = %82, %76
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %88, %72, %56, %40, %25
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_uint(i32*, i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_ulong(i32*, i64) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
