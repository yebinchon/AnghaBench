; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_kdf.c_pkey_kdf_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_kdf.c_pkey_kdf_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@OSSL_PARAM_END = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SEED = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_INFO = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64*)* @pkey_kdf_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_kdf_derive(%struct.TYPE_10__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @EVP_KDF_size(i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %3
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %28 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %30, i32* %29, align 4
  %31 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OSSL_PARAM_construct_octet_string(i32 %31, i32 %36, i32 %41)
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %46 = call i32 @EVP_KDF_CTX_set_params(i32* %44, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = call i32 @pkey_kdf_free_collected(%struct.TYPE_9__* %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %110

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %60 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds i32, i32* %59, i64 1
  %62 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %62, i32* %61, align 4
  %63 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @OSSL_PARAM_construct_octet_string(i32 %63, i32 %68, i32 %73)
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %78 = call i32 @EVP_KDF_CTX_set_params(i32* %76, i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = call i32 @pkey_kdf_free_collected(%struct.TYPE_9__* %79)
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %110

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i64, i64* %10, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @SIZE_MAX, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %85
  %93 = load i8*, i8** %6, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %110

96:                                               ; preds = %92
  br label %104

97:                                               ; preds = %88
  %98 = load i64, i64* %10, align 8
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %4, align 4
  br label %110

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %96
  %105 = load i32*, i32** %9, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @EVP_KDF_derive(i32* %105, i8* %106, i64 %108)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %102, %95, %83, %51
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @EVP_KDF_size(i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i32, i32) #1

declare dso_local i32 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i32 @pkey_kdf_free_collected(%struct.TYPE_9__*) #1

declare dso_local i32 @EVP_KDF_derive(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
