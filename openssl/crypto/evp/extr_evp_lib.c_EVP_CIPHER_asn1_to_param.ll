; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_asn1_to_param.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_asn1_to_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { {}*, i32* }

@EVP_CIPH_FLAG_CUSTOM_ASN1 = common dso_local global i32 0, align 4
@OSSL_CIPHER_PARAM_ALG_ID = common dso_local global i32 0, align 4
@EVP_F_EVP_CIPHER_ASN1_TO_PARAM = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4
@EVP_R_CIPHER_PARAMETER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CIPHER_asn1_to_param(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_9__*, i32*)**
  %17 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_9__*, i32*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_9__*, i32*)**
  %23 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 %23(%struct.TYPE_9__* %24, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %75

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = call i32 @EVP_CIPHER_flags(%struct.TYPE_10__* %28)
  %30 = load i32, i32* @EVP_CIPH_FLAG_CUSTOM_ASN1, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = call i32 @EVP_CIPHER_mode(%struct.TYPE_10__* %34)
  switch i32 %35, label %38 [
    i32 129, label %36
    i32 131, label %37
    i32 132, label %37
    i32 128, label %37
    i32 130, label %37
  ]

36:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %42

37:                                               ; preds = %33, %33, %33, %33
  store i32 -2, i32* %5, align 4
  br label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @EVP_CIPHER_get_asn1_iv(%struct.TYPE_9__* %39, i32* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %37, %36
  br label %74

43:                                               ; preds = %27
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32* %49, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 -1, i32* %10, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @i2d_ASN1_TYPE(i32* %50, i8** %9)
  store i32 %51, i32* %10, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* @OSSL_CIPHER_PARAM_ALG_ID, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @OSSL_PARAM_construct_octet_string(i32 %54, i8* %55, i64 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %61 = call i32 (...) @OSSL_PARAM_construct_end()
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %65 = call i64 @EVP_CIPHER_CTX_set_params(%struct.TYPE_9__* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @OPENSSL_free(i8* %69)
  br label %71

71:                                               ; preds = %68, %48
  br label %73

72:                                               ; preds = %43
  store i32 -2, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %42
  br label %75

75:                                               ; preds = %74, %19
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, -2
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @EVP_F_EVP_CIPHER_ASN1_TO_PARAM, align 4
  %80 = load i32, i32* @EVP_R_UNSUPPORTED_CIPHER, align 4
  %81 = call i32 @EVPerr(i32 %79, i32 %80)
  br label %90

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @EVP_F_EVP_CIPHER_ASN1_TO_PARAM, align 4
  %87 = load i32, i32* @EVP_R_CIPHER_PARAMETER_ERROR, align 4
  %88 = call i32 @EVPerr(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %78
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 -1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %90
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @EVP_CIPHER_flags(%struct.TYPE_10__*) #1

declare dso_local i32 @EVP_CIPHER_mode(%struct.TYPE_10__*) #1

declare dso_local i32 @EVP_CIPHER_get_asn1_iv(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @i2d_ASN1_TYPE(i32*, i8**) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @EVP_CIPHER_CTX_set_params(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
