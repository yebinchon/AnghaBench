; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_kdf.c_pkey_kdf_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_kdf.c_pkey_kdf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32* }

@OSSL_PARAM_END = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_PASSWORD = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_SALT = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_DIGEST = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_SECRET = common dso_local global i8* null, align 8
@NID_tls1_prf = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SEED = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_KEY = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_INFO = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_MODE = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_SCRYPT_N = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_SCRYPT_R = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_SCRYPT_P = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_SCRYPT_MAXMEM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"You shouldn't be here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i8*)* @pkey_kdf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_kdf_ctrl(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca [2 x i32], align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  store i32** null, i32*** %15, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %24 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %71 [
    i32 136, label %28
    i32 137, label %30
    i32 131, label %30
    i32 130, label %32
    i32 139, label %32
    i32 129, label %34
    i32 128, label %51
    i32 140, label %55
    i32 141, label %57
    i32 138, label %61
    i32 134, label %63
    i32 132, label %65
    i32 133, label %67
    i32 135, label %69
  ]

28:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %29 = load i8*, i8** @OSSL_KDF_PARAM_PASSWORD, align 8
  store i8* %29, i8** %13, align 8
  br label %72

30:                                               ; preds = %4, %4
  store i32 0, i32* %12, align 4
  %31 = load i8*, i8** @OSSL_KDF_PARAM_SALT, align 8
  store i8* %31, i8** %13, align 8
  br label %72

32:                                               ; preds = %4, %4
  store i32 2, i32* %12, align 4
  %33 = load i8*, i8** @OSSL_KDF_PARAM_DIGEST, align 8
  store i8* %33, i8** %13, align 8
  br label %72

34:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %35 = load i8*, i8** @OSSL_KDF_PARAM_SECRET, align 8
  store i8* %35, i8** %13, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NID_tls1_prf, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @BUF_MEM_free(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %34
  br label %72

51:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %52 = load i8*, i8** @OSSL_KDF_PARAM_SEED, align 8
  store i8* %52, i8** %13, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32** %54, i32*** %15, align 8
  br label %72

55:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %56 = load i8*, i8** @OSSL_KDF_PARAM_KEY, align 8
  store i8* %56, i8** %13, align 8
  br label %72

57:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %58 = load i8*, i8** @OSSL_KDF_PARAM_INFO, align 8
  store i8* %58, i8** %13, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32** %60, i32*** %15, align 8
  br label %72

61:                                               ; preds = %4
  store i32 3, i32* %12, align 4
  %62 = load i8*, i8** @OSSL_KDF_PARAM_MODE, align 8
  store i8* %62, i8** %13, align 8
  br label %72

63:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %64 = load i8*, i8** @OSSL_KDF_PARAM_SCRYPT_N, align 8
  store i8* %64, i8** %13, align 8
  br label %72

65:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %66 = load i8*, i8** @OSSL_KDF_PARAM_SCRYPT_R, align 8
  store i8* %66, i8** %13, align 8
  br label %72

67:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %68 = load i8*, i8** @OSSL_KDF_PARAM_SCRYPT_P, align 8
  store i8* %68, i8** %13, align 8
  br label %72

69:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %70 = load i8*, i8** @OSSL_KDF_PARAM_SCRYPT_MAXMEM, align 8
  store i8* %70, i8** %13, align 8
  br label %72

71:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %119

72:                                               ; preds = %69, %67, %65, %63, %61, %57, %55, %51, %50, %32, %30, %28
  %73 = load i32**, i32*** %15, align 8
  %74 = icmp ne i32** %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  switch i32 %76, label %82 [
    i32 0, label %77
  ]

77:                                               ; preds = %75
  %78 = load i32**, i32*** %15, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @collect(i32** %78, i8* %79, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %119

82:                                               ; preds = %75
  %83 = call i32 @OPENSSL_assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %119

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  switch i32 %86, label %115 [
    i32 0, label %87
    i32 2, label %94
    i32 3, label %105
    i32 1, label %109
  ]

87:                                               ; preds = %85
  %88 = load i8*, i8** %13, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 @OSSL_PARAM_construct_octet_string(i8* %88, i8* %89, i64 %91)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %92, i32* %93, align 4
  br label %115

94:                                               ; preds = %85
  %95 = load i8*, i8** %9, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = call i8* @EVP_MD_name(i32* %96)
  store i8* %97, i8** %14, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = add nsw i32 %101, 1
  %103 = call i32 @OSSL_PARAM_construct_utf8_string(i8* %98, i8* %99, i32 %102)
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %103, i32* %104, align 4
  br label %115

105:                                              ; preds = %85
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @OSSL_PARAM_construct_int(i8* %106, i32* %8)
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %107, i32* %108, align 4
  br label %115

109:                                              ; preds = %85
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = call i32 @OSSL_PARAM_construct_uint64(i8* %110, i32* %112)
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %85, %109, %105, %94, %87
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %118 = call i32 @EVP_KDF_CTX_set_params(i32* %116, i32* %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %84, %77, %71
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @BUF_MEM_free(i32*) #1

declare dso_local i32 @collect(i32**, i8*, i32) #1

declare dso_local i32 @OPENSSL_assert(i8*) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i8*, i8*, i64) #1

declare dso_local i8* @EVP_MD_name(i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OSSL_PARAM_construct_int(i8*, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_uint64(i8*, i32*) #1

declare dso_local i32 @EVP_KDF_CTX_set_params(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
