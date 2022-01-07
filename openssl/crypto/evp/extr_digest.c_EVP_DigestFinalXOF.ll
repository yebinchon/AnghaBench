; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestFinalXOF.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestFinalXOF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 (i32, i8*, i64*, i64)*, i32, i32 (%struct.TYPE_11__*, i8*)*, i32, i32 (%struct.TYPE_11__*)*, i64 (%struct.TYPE_11__*, i32, i32, i32*)*, i32* }

@EVP_F_EVP_DIGESTFINALXOF = common dso_local global i32 0, align 4
@EVP_R_FINAL_ERROR = common dso_local global i32 0, align 4
@OSSL_DIGEST_PARAM_XOFLEN = common dso_local global i32 0, align 4
@EVP_MD_FLAG_XOF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EVP_MD_CTRL_XOF_LEN = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_CLEANED = common dso_local global i32 0, align 4
@EVP_R_NOT_XOF_OR_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DigestFinalXOF(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %3
  br label %64

23:                                               ; preds = %15
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32 (i32, i8*, i64*, i64)*, i32 (i32, i8*, i64*, i64)** %27, align 8
  %29 = icmp eq i32 (i32, i8*, i64*, i64)* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @EVP_F_EVP_DIGESTFINALXOF, align 4
  %32 = load i32, i32* @EVP_R_FINAL_ERROR, align 4
  %33 = call i32 @EVPerr(i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %131

34:                                               ; preds = %23
  %35 = load i32, i32* @OSSL_DIGEST_PARAM_XOFLEN, align 4
  %36 = call i32 @OSSL_PARAM_construct_size_t(i32 %35, i64* %7)
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %37
  store i32 %36, i32* %39, align 4
  %40 = call i32 (...) @OSSL_PARAM_construct_end()
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %41
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %46 = call i64 @EVP_MD_CTX_set_params(%struct.TYPE_11__* %44, i32* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32 (i32, i8*, i64*, i64)*, i32 (i32, i8*, i64*, i64)** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 %53(i32 %56, i8* %57, i64* %7, i64 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %48, %34
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = call i32 @EVP_MD_CTX_reset(%struct.TYPE_11__* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %131

64:                                               ; preds = %22
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EVP_MD_FLAG_XOF, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %125

73:                                               ; preds = %64
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @INT_MAX, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %73
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  %82 = load i64 (%struct.TYPE_11__*, i32, i32, i32*)*, i64 (%struct.TYPE_11__*, i32, i32, i32*)** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = load i32, i32* @EVP_MD_CTRL_XOF_LEN, align 4
  %85 = load i64, i64* %7, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i64 %82(%struct.TYPE_11__* %83, i32 %84, i32 %86, i32* null)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %77
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32 (%struct.TYPE_11__*, i8*)*, i32 (%struct.TYPE_11__*, i8*)** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 %94(%struct.TYPE_11__* %95, i8* %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %101, align 8
  %103 = icmp ne i32 (%struct.TYPE_11__*)* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %89
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 4
  %109 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = call i32 %109(%struct.TYPE_11__* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = load i32, i32* @EVP_MD_CTX_FLAG_CLEANED, align 4
  %114 = call i32 @EVP_MD_CTX_set_flags(%struct.TYPE_11__* %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %89
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @OPENSSL_cleanse(i32 %118, i32 %123)
  br label %129

125:                                              ; preds = %77, %73, %64
  %126 = load i32, i32* @EVP_F_EVP_DIGESTFINALXOF, align 4
  %127 = load i32, i32* @EVP_R_NOT_XOF_OR_INVALID_LENGTH, align 4
  %128 = call i32 @EVPerr(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %115
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %60, %30
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_size_t(i32, i64*) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @EVP_MD_CTX_set_params(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_reset(%struct.TYPE_11__*) #1

declare dso_local i32 @EVP_MD_CTX_set_flags(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
