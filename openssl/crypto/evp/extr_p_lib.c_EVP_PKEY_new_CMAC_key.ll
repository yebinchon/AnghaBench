; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_new_CMAC_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_new_CMAC_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@OSSL_MAC_NAME_CMAC = common dso_local global i32 0, align 4
@EVP_PKEY_CMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@OSSL_MAC_PARAM_CIPHER = common dso_local global i8* null, align 8
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@EVP_F_EVP_PKEY_NEW_CMAC_KEY = common dso_local global i32 0, align 4
@EVP_R_KEY_SETUP_FAILED = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @EVP_PKEY_new_CMAC_key(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [4 x i32], align 16
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @ENGINE_get_id(i32* %22)
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i8* [ %23, %21 ], [ null, %24 ]
  store i8* %26, i8** %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i8* @EVP_CIPHER_name(i32* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @EVP_CIPHER_provider(i32* %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %37

34:                                               ; preds = %25
  %35 = load i32*, i32** %12, align 8
  %36 = call i32* @ossl_provider_library_context(i32* %35)
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32* [ null, %33 ], [ %36, %34 ]
  store i32* %38, i32** %13, align 8
  %39 = call %struct.TYPE_8__* (...) @EVP_PKEY_new()
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %14, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* @OSSL_MAC_NAME_CMAC, align 4
  %42 = call i32* @EVP_MAC_fetch(i32* %40, i32 %41, i32* null)
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %15, align 8
  %47 = call i32* @EVP_MAC_CTX_new(i32* %46)
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32* [ %47, %45 ], [ null, %48 ]
  store i32* %50, i32** %16, align 8
  store i64 0, i64* %18, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %16, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @EVP_PKEY_CMAC, align 4
  %60 = call i32 @pkey_set_type(%struct.TYPE_8__* %57, i32* %58, i32 %59, i32* null, i32 -1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %53, %49
  br label %103

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @OSSL_PARAM_construct_utf8_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %67, i32 0)
  %69 = load i64, i64* %18, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %18, align 8
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %69
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i8*, i8** @OSSL_MAC_PARAM_CIPHER, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @OSSL_PARAM_construct_utf8_string(i8* %73, i8* %74, i32 0)
  %76 = load i64, i64* %18, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %18, align 8
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %76
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @OSSL_PARAM_construct_octet_string(i32 %79, i8* %80, i64 %81)
  %83 = load i64, i64* %18, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %18, align 8
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %83
  store i32 %82, i32* %85, align 4
  %86 = call i32 (...) @OSSL_PARAM_construct_end()
  %87 = load i64, i64* %18, align 8
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %87
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %91 = call i32 @EVP_MAC_CTX_set_params(i32* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %72
  %94 = load i32, i32* @EVP_F_EVP_PKEY_NEW_CMAC_KEY, align 4
  %95 = load i32, i32* @EVP_R_KEY_SETUP_FAILED, align 4
  %96 = call i32 @EVPerr(i32 %94, i32 %95)
  br label %103

97:                                               ; preds = %72
  %98 = load i32*, i32** %16, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32* %98, i32** %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %5, align 8
  br label %110

103:                                              ; preds = %93, %62
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %105 = call i32 @EVP_PKEY_free(%struct.TYPE_8__* %104)
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @EVP_MAC_CTX_free(i32* %106)
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @EVP_MAC_free(i32* %108)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %110

110:                                              ; preds = %103, %97
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %111
}

declare dso_local i8* @ENGINE_get_id(i32*) #1

declare dso_local i8* @EVP_CIPHER_name(i32*) #1

declare dso_local i32* @EVP_CIPHER_provider(i32*) #1

declare dso_local i32* @ossl_provider_library_context(i32*) #1

declare dso_local %struct.TYPE_8__* @EVP_PKEY_new(...) #1

declare dso_local i32* @EVP_MAC_fetch(i32*, i32, i32*) #1

declare dso_local i32* @EVP_MAC_CTX_new(i32*) #1

declare dso_local i32 @pkey_set_type(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i8*, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @EVP_MAC_CTX_set_params(i32*, i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_8__*) #1

declare dso_local i32 @EVP_MAC_CTX_free(i32*) #1

declare dso_local i32 @EVP_MAC_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
