; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@OSSL_CIPHER_PARAM_PADDING = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_NUM = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_generic_set_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @OSSL_CIPHER_PARAM_PADDING, align 4
  %15 = call i32* @OSSL_PARAM_locate_const(i32* %13, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @OSSL_PARAM_get_uint(i32* %19, i32* %8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ERR_LIB_PROV, align 4
  %24 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %25 = call i32 @ERR_raise(i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %70

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %2
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @OSSL_CIPHER_PARAM_NUM, align 4
  %36 = call i32* @OSSL_PARAM_locate_const(i32* %34, i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @OSSL_PARAM_get_uint(i32* %40, i32* %9)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ERR_LIB_PROV, align 4
  %45 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %46 = call i32 @ERR_raise(i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %70

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %33
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %54 = call i32* @OSSL_PARAM_locate_const(i32* %52, i32 %53)
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @OSSL_PARAM_get_size_t(i32* %58, i64* %10)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @ERR_LIB_PROV, align 4
  %63 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %64 = call i32 @ERR_raise(i32 %62, i32 %63)
  store i32 0, i32* %3, align 4
  br label %70

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %51
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %61, %43, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_uint(i32*, i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
