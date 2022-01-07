; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc2.c_rc2_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc2.c_rc2_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@OSSL_CIPHER_PARAM_RC2_KEYBITS = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_ALG_ID = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_11__*)* @rc2_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc2_get_ctx_params(i8* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = call i32 @cipher_generic_get_ctx_params(i8* %15, %struct.TYPE_11__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = load i32, i32* @OSSL_CIPHER_PARAM_RC2_KEYBITS, align 4
  %23 = call %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__* %21, i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %7, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OSSL_PARAM_set_size_t(%struct.TYPE_11__* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ERR_LIB_PROV, align 4
  %35 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %36 = call i32 @ERR_raise(i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %114

37:                                               ; preds = %26, %20
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = load i32, i32* @OSSL_CIPHER_PARAM_ALG_ID, align 4
  %40 = call %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__* %38, i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %7, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %113

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %49
  %52 = phi i8** [ null, %49 ], [ %11, %50 ]
  store i8** %52, i8*** %12, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @ERR_LIB_PROV, align 4
  %60 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %61 = call i32 @ERR_raise(i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %114

62:                                               ; preds = %51
  %63 = call i32* (...) @ASN1_TYPE_new()
  store i32* %63, i32** %10, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @ERR_LIB_PROV, align 4
  %67 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %68 = call i32 @ERR_raise(i32 %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %114

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @rc2_keybits_to_magic(i32 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ASN1_TYPE_set_int_octetstring(i32* %74, i64 %75, i32 %79, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %69
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @ASN1_TYPE_free(i32* %87)
  %89 = load i32, i32* @ERR_LIB_PROV, align 4
  %90 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %91 = call i32 @ERR_raise(i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %114

92:                                               ; preds = %69
  %93 = load i32*, i32** %10, align 8
  %94 = load i8**, i8*** %12, align 8
  %95 = call i32 @i2d_ASN1_TYPE(i32* %93, i8** %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @ASN1_TYPE_free(i32* %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @ERR_LIB_PROV, align 4
  %110 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %111 = call i32 @ERR_raise(i32 %109, i32 %110)
  store i32 0, i32* %3, align 4
  br label %114

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %37
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %108, %86, %65, %58, %33, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @cipher_generic_get_ctx_params(i8*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @OSSL_PARAM_locate(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32* @ASN1_TYPE_new(...) #1

declare dso_local i64 @rc2_keybits_to_magic(i32) #1

declare dso_local i32 @ASN1_TYPE_set_int_octetstring(i32*, i64, i32, i32) #1

declare dso_local i32 @ASN1_TYPE_free(i32*) #1

declare dso_local i32 @i2d_ASN1_TYPE(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
