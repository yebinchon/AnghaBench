; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_kdf.c_pkey_kdf_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_kdf.c_pkey_kdf_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32*, i32* }

@OSSL_PARAM_END = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"md\00", align 1
@OSSL_KDF_PARAM_DIGEST = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@OSSL_KDF_PARAM_SCRYPT_N = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_SEED = common dso_local global i8* null, align 8
@OSSL_KDF_PARAM_INFO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i8*)* @pkey_kdf_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_kdf_ctrl_str(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca [2 x %struct.TYPE_10__], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @EVP_KDF_CTX_kdf(i32* %21)
  store i32* %22, i32** %10, align 8
  store i32** null, i32*** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call %struct.TYPE_10__* @EVP_KDF_settable_ctx_params(i32* %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %12, align 8
  %25 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %26 = bitcast %struct.TYPE_10__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 8 bitcast (%struct.TYPE_10__* @OSSL_PARAM_END to i8*), i64 16, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 1
  %28 = bitcast %struct.TYPE_10__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 8 bitcast (%struct.TYPE_10__* @OSSL_PARAM_END to i8*), i64 16, i1 false)
  store i32 0, i32* %14, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i8*, i8** @OSSL_KDF_PARAM_DIGEST, align 8
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %32, %3
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i8*, i8** @OSSL_KDF_PARAM_SCRYPT_N, align 8
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @OSSL_PARAM_allocate_from_text(%struct.TYPE_10__* %41, %struct.TYPE_10__* %42, i8* %43, i8* %44, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %93

50:                                               ; preds = %40
  %51 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 16
  %54 = load i8*, i8** @OSSL_KDF_PARAM_SEED, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32** %59, i32*** %11, align 8
  br label %71

60:                                               ; preds = %50
  %61 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 16
  %64 = load i8*, i8** @OSSL_KDF_PARAM_INFO, align 8
  %65 = call i64 @strcmp(i8* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32** %69, i32*** %11, align 8
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32**, i32*** %11, align 8
  %73 = icmp ne i32** %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32**, i32*** %11, align 8
  %76 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @collect(i32** %75, i32 %78, i32 %81)
  store i32 %82, i32* %14, align 4
  br label %87

83:                                               ; preds = %71
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %86 = call i32 @EVP_KDF_CTX_set_params(i32* %84, %struct.TYPE_10__* %85)
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %83, %74
  %88 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @OPENSSL_free(i32 %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %87, %49
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32* @EVP_KDF_CTX_kdf(i32*) #1

declare dso_local %struct.TYPE_10__* @EVP_KDF_settable_ctx_params(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OSSL_PARAM_allocate_from_text(%struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @collect(i32**, i32, i32) #1

declare dso_local i32 @EVP_KDF_CTX_set_params(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @OPENSSL_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
