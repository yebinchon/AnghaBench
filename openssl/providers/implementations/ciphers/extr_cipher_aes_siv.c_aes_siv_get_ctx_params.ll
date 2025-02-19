; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_siv.c_aes_siv_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_siv.c_aes_siv_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@OSSL_CIPHER_PARAM_AEAD_TAG = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_AEAD_TAGLEN = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_KEYLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_13__*)* @aes_siv_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_siv_get_ctx_params(i8* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAG, align 4
  %15 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %13, i32 %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_13__* %38, i32* %41, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37, %29, %24
  %48 = load i32, i32* @ERR_LIB_PROV, align 4
  %49 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %50 = call i32 @ERR_raise(i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %87

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %18, %2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = load i32, i32* @OSSL_CIPHER_PARAM_AEAD_TAGLEN, align 4
  %55 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %53, i32 %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %8, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__* %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @ERR_LIB_PROV, align 4
  %67 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %68 = call i32 @ERR_raise(i32 %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %87

69:                                               ; preds = %58, %52
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = load i32, i32* @OSSL_CIPHER_PARAM_KEYLEN, align 4
  %72 = call %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__* %70, i32 %71)
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %8, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = icmp ne %struct.TYPE_13__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__* %76, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @ERR_LIB_PROV, align 4
  %84 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %85 = call i32 @ERR_raise(i32 %83, i32 %84)
  store i32 0, i32* %3, align 4
  br label %87

86:                                               ; preds = %75, %69
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %82, %65, %47
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_13__* @OSSL_PARAM_locate(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_octet_string(%struct.TYPE_13__*, i32*, i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
