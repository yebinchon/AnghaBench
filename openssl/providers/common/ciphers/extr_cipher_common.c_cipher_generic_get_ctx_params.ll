; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@OSSL_CIPHER_PARAM_IVLEN = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_PADDING = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_IV = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_NUM = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_generic_get_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @OSSL_CIPHER_PARAM_IVLEN, align 4
  %12 = call i32* @OSSL_PARAM_locate(i32* %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @OSSL_PARAM_set_size_t(i32* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ERR_LIB_PROV, align 4
  %24 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %25 = call i32 @ERR_raise(i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %106

26:                                               ; preds = %15, %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @OSSL_CIPHER_PARAM_PADDING, align 4
  %29 = call i32* @OSSL_PARAM_locate(i32* %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @OSSL_PARAM_set_uint(i32* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ERR_LIB_PROV, align 4
  %41 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %42 = call i32 @ERR_raise(i32 %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %106

43:                                               ; preds = %32, %26
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @OSSL_CIPHER_PARAM_IV, align 4
  %46 = call i32* @OSSL_PARAM_locate(i32* %44, i32 %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OSSL_PARAM_set_octet_ptr(i32* %50, i32* %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %49
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @OSSL_PARAM_set_octet_string(i32* %59, i32* %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @ERR_LIB_PROV, align 4
  %69 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %70 = call i32 @ERR_raise(i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %106

71:                                               ; preds = %58, %49, %43
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @OSSL_CIPHER_PARAM_NUM, align 4
  %74 = call i32* @OSSL_PARAM_locate(i32* %72, i32 %73)
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @OSSL_PARAM_set_uint(i32* %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ERR_LIB_PROV, align 4
  %86 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %87 = call i32 @ERR_raise(i32 %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %106

88:                                               ; preds = %77, %71
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %91 = call i32* @OSSL_PARAM_locate(i32* %89, i32 %90)
  store i32* %91, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @OSSL_PARAM_set_size_t(i32* %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @ERR_LIB_PROV, align 4
  %103 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %104 = call i32 @ERR_raise(i32 %102, i32 %103)
  store i32 0, i32* %3, align 4
  br label %106

105:                                              ; preds = %94, %88
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %101, %84, %67, %39, %22
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(i32*, i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_uint(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_octet_ptr(i32*, i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_octet_string(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
