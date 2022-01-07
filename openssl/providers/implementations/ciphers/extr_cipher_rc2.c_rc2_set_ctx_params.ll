; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc2.c_rc2_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc2.c_rc2_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@OSSL_CIPHER_PARAM_RC2_KEYBITS = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_ALG_ID = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*)* @rc2_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc2_set_ctx_params(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @cipher_generic_set_ctx_params(i8* %15, %struct.TYPE_12__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = load i32, i32* @OSSL_CIPHER_PARAM_RC2_KEYBITS, align 4
  %23 = call %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__* %21, i32 %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__* %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ERR_LIB_PROV, align 4
  %34 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %35 = call i32 @ERR_raise(i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %115

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = load i32, i32* @OSSL_CIPHER_PARAM_ALG_ID, align 4
  %40 = call %struct.TYPE_12__* @OSSL_PARAM_locate(%struct.TYPE_12__* %38, i32 %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %114

43:                                               ; preds = %37
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  store i32 1, i32* %11, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %96, label %52

52:                                               ; preds = %43
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %57, 16
  br i1 %58, label %96, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @d2i_ASN1_TYPE(i32* null, i8** %10, i32 %62)
  store i32* %63, i32** %8, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %96, label %65

65:                                               ; preds = %59
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ASN1_TYPE_get_int_octetstring(i32* %66, i64* %9, i8* %67, i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %72, %77
  br i1 %78, label %96, label %79

79:                                               ; preds = %65
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @cipher_generic_initiv(%struct.TYPE_13__* %81, i8* %82, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @rc2_magic_to_keybits(i64 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = icmp eq i32 %92, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90, %79, %65, %59, %52, %43
  %97 = load i32, i32* @ERR_LIB_PROV, align 4
  %98 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %99 = call i32 @ERR_raise(i32 %97, i32 %98)
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @ASN1_TYPE_free(i32* %101)
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %115

106:                                              ; preds = %100
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %37
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %105, %32, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @cipher_generic_set_ctx_params(i8*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @OSSL_PARAM_locate_const(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local %struct.TYPE_12__* @OSSL_PARAM_locate(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @d2i_ASN1_TYPE(i32*, i8**, i32) #1

declare dso_local i64 @ASN1_TYPE_get_int_octetstring(i32*, i64*, i8*, i32) #1

declare dso_local i32 @cipher_generic_initiv(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @rc2_magic_to_keybits(i64) #1

declare dso_local i32 @ASN1_TYPE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
